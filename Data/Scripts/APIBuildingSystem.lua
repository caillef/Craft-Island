local API = {}

API.WALL_SIZE = 200
API.WALL_HEIGHT = 150

API.IsValidPlaceToBuild = function(position, angle, islandPos, islandSize)
    local checkLimit = Vector3.New(position.x, position.y, position.z)
    if angle == 0 or angle == 270 then
        checkLimit.y = checkLimit.y - 200
    end
    if angle == 180 or angle == 270 then
        checkLimit.x = checkLimit.x - 200
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
    if a == 0 and a == 180 and a == 90 and a == 270 then return a end
    while a < 0 do a = a + 360 end
    while a >= 360 do a = a - 360 end
    if a > 80 and a < 100 then return 90 end
    if a > 170 and a < 190 then return 180 end
    if a > 260 and a < 280 then return 270 end
    return 0
end

API.SerializeObjectToPlace = function(pos, angle, type, id)
    return string.format("%d|%d|%d|%d|%d|%d",
        math.floor(pos.x), math.floor(pos.y), math.floor(pos.z), angle, type, id)
end

API.DeserializeObjectToPlace = function(rawData)
    local x,y,z,angle,type,id = CoreString.Split(rawData, { delimiters = { "|" } })
    return { x=x, y=y, z=z, angle=tonumber(angle), type=tonumber(type), id=tonumber(id) }
end

return API