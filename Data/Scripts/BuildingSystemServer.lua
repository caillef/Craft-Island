local INVENTORY = script:GetCustomProperty("InventoryScriptServer"):WaitForObject().context
local propSharedKeyIslands = script:GetCustomProperty("SharedKeyIslands")
local CONSTANTS = require(script:GetCustomProperty("Constants"))
local APIB = require(script:GetCustomProperty("APIBuildingSystem"))
local APIO = require(script:GetCustomProperty("APIObjects"))
local APIBSerializer = require(script:GetCustomProperty("APIBlockSerializer"))
local STATIC_CONTEXTS = script:GetCustomProperty("StaticContexts"):WaitForObject()

local placedObjects = {}
local objs = {}

local objectsToSend = {}
local objectsToRemove = {}

local INCREMENT_OBJECT_ID = 0
function GetNextId()
	INCREMENT_OBJECT_ID = INCREMENT_OBJECT_ID + 1
	return INCREMENT_OBJECT_ID
end

function CountNbStructures(player)
    return #World.FindObjectById(player.serverUserData.slot.staticFolderId):GetChildren()
end

function SaveIsland(player)
    if not player or not player:IsValid() then print("Warning: tried to save island of not valid player") return end
    local storage = Storage.GetSharedPlayerData(propSharedKeyIslands, player)
    local slot = player.serverUserData.slot
    local list = World.FindObjectById(slot.staticFolderId):GetChildren()
    storage.pBlocks = APIBSerializer.SerializeList(list, slot.pos)
    if Storage.SizeOfData(storage) <= 32000 then
        Storage.SetSharedPlayerData(propSharedKeyIslands, player, storage)
    end
end

function BuildingSystem_OnPlaceStructure(player, serializedBlock)
    local data = APIBSerializer.Deserialize(serializedBlock, player.serverUserData.slot.pos)
    if not data then return end
    if not INVENTORY.PlayerHasItems(player, { id=data.type }) then return end

    if player and player:IsValid() and CountNbStructures(player) >= 4000 then
        while player and player:IsValid() and Events.BroadcastToPlayer(player, "BSLimit") ~= BroadcastEventResultCode.SUCCESS do
            Task.Wait(1)
        end
        return
    end

    if not PlaceObject(data.pos, data.angle, data.type, player.serverUserData.slot.staticFolderId) then return end
    INVENTORY.PlayerRemoveItems(player, { id=data.type } )
    SaveIsland(player)
end

function GetPlayerFromId(playerId)
	for _,p in ipairs(Game.GetPlayers()) do
		if p.id == playerId then
			return p
		end
	end
end

function PlaceObject(pos, angle, type, parentId)
    angle = APIB.GetAlignedAngle(angle)
    local parent = World.FindObjectById(parentId)
    if type == 30 then
		pos = OrientedToZeroPos(pos, angle)
		angle = 0
	end
    --local islandLimit = CONSTANTS.ISLAND_SIZES[player.serverUserData.islandType]
    --if not APIB.IsValidPlaceToBuild(position, angle, playersSpawns[player].island:FindChildByName("Structures"):GetWorldPosition(), islandLimit) then
    --    return
    --end

    --[[local placedTypedObjects = placedObjects[type] or {}
    if placedTypedObjects[position.z] ~= nil and
       placedTypedObjects[position.z][position.y] ~= nil and
       placedTypedObjects[position.z][position.y][position.x] ~= nil and
       placedTypedObjects[position.z][position.y][position.x][angle] ~= nil then
        return false
    end]]--

	local mandatorySurface = APIO.OBJECTS[type].buildConditions and APIO.OBJECTS[type].buildConditions.mustBeBuiltOn or nil
    if not parent.serverUserData.isLoading and mandatorySurface then
        local list = parent:GetChildren()
        local block = GetStructureAtPos(list, pos, angle)
        if not block then
            Events.BroadcastToPlayer(player, "NeedSoil")
            return
        end
        RemoveStructure(block, player)
    end

	local id = GetNextId()
    local rawData = APIB.SerializeObjectToPlace(pos, angle, type, id)
    objs[id] = rawData
    objectsToSend[parentId] = (objectsToSend[parentId] or "").." "..rawData
    return true
end
Events.Connect("PlaceStructure", PlaceObject)

local TRANSFORM_TABLE = {
    Vector3.New(0, 0, 0),
    Vector3.New(0, -APIB.WALL_SIZE, 0),
    Vector3.New(APIB.WALL_SIZE, -APIB.WALL_SIZE, 0),
    Vector3.New(APIB.WALL_SIZE, 0, 0)
}

-- Used to align object without orientation
function OrientedToZeroPos(pos, angle)
    angle = APIB.GetAlignedAngle(angle)
	if angle == 90 then
		pos = pos - TRANSFORM_TABLE[2]
	end
	if angle == 180 then
		pos = pos - TRANSFORM_TABLE[3]
	end
	if angle == 270 then
		pos = pos - TRANSFORM_TABLE[4]
	end
	return pos
end

function GetStructureAtPos(list, pos, angle)
    pos = OrientedToZeroPos(pos, angle)
    local x,y,z = math.floor(pos.x), math.floor(pos.y), math.floor(pos.z)
    for _,obj in ipairs(list) do
    	local tx,ty,tz=obj:GetWorldPosition().x,obj:GetWorldPosition().y,obj:GetWorldPosition().z
		if math.ceil(tx) == x and math.ceil(ty) == y and math.ceil(tz) == z then
			return obj
		end
    end
    return nil
end

function Grow(objReplaced, newIdName)
	if not objReplaced or not objReplaced:IsValid() then return end
	local pos = objReplaced:GetWorldPosition()
    local angle = objReplaced:GetWorldRotation().z
    local parentId = objReplaced.parent.id
    local type = APIO.OBJECTS_ID[newIdName]
    RemoveStructure(objReplaced, player)
    PlaceObject(pos, angle, type, parentId)
    return
end
Events.Connect("SGrow", Grow)

Events.Connect("SetObjMetadata", function(obj, id)
	obj.serverUserData.id = id
end)

function LoadPreviousBlocks(player)
    player.serverUserData.slot.isLoading = true
    local storage = Storage.GetSharedPlayerData(propSharedKeyIslands, player) or {}
    storage.pBlocks = storage.pBlocks or "v2*25|0=-5,-3,0|270=-7,6,0|90=0,2,0_12|0=-2,-1,0;-2,0,0;-2,-2,0"
    local blocks = APIBSerializer.DeserializeList(storage.pBlocks, player.serverUserData.slot.pos)
    for _,data in pairs(blocks) do
        PlaceObject(data.pos, data.angle, data.type, player.serverUserData.slot.staticFolderId)
    end
    player.serverUserData.slot.isLoading = false
end

Task.Spawn(function()
    while true do
        for key,data in pairs(objectsToSend) do
            if data and #data > 0 then	
	            local group = World.FindObjectById(key)
	            if group.name == "Structures" then group = group.parent end
	            group:SetCustomProperty("SerializedObjects", objectsToSend[key])
		        objectsToSend[key] = ""
            end
        end
        for key,data in pairs(objectsToRemove) do
            if data and #data > 0 then
                local group = World.FindObjectById(key)
	            if group.name == "Structures" then group = group.parent end
	            group:SetCustomProperty("ToRemoveObjectIds", objectsToRemove[key])
		        objectsToRemove[key] = ""
            end
        end
        Task.Wait(0.25)
    end
end)

function RemoveStructure(obj, player)
    if not obj or not obj:IsValid() then return end
    if obj.parent.id ~= "64137475AEC64DC6:Rocks" and player and obj.parent.id ~= player.serverUserData.slot.staticFolderId then return end
    objs[obj.serverUserData.id] = nil
    objectsToRemove[obj.parent.id] = (objectsToRemove[obj.parent.id] or "").." "..obj.serverUserData.id
    return true
end
Events.Connect("RemoveStructure", RemoveStructure)

function LoadIsland(slot)
    local player = slot.player
    if not player or not player:IsValid() then return end
    player.serverUserData.slot = slot
    LoadPreviousBlocks(player)
    slot.isLoading = false
    -- load other islands
end
Events.Connect("BSLI", LoadIsland)

function UnloadIsland(slot)
    local player = slot.player
    SaveIsland(player)
    slot.island:Destroy()
    slot.island = nil
    slot.player = nil
    placedObjects[player] = nil
    player.serverUserData.slot = nil
end
Events.Connect("BSULI", UnloadIsland)

function OnInventoryReady(player)
    while player.serverUserData.slot == nil do
        Task.Wait(0.1)
    end
    Task.Wait(1)
    while player and player:IsValid() and Events.BroadcastToPlayer(player, "OnPlayerInitialized", {islandPos = player.serverUserData.slot.pos, iType= player.serverUserData.islandType }) ~= BroadcastEventResultCode.SUCCESS do
        Task.Wait(1)
    end
    Events.BroadcastToPlayer(player, "UpdateNextIslandType", player.serverUserData.islandType + 1)
end

Events.Connect("SInventoryReady", OnInventoryReady)
Events.ConnectForPlayer("BSPS", BuildingSystem_OnPlaceStructure)

Events.Connect("SaveIsland", SaveIsland)

print("Building Mode Activated for the server (need the same message for players)")