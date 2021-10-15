local APIB = require(script:GetCustomProperty("APIBuildingSystem"))
local APIO = require(script:GetCustomProperty("APIObjects"))
local APIBSerializer = require(script:GetCustomProperty("APIBlockSerializer"))
local CONSTANTS = require(script:GetCustomProperty("Constants"))

local placedObjects = {}

function CountNbStructures(placedObjects)
    local sum = 0
    for _,type in pairs(placedObjects) do
        for _,z in pairs(type) do
            for _,y in pairs(z) do
                for _,x in pairs(y) do
                    for _,angle in pairs(x) do
                        sum = sum + 1
                    end
                end
            end    
        end
    end
    return sum
end

local objIds = {}

Events.Connect("PlaceObject", function(player, position, angle, type, isLoadingIsland)
	if not player or not player:IsValid() then return end
    angle = APIB.GetAlignedAngle(angle)
    placedObjects[player] = placedObjects[player] or {}

    if not isLoadingIsland and CountNbStructures(placedObjects[player]) >= 2000 then
        while player and player:IsValid() and Events.BroadcastToPlayer(player, "BSLimit") ~= BroadcastEventResultCode.SUCCESS do
            Task.Wait(1)
        end
        return
    end

    local placedTypedObjects = placedObjects[player][type] or {}
    --local islandLimit = CONSTANTS.ISLAND_SIZES[player.serverUserData.islandType]
    --if not APIB.IsValidPlaceToBuild(position, angle, playersSpawns[player].island:FindChildByName("Structures"):GetWorldPosition(), islandLimit) then
    --    return
    --end

    if placedTypedObjects[position.z] ~= nil and
       placedTypedObjects[position.z][position.y] ~= nil and
       placedTypedObjects[position.z][position.y][position.x] ~= nil and
       placedTypedObjects[position.z][position.y][position.x][angle] ~= nil then
        return false
    end

 --[[   local mandatorySurface = APIO.OBJECTS[type].buildConditions and APIO.OBJECTS[type].buildConditions.mustBeBuiltOn or nil
    if not playersSpawns[player].isLoading and mandatorySurface then
        local surfaceObjects = placedObjects[player][mandatorySurface] or {}
        local block = GetStructureOnCellFromList(surfaceObjects, position, player)
        if not block or block.player ~= player then
            Events.BroadcastToPlayer(player, "NeedSoil")
            return
        end
        RemoveStructure(block.obj, player)
    end]]--

    local obj = World.SpawnAsset(APIO.OBJECTS[type].templateMuid, { position = position, rotation = Rotation.New(0, 0, angle), parent = script.parent })
    --AssignPlayerToObject(obj, player)
    placedTypedObjects[position.z] = placedTypedObjects[position.z] or {}
    placedTypedObjects[position.z][position.y] = placedTypedObjects[position.z][position.y] or {}
    placedTypedObjects[position.z][position.y][position.x] = placedTypedObjects[position.z][position.y][position.x] or {}
    placedTypedObjects[position.z][position.y][position.x][angle] = { obj=obj, player=player }
    placedObjects[player][type] = placedTypedObjects
    objIds[obj.id] = obj
end)

Events.Connect("RemoveObject", function(id)
	if objIds[id] and objIds[id]:IsValid() then
		objIds[id]:Destroy()
	end
end)