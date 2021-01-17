local _objectsList
function GetObjectsList()
    _objectsList = _G["caillef.craftisland.objects"]
    while _objectsList == nil do
        Task.Wait(0.1)
        _objectsList = _G["caillef.craftisland.objects"]
    end
    return _objectsList    
end

local WALL_SIZE = 200
local WALL_HEIGHT = 150

local function mysplit(inputstr, sep)
    if sep == nil then
            sep = "%s"
    end
    local t={}
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
            table.insert(t, str)
    end
    return t
end

function Block_SerializePosition(pos)
    return math.floor(pos.x / WALL_SIZE)..","..math.floor(pos.y / WALL_SIZE)..","..math.floor(pos.z / WALL_HEIGHT) 
end

local function Block_DeserializePosition(value)
    local data = mysplit(value, ",")
    return Vector3.New(tonumber(data[1]) * WALL_SIZE, tonumber(data[2]) * WALL_SIZE, tonumber(data[3]) * WALL_HEIGHT)
end

local function Block_SerializeAngle(angle)
    return math.floor((angle + 360) / 90) % 4
end

local function Block_DeserializeAngle(v)
    return v * 90
end

function Block_Serialize(p, a, t, islandPos)
    return Block_SerializePosition(p - islandPos)..":"..Block_SerializeAngle(a)..":"..t
end

function Block_Deserialize(v, islandPos)
    local data = mysplit(v, ":")
    return {
        pos = Block_DeserializePosition(data[1]) + islandPos,
        angle = Block_DeserializeAngle(tonumber(data[2])),
        type = tonumber(data[3])
    }
end

function GetTypeFromMuid(muid)
    for key,obj in pairs(GetObjectsList()) do
        if obj.templateMuid == muid then
            return key
        end
    end
    return nil
end

function getAlignedAngle(a)
    a = math.floor(a)
    if a == 0 and a == 180 and a == 90 and a == 270 then return angle end
    while a < 0 do a = a + 360 end
    while a > 360 do a = a - 360 end
    if a > 80 and a < 100 then return 90 end
    if a > 170 and a < 190 then return 180 end
    if a > 260 and a < 280 then return 270 end
    return 0
end

function Block_SerializeStructures(structures, slotPos)
    local pBlocks = {}
    for _,structure in pairs(structures) do
        local pos = structure:GetWorldPosition() - slotPos
        local angle = getAlignedAngle(structure:GetRotation().z)
        local type = GetTypeFromMuid(structure.sourceTemplateId)
        pBlocks[type] = pBlocks[type] or {}
        pBlocks[type][angle] = pBlocks[type][angle] or {}
        table.insert(pBlocks[type][angle], Block_SerializePosition(pos))
    end
    local stringBlocks = "v2*"
    local firstType = true
    for t,angles in pairs(pBlocks) do
        stringBlocks = stringBlocks..(firstType and "" or "_")..tostring(t).."|" 
        firstType = false
        local firstAngle = true
        for a,positions in pairs(angles) do
            stringBlocks = stringBlocks..(firstAngle and "" or "|")..tostring(a).."="
            firstAngle = false
            local first = true
            for _,pos in pairs(positions) do
                stringBlocks = stringBlocks..(first and "" or ";")..pos
                if Storage.SizeOfData({pBlocks=stringBlocks}) > 12000 then
                    return stringBlocks
                end
                first = false
            end
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
    return pBlocks
end

_G["caillef.craftisland.buildSerializer"] = {
    Serialize = Block_Serialize,
    Deserialize = Block_Deserialize,
    SerializeList = Block_SerializeStructures,
    DeserializeList = Block_DeserializeStructures
}