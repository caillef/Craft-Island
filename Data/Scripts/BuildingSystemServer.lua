local INVENTORY = script:GetCustomProperty("InventoryScriptServer"):WaitForObject().context
local propSharedKeyIslands = script:GetCustomProperty("SharedKeyIslands")
local APIB = require(script:GetCustomProperty("APIBuildingSystem"))
local APIO = require(script:GetCustomProperty("APIObjects"))
local APIBSerializer = require(script:GetCustomProperty("APIBlockSerializer"))
local CONSTANTS = require(script:GetCustomProperty("Constants"))

local placedObjects = {}
local objs = {}

local objectsToSend = {}
local objectsToRemove = {}

local ISLANDS_TEMPLATE = {
    script:GetCustomProperty("PlayerIsland"),
    script:GetCustomProperty("PlayerIsland2"),
    script:GetCustomProperty("PlayerIsland3"),
    script:GetCustomProperty("PlayerIsland4")
}
local ISLANDS = script:GetCustomProperty("Islands"):WaitForObject()

local NB_MAX_PLAYERS = 4
local SPACE_BETWEEN_ISLAND = 15000

local playerSlots = {}
local nloList = {}

local function GetSpawnWorldPosition(i)
    local pos = Vector3.New()
    pos.x = (i - 1) % (NB_MAX_PLAYERS / 2) * SPACE_BETWEEN_ISLAND + 20000
    pos.y = math.floor((i - 1) / (NB_MAX_PLAYERS / 2)) * SPACE_BETWEEN_ISLAND
    pos.z = 0
    return pos
end

local function initPlayerSpots()
    for i=1,NB_MAX_PLAYERS do
        playerSlots[i] = {
            pos = GetSpawnWorldPosition(i),
            staticFolderId = script:GetCustomProperty("Island"..i):WaitForObject():GetCustomProperty("Structures"):WaitForObject().id,
            player = nil,
            island = nil
        }
    end
end
initPlayerSpots()

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
    Storage.SetSharedPlayerData(propSharedKeyIslands, player, storage)
end

function BuildingSystem_OnPlaceStructure(player, serializedBlock)
    local data = APIBSerializer.Deserialize(serializedBlock, player.serverUserData.slot.pos)
    if not data or not INVENTORY.PlayerHasItems(player, { id=data.type }) then return end

    if Object.IsValid(player) and CountNbStructures(player) >= 4000 then
        while Object.IsValid(player) and Events.BroadcastToPlayer(player, "BSLimit") ~= BroadcastEventResultCode.SUCCESS do
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
    local objectData = APIO.OBJECTS[type]
    angle = APIB.GetAlignedAngle(angle)
    local parent = World.FindObjectById(parentId)
    if objectData.idName == "SOIL" then
		pos = OrientedToZeroPos(pos, angle)
		angle = 0
	end

    if parent.serverUserData.slot then
        local islandLimit = CONSTANTS.ISLAND_SIZES[parent.serverUserData.islandType]
        if islandLimit and not APIB.IsValidPlaceToBuild(pos, angle, parent.serverUserData.slot.pos, islandLimit) then
           return
        end
    end

    --[[local placedTypedObjects = placedObjects[type] or {}
    if placedTypedObjects[position.z] ~= nil and
       placedTypedObjects[position.z][position.y] ~= nil and
       placedTypedObjects[position.z][position.y][position.x] ~= nil and
       placedTypedObjects[position.z][position.y][position.x][angle] ~= nil then
        return false
    end]]--

	local mandatorySurface = objectData.buildConditions and objectData.buildConditions.mustBeBuiltOn
    if not parent.serverUserData.isLoading and mandatorySurface then
        local list = parent:GetChildren()
        local block = GetStructureAtPosOfType(list, pos, angle, objectData.buildConditions.mustBeBuiltOn)
        if not block then
            Events.BroadcastToPlayer(player, "NeedSoil")
            return
        end
        RemoveStructure(block, player)
    end

    local id = GetNextId()

	local networkedLinkedObject = objectData.buildConditions and objectData.buildConditions.nlo
    if networkedLinkedObject and not nloList[id] then
        nloList[id] = World.SpawnAsset(networkedLinkedObject, { position=pos, rotation=Rotation.New(0,0,angle) })
    end

    if parent.serverUserData.slot then
        pos = pos - parent.serverUserData.slot.pos
    end

    local rawData = APIBSerializer.SerializeWithId(pos, angle, type, id)
    objs[parentId] = objs[parentId] or {}
    objs[parentId][id] = rawData
    objectsToSend[parentId] = (objectsToSend[parentId] or "")..rawData
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

function GetStructureAtPosOfType(list, pos, angle, type)
    pos = OrientedToZeroPos(pos, angle)
    local x,y,z = math.floor(pos.x), math.floor(pos.y), math.floor(pos.z)
    for _,obj in ipairs(list) do
    	local tx,ty,tz=obj:GetWorldPosition().x,obj:GetWorldPosition().y,obj:GetWorldPosition().z
		if math.ceil(tx) == x and math.ceil(ty) == y and math.ceil(tz) == z then
            print(type, APIO.GetTypeFromTemplate(obj.sourceTemplateId))
            if type == APIO.GetTypeFromTemplate(obj.sourceTemplateId) then
                return obj
            end
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
end
Events.Connect("SGrow", Grow)

Events.Connect("SetObjMetadata", function(obj, id)
	obj.serverUserData.id = id
    obj.serverUserData.nlo = nloList[id]
end)

function LoadPreviousBlocks(player)
    local slot = player.serverUserData.slot
    slot.isLoading = true
    local structures = Storage.GetSharedPlayerData(propSharedKeyIslands, player).pBlocks or "v2*25|0=-5,-3,0|270=-7,6,0|90=0,2,0_12|0=-2,-1,0;-2,0,0;-2,-2,0"
    local blocks = APIBSerializer.DeserializeList(structures, slot.pos)
    for k,data in pairs(blocks) do
        PlaceObject(data.pos, data.angle, data.type, slot.staticFolderId)
        if k % 500 == 0 then Task.Wait() end
    end
    slot.isLoading = false
end

Task.Spawn(function()
    while true do
        for key,data in pairs(objectsToSend) do
            if data and #data > 0 then
	            local group = World.FindObjectById(key)
	            if group.name == "Structures" then group = group.parent end
				local toSend = objectsToSend[key]
				local chunked = false
				if #objectsToSend[key] > 15*250 then
					chunked = true
	                toSend = objectsToSend[key]:sub(1, 15*250)
	                objectsToSend[key] = objectsToSend[key]:sub(15*250 + 1,#objectsToSend[key])
				end
				group:SetCustomProperty("SerializedObjects", toSend)
				Task.Wait()
				if not chunked then
			        objectsToSend[key] = ""
				end
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
    if obj.parent.parent.name ~= "Rocks" and player and obj.parent.id ~= player.serverUserData.slot.staticFolderId then return end
    local objId = obj.serverUserData.id
    objs[obj.parent.id][objId] = nil
    local nlo = obj.serverUserData.nlo
    if Object.IsValid(nlo) then nlo:Destroy() end
    objectsToRemove[obj.parent.id] = (objectsToRemove[obj.parent.id] or "").." "..objId
    return true
end
Events.Connect("RemoveStructure", RemoveStructure)

function LoadIsland(slot)
    if not Object.IsValid(slot.player) then
        error("LoadIsland: Player not valid")
        return
    end
    local player = slot.player
    Task.Spawn(function()
        player.movementControlMode = MovementControlMode.NONE
        Task.Wait(2)
        player.movementControlMode = MovementControlMode.VIEW_RELATIVE
    end)
    slot.island = World.SpawnAsset(ISLANDS_TEMPLATE[player.serverUserData.islandType], { position = slot.pos, parent = ISLANDS })
    local parent = World.FindObjectById(slot.staticFolderId)
    parent.parent:SetCustomProperty("IslandPos", slot.pos)
    parent.serverUserData.islandType = player.serverUserData.islandType
    parent.serverUserData.slot = slot
    LoadPreviousBlocks(player)
    -- Load other islands
    Task.Spawn(function()
        for key, list in pairs(objs) do
            if key ~= player.serverUserData.slot.staticFolderId then
                for _, obj in pairs(list) do
                    objectsToSend[key] = (objectsToSend[key] or "")..""..obj
                end
            end
        end
    end)
end

function UnloadIsland(slot)
    local player = slot.player
    if not Object.IsValid(player) then
        error("Player is invalid while unloading island.")
    end
    SaveIsland(player)
    slot.island:Destroy()
	local group = World.FindObjectById(slot.staticFolderId)
    for _,obj in ipairs(group:GetChildren()) do
        if Object.IsValid(obj.serverUserData.nlo) then
            obj.serverUserData.nlo:Destroy()
        end
    end
    if group.name == "Structures" then group = group.parent end
    group:SetCustomProperty("Clear", not group:GetCustomProperty("Clear"))
    slot.island = nil
    slot.player = nil
    player.serverUserData.slot = nil


    placedObjects[player] = nil
end

function OnInventoryReady(player)
	while player.serverUserData.slot == nil do
		Task.Wait(0.1)
	end
    LoadIsland(player.serverUserData.slot)
    Task.Wait(1)
    Events.Broadcast("TP", player, "own_island")
    while player and player:IsValid() and Events.BroadcastToPlayer(player, "OnPlayerInitialized", {islandPos = player.serverUserData.slot.pos, iType= player.serverUserData.islandType }) ~= BroadcastEventResultCode.SUCCESS do
        Task.Wait(1)
    end
    Events.BroadcastToPlayer(player, "UpdateNextIslandType", player.serverUserData.islandType + 1)
end

Events.Connect("SInventoryReady", OnInventoryReady)
Events.ConnectForPlayer("BSPS", BuildingSystem_OnPlaceStructure)

print("Building Mode Activated for the server (need the same message for players)")

function UnlockNextIslandType(player, nextType)
    local currentType = player.serverUserData.islandType
    if currentType + 1 == nextType and player:GetResource("Gem") >= (nextType + 1) * 100 then
        Events.Broadcast("TP", player, "main_island")
        Task.Spawn(function()
            player.movementControlMode = MovementControlMode.NONE
            Task.Wait(3)
            player.movementControlMode = MovementControlMode.VIEW_RELATIVE
        end)
        Events.Broadcast("SGemAddForPlayer", player, -(nextType + 1) * 100)
        Events.BroadcastToPlayer(player, "UpdateNextIslandType", nextType + 1)
        local storage = Storage.GetPlayerData(player)
        storage.islandType = nextType
        player.serverUserData.islandType = storage.islandType
        Storage.SetPlayerData(player, storage)
        local slot = player.serverUserData.slot
        if not slot then return end
        UnloadIsland(slot)
        Task.Wait(1)
        slot.player = player
	    player.serverUserData.slot = slot
        LoadIsland(slot)
        Task.Wait(1)
        Events.Broadcast("TP", player, "own_island")
    end
end
Events.ConnectForPlayer("UnlockNextIsland", UnlockNextIslandType)

function OnPlayerLeft(player)
    local slot = player.serverUserData.slot
    if not slot then return end
    UnloadIsland(slot)
end
Game.playerLeftEvent:Connect(OnPlayerLeft)

local function AssignNextSlot(player)
    for _,slot in pairs(playerSlots) do
        if slot.player == nil or not slot.player:IsValid() then
            if Object.IsValid(slot.island) then
                slot.island:Destroy()
                for _,structure in ipairs(World.FindObjectById(slot.staticFolderId):GetChildren()) do
                    structure:Destroy()
                end
            end
            slot.player = player
            player.serverUserData.slot = slot
            return slot
        end
    end
end

function OnPlayerJoined(player)
    local storage = Storage.GetPlayerData(player)
    player.serverUserData.islandType = storage.islandType or 1
    Events.Broadcast("TP", player, "main_island")
    AssignNextSlot(player)
end
Game.playerJoinedEvent:Connect(OnPlayerJoined)

function Reset(player)
    OnPlayerLeft(player)
    Storage.SetSharedPlayerData(propSharedKeyIslands, player, {})
    OnPlayerJoined(player)
end
Events.ConnectForPlayer("HARDRESET", Reset)
