local API = {}

API.WALL_SIZE = 200
API.WALL_HEIGHT = 150

local TRANSFORM_TABLE = {
    Vector3.New(0, 0, 0),
    Vector3.New(0, -API.WALL_SIZE, 0),
    Vector3.New(API.WALL_SIZE, -API.WALL_SIZE, 0),
    Vector3.New(API.WALL_SIZE, 0, 0)
}

API.IsPositionOnIsland = function(position, angle, islandPos, islandSize)
    local checkLimit = Vector3.New(position.x, position.y, position.z)
    if angle == 0 or angle == 270 then
        checkLimit.y = checkLimit.y - API.WALL_SIZE
    end
    if angle == 180 or angle == 270 then
        checkLimit.x = checkLimit.x - API.WALL_SIZE
    end
    return not (checkLimit.x < islandPos.x + islandSize[1].x or
                checkLimit.x > islandPos.x +islandSize[2].x or
                checkLimit.y < islandPos.y +islandSize[1].y or
                checkLimit.y > islandPos.y +islandSize[2].y or
                checkLimit.z < islandPos.z +islandSize[1].z or
                checkLimit.z > islandPos.z +islandSize[2].z)
end

API.GetAlignedAngle = function(a)
    a = math.floor(a)
    while a < 0 do a = a + 360 end
    if a >= 360 then a = a % 360 end
    if a % 90 == 0 then return a end
    if a > 80 and a < 100 then return 90 end
    if a > 170 and a < 190 then return 180 end
    if a > 260 and a < 280 then return 270 end
    return 0
end

-- function rotateObjectWithClick(pos, o, rotateAngle)
--     if o == 0 then
--         if rotateAngle == 1 then
--             pos.y = pos.y - API.WALL_SIZE
--         end
--         if rotateAngle == 2 then
--             pos.x = pos.x + API.WALL_SIZE
--             pos.y = pos.y - API.WALL_SIZE
--         end
--         if rotateAngle == 3 then
--             pos.x = pos.x + API.WALL_SIZE
--         end
--     end

--     if o == 1 then
--         if rotateAngle == 1 then
--             pos.x = pos.x + API.WALL_SIZE
--         end
--         if rotateAngle == 2 then
--             pos.x = pos.x + API.WALL_SIZE
--             pos.y = pos.y + API.WALL_SIZE
--         end
--         if rotateAngle == 3 then
--             pos.y = pos.y + API.WALL_SIZE
--         end
--     end

--     if o == 2 then
--         if rotateAngle == 1 then
--             pos.y = pos.y + API.WALL_SIZE
--         end
--         if rotateAngle == 2 then
--             pos.x = pos.x - API.WALL_SIZE
--             pos.y = pos.y + API.WALL_SIZE
--         end
--         if rotateAngle == 3 then
--             pos.x = pos.x - API.WALL_SIZE
--         end
--     end

--     if o == 3 then
--         if rotateAngle == 1 then
--             pos.x = pos.x - API.WALL_SIZE
--         end
--         if rotateAngle == 2 then
--             pos.x = pos.x - API.WALL_SIZE
--             pos.y = pos.y - API.WALL_SIZE
--         end
--         if rotateAngle == 3 then
--             pos.y = pos.y - API.WALL_SIZE
--         end
--     end
--     return pos
-- end

function API.OrientedToZeroPos(pos, angle)
    angle = API.GetAlignedAngle(angle)
	if angle == 90 then
		return pos - TRANSFORM_TABLE[2]
	end
	if angle == 180 then
		return pos - TRANSFORM_TABLE[3]
	end
	if angle == 270 then
		return pos - TRANSFORM_TABLE[4]
	end
	return pos
end

function API.WallOrientedPos(pos, angle)
    angle = API.GetAlignedAngle(angle)
	if angle == 90 then
		return pos - TRANSFORM_TABLE[2]
	end
	if angle == 180 then
		return pos - TRANSFORM_TABLE[3]
	end
	return pos
end

function API.GetCellId(pos, angle)
    local zeroPos = API.OrientedToZeroPos(pos, angle)
    return zeroPos.x + zeroPos.y * 100000 + zeroPos.z * 100000000000
end

function API.GetWallId(pos, angle)
    local zeroPos = API.WallOrientedPos(pos, angle)
    return zeroPos.x + zeroPos.y * 100000 + zeroPos.z * 100000000000
end

local function IsOverlappingWithObject(pos, angle, structureType, other)
	local userData = Environment.IsServer() and "serverUserData" or "clientUserData"
    while other:IsValid() and other[userData].structureType == nil do Task.Wait() end
	if not other:IsValid() then return end

    local cellId = API.GetCellId(pos, angle)
    if structureType == "wall" then
        -- TODO: handle walls
        return false
        -- if other.serverUserData.structureType ~= "wall" then return false end
        -- local wallId = API.GetWallId(pos, angle)
        -- -- return true
        -- return other.serverUserData.wallId == wallId
    end
    if other[userData].cellId == cellId then
        return true
    end
	return false
end

function API.IsSpotEmpty(pos, angle, structureType)
	--[[
    local hitResults = World.SpherecastAll(pos, pos + Vector3.UP, 500)
    for _,hitResult in ipairs(hitResults) do
        if hitResult then
            local other = hitResult.other
            while other.parent and other.parent.name ~= "Structures" do
                other = other.parent
            end
            if other.parent and other.parent.name == "Structures" then
                if IsOverlappingWithObject(pos, angle, structureType, other) then
                    return false
                end
            end
        end
    end
    ]]--
    return true
end

return API