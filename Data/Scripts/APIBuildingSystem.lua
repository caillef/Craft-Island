local API = {}

API.WALL_SIZE = 200
API.WALL_HEIGHT = 150

API.IsValidPlaceToBuild = function(position, angle, islandPos, islandSize)
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

return API