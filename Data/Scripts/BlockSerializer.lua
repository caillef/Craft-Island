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

function GetTypeFromMuid(muid, rawObjectsList)
    for key,obj in pairs(rawObjectsList) do
        if obj then
            local objid = obj:GetCustomProperty("Built")
            local objmuid = mysplit(objid, ":")[1]
            if objmuid == muid then
                return key
            end
        end
    end
    return nil
end

function Block_SerializeStructures(structures, slotPos, rawObjectsList)
    local pBlocks = {}
    for _,structure in pairs(structures) do
        local pos = structure:GetWorldPosition() - slotPos
        local angle = math.ceil(structure:GetRotation().z)
        local type = tostring(GetTypeFromMuid(structure.sourceTemplateId, rawObjectsList))
        local serialized = Block_Serialize(pos, angle, type, slotPos)
        pBlocks[type] = pBlocks[type] or {}
        pBlocks[type][angle] = pBlocks[type][angle] or {}
        table.insert(pBlocks[type][angle], Block_SerializePosition(pos - slotPos))
    end
    local stringBlocks = ""
    for t,angles in pairs(pBlocks) do
        stringBlocks = stringBlocks..(#stringBlocks > 0 and "_" or "")..t.."|" 
        local firstAngle = true
        for a,positions in pairs(angles) do
            stringBlocks = stringBlocks..(firstAngle and "" or "|")..a.."="
            local first = true
            for _,pos in pairs(positions) do
                stringBlocks = stringBlocks..(first and "" or ";")..pos
                first = false
            end
            firstAngle = false
        end
    end
    return stringBlocks
end


function Block_DeserializeStructures(structures, slotPos)
    local pBlocks = {}
    local types = mysplit(structures, "_")
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
    return pBlocks
end