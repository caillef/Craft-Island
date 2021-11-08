local APIO = require(script:GetCustomProperty("APIObjects"))

local WALL_SIZE = 200
local WALL_HEIGHT = 150

local function mysplit(inputstr, sep)
    return { CoreString.Split(inputstr, { delimiters = {sep} }) }
end

local function Block_DeserializePosition(value)
    local data = mysplit(value, ",")
    return Vector3.New(tonumber(data[1]) * WALL_SIZE, tonumber(data[2]) * WALL_SIZE, tonumber(data[3]) * WALL_HEIGHT)
end

function utf8_from(t)
    local bytearr = {}
    for _, v in ipairs(t) do
        local utf8byte = v < 0 and (0xff + v + 1) or v
        table.insert(bytearr, string.char(utf8byte))
    end
    return table.concat(bytearr)
end

function Block_Serialize_v3(p, a, t)
    if t <= 0 or t >= 512 then
        print("Error: tried to serialize an invalid type (not between 0 and 511 included)")
        return ""
    end
    local x = math.floor(p.x / WALL_SIZE) + 128
    local y = math.floor(p.y / WALL_SIZE) + 128
    local z = math.floor(p.z / WALL_HEIGHT) + 128
    if x >= 255 or y >= 255 or z >= 255 or x < 0 or y < 0 or z < 0 then
    	return ""
    end
    local A = ((t >> 3) << 1) + 1
    local angle = getAlignedAngle(a)
    local B = ((t % 8) << 4) + (angle << 2) + ((x >> 8) << 1) + 1
    local C = (((x % 256) >> 2) << 1) + 1
    local D = ((x % 4) << 5) + ((y >> 5) << 1) + 1
    local E = ((y % 32) << 2) + ((z >> 8) << 1) + 1
    local F = (((z % 256) >> 2) << 1) + 1
    local G = ((z % 4) << 5) + 1
    return utf8_from({A, B, C, D, E, F, G})
end

function Block_Deserialize_v3(str, islandPos)
    if #str == 0 then return nil end
    chars = {}
    for i=1,#str do
        table.insert(chars, str:sub(i,i):byte())
    end
    local type = ((chars[1] >> 1) << 3) + (chars[2] >> 4)
    local angle = (chars[2] >> 2) % 4
    local x = (((chars[2] >> 1) % 2) << 9) + ((chars[3] >> 1) << 2) + (chars[4] >> 5) - 128
    local y = (((chars[4] >> 1) % 16) << 5) + (chars[5] >> 2) - 128
    local z = (((chars[5] >> 1) % 2) << 9) + ((chars[6] >> 1) << 2) + (chars[7] >> 5) - 128
    return {
        pos = Vector3.New(x * WALL_SIZE, y * WALL_SIZE, z * WALL_HEIGHT) + islandPos,
        angle = angle * 90,
        type = type
    }
end

function getAlignedAngle(a)
    a = math.floor(a)
    while a < 0 do a = a + 360 end
    while a > 360 do a = a - 360 end
    if a > 80 and a < 100 then return 1 end
    if a > 170 and a < 190 then return 2 end
    if a > 260 and a < 280 then return 3 end
    return 0
end

function Block_SerializeStructures(structures, slotPos)
    local stringBlocks = "v3*"
    for k,structure in pairs(structures) do
        local serializedStructure = structure.serverUserData.serialized
        if not serializedStructure then
            local pos = structure:GetWorldPosition() - slotPos
            local angle = structure:GetRotation().z
            local type = APIO.GetTypeFromTemplate(structure.sourceTemplateId)
            serializedStructure = Block_Serialize_v3(pos, angle, type)
            structure.serverUserData.serialized = serializedStructure
        end
        stringBlocks = stringBlocks..serializedStructure
        if k >= 4000 then
            break
        end
    end
    return stringBlocks
end

function Block_DeserializeStructures(structures, slotPos)
    local pBlocks = {}
    local version = mysplit(structures, "*")[1]
    if version == "v2" and mysplit(structures, "*")[2] then
        local types = mysplit(mysplit(structures, "*")[2], "_")
        for _,blocks in pairs(types) do
            local angles = mysplit(blocks, "|")
            local type = tonumber(angles[1])
            table.remove(angles, 1)
            for _,angle in pairs(angles) do
                local values = mysplit(angle, "=")
                local angle = tonumber(values[1])
                local positions = mysplit(values[2], ";")
                for _,pos in pairs(positions) do
                    table.insert(pBlocks, {
                        type = type,
                        angle = angle,
                        pos = Block_DeserializePosition(pos) + slotPos
                    })
                end
            end
        end
    end
    if version == "v3" and mysplit(structures, "*")[2] then
        local data = structures
        for i=4,#data,7 do
            local serializedBlock = data:sub(i, i + 7)
            local structure = Block_Deserialize_v3(serializedBlock, slotPos)
            if structure then
                table.insert(pBlocks, structure)
            end
        end
    end
    return pBlocks
end

local APIBS = {
    Serialize = Block_Serialize_v3,
    Deserialize = Block_Deserialize_v3,
    SerializeList = Block_SerializeStructures,
    DeserializeList = Block_DeserializeStructures
}

return APIBS