local INVENTORY = script:GetCustomProperty("InventoryScriptServer"):WaitForObject().context
local propSharedKeyIslands = script:GetCustomProperty("SharedKeyIslands")
local APIB = require(script:GetCustomProperty("APIBuildingSystem"))
local APIO = require(script:GetCustomProperty("APIObjects"))
local APIBSerializer = require(script:GetCustomProperty("APIBlockSerializer"))
local CONSTANTS = require(script:GetCustomProperty("Constants"))

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
            staticFolderId = script:GetCustomProperty("Island"..i):WaitForObject().id,
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

local objList = {}

local function PlaceObjectHandler(position, angle, type, id, islandPos, parent)
    local muid = APIO.OBJECTS[type].templateMuid
    islandPos = islandPos or Vector3.ZERO
	position = position + islandPos

    local obj = parent:SpawnSharedAsset(muid, { position = position, rotation = Rotation.New(0, 0, angle) })

	obj.serverUserData.id = id
    obj.serverUserData.cellId = APIB.GetCellId(obj:GetWorldPosition(), obj:GetWorldRotation().z)
    obj.serverUserData.structureType = APIO.OBJECTS[APIO.GetTypeFromTemplate(obj.sourceTemplateId)].type
    -- if obj.serverUserData.structureType == "wall" then
    --     obj.serverUserData.wallId = APIB.GetWallId(obj:GetWorldPosition(), obj:GetWorldRotation().z)
    -- end
    obj.serverUserData.nlo = nloList[id]

	objList[parent.id] = objList[parent.id] or {}
    objList[parent.id][id] = obj
    objList[id] = obj
end
Events.Connect("PlaceObject", PlaceObjectHandler)

local function RemoveObjectHandler(id)
    local obj = objList[id]
    if not Object.IsValid(obj) then return end
    objList[obj.parent.id][id] = nil
    objList[id] = nil
    obj.parent:DestroySharedAsset(obj)
end

function Clear(parentId)
	if not objList[parentId] then return end
	for id,_ in pairs(objList[parentId]) do
		RemoveObjectHandler(id)
	end
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
		pos = APIB.OrientedToZeroPos(pos, angle)
		angle = 0
	end

    if parent.serverUserData.slot then
        local islandLimit = CONSTANTS.ISLAND_SIZES[parent.serverUserData.islandType]
        if not APIB.IsPositionOnIsland(pos, angle, parent.serverUserData.slot.pos, islandLimit) then
           return
        end
        if not parent.serverUserData.isLoading and not APIB.IsSpotEmpty(pos, angle, objectData.type) then
            return
        end
    end

	local mandatorySurface = objectData.metadata.mustBeBuiltOn
    if not parent.serverUserData.isLoading and mandatorySurface then
        local list = parent:GetChildren()
        local block = GetStructureAtPosOfType(list, pos, angle, objectData.metadata.mustBeBuiltOn)
        if not block then
            Events.BroadcastToPlayer(player, "NeedSoil")
            return
        end
        RemoveStructure(block, player)
    end

    local id = GetNextId()

	local networkedLinkedObject = objectData.metadata.nlo
    if networkedLinkedObject and not nloList[id] then
        nloList[id] = World.SpawnAsset(networkedLinkedObject, { position=pos, rotation=Rotation.New(0,0,angle) })
    end

    if parent.serverUserData.slot then
        pos = pos - parent.serverUserData.slot.pos
    end
    Events.Broadcast("PlaceObject", pos, angle, type, id, parent.serverUserData.slot and parent.serverUserData.slot.pos, parent)
    return true
end
Events.Connect("PlaceStructure", PlaceObject)

function GetStructureAtPosOfType(list, pos, angle, type)
    pos = APIB.OrientedToZeroPos(pos, angle)
    local x,y,z = math.floor(pos.x), math.floor(pos.y), math.floor(pos.z)
    for _,obj in ipairs(list) do
    	local tx,ty,tz=obj:GetWorldPosition().x,obj:GetWorldPosition().y,obj:GetWorldPosition().z
		if math.ceil(tx) == x and math.ceil(ty) == y and math.ceil(tz) == z and
            type == APIO.GetTypeFromTemplate(obj.sourceTemplateId) then
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
end
Events.Connect("SGrow", Grow)

function LoadPreviousBlocks(player)
    local slot = player.serverUserData.slot
    slot.isLoading = true
    local structures = Storage.GetSharedPlayerData(propSharedKeyIslands, player).pBlocks or "v2*25|0=-5,-3,0|270=-7,6,0|90=0,2,0_12|0=-2,-1,0;-2,0,0;-2,-2,0"
    local blocks = APIBSerializer.DeserializeList(structures, slot.pos)
    for k,data in pairs(blocks) do
        PlaceObject(data.pos, data.angle, data.type, slot.staticFolderId)
        if k % 250 == 0 then Task.Wait(0.25) end
    end
    slot.isLoading = false
end

function RemoveStructure(obj, player)
    if not obj or not obj:IsValid() then return end
    if obj.parent.name ~= "Rocks" and player and obj.parent.id ~= player.serverUserData.slot.staticFolderId then return end
    local nlo = obj.serverUserData.nlo
    if Object.IsValid(nlo) then nlo:Destroy() end
    RemoveObjectHandler(obj.serverUserData.id)
    return true
end
Events.Connect("RemoveStructure", RemoveStructure)

local function GetSlotForPlayer(player)
    if not Object.IsValid(player) then error("LoadIsland: Player not valid") return end
    return player.serverUserData.slot
end

local function LoadIslandType(player)
    local storage = Storage.GetPlayerData(player)
    player.serverUserData.islandType = storage.islandType or 1
end

function LoadIsland(player)
    local slot = GetSlotForPlayer(player)
    if not slot then return end

    LoadIslandType(player)

    slot.island = World.SpawnAsset(ISLANDS_TEMPLATE[player.serverUserData.islandType], { position = slot.pos, parent = ISLANDS })
    local parent = World.FindObjectById(slot.staticFolderId)
    parent:SetCustomProperty("IslandPos", slot.pos)
    parent.serverUserData.islandType = player.serverUserData.islandType
    player:SetPrivateNetworkedData("islandType", player.serverUserData.islandType)
    parent.serverUserData.slot = slot
    player.serverUserData.slot = slot
    player:SetPrivateNetworkedData("islandPos", slot.pos)

    LoadPreviousBlocks(player)
end

function DestroyNetworkedObjects(list)
    for _,obj in ipairs(list) do
        if Object.IsValid(obj.serverUserData.nlo) then
            obj.serverUserData.nlo:Destroy()
        end
    end
end

function UnloadIsland(player)
    local slot = GetSlotForPlayer(player)
    if not slot then return end

    SaveIsland(player)
    slot.island:Destroy()
	local group = World.FindObjectById(slot.staticFolderId)
    DestroyNetworkedObjects(group:GetChildren())
    Clear(group.id)
    slot.island = nil
    slot.player = nil
    player.serverUserData.slot = nil
end

function TeleportTo(player, destination)
    Events.Broadcast("TP", player, destination)
end
Events.ConnectForPlayer("BSPS", BuildingSystem_OnPlaceStructure)

function UnlockNextIslandType(player, nextType)
    local currentType = player.serverUserData.islandType
    if currentType + 1 == nextType and player:GetResource("Gem") >= (nextType + 1) * 100 then
        TeleportTo(player, "main_island")
        player.movementControlMode = MovementControlMode.NONE
        Events.Broadcast("SGemAddForPlayer", player, -(nextType + 1) * 100)
        local storage = Storage.GetPlayerData(player)
        storage.islandType = nextType
        Storage.SetPlayerData(player, storage)
        player.serverUserData.islandType = nextType
        player:SetPrivateNetworkedData("islandType", player.serverUserData.islandType)

        local slot = GetSlotForPlayer(player)
        if not slot then return end
        UnloadIsland(player)
        Task.Wait(1)
        slot.player = player
	    player.serverUserData.slot = slot
        LoadIsland(player)
        Task.Wait(1)
        TeleportTo(player, "own_island")
        player.movementControlMode = MovementControlMode.VIEW_RELATIVE
    end
end
Events.ConnectForPlayer("UnlockNextIsland", UnlockNextIslandType)

function OnPlayerLeft(player)
    local slot = player.serverUserData.slot
    if not slot then return end
    UnloadIsland(player)
    if player.serverUserData.tools then
        for _,t in pairs(player.serverUserData.tools) do
            if t:IsValid() then
                t:Destroy()
            end
        end
    end
end
Game.playerLeftEvent:Connect(OnPlayerLeft)

local function AssignNextSlot(player)
    for _,slot in pairs(playerSlots) do
        if slot.player == nil or not slot.player:IsValid() then
            slot.player = player
            player.serverUserData.slot = slot
            return slot
        end
    end
end

function OnPlayerJoined(player)
    player.serverUserData.isLoading = true
    TeleportTo(player, "main_island")
    player.movementControlMode = MovementControlMode.NONE

    AssignNextSlot(player)
    LoadIsland(player)

    TeleportTo(player, "own_island")
    player.movementControlMode = MovementControlMode.VIEW_RELATIVE
    player.serverUserData.isLoading = false
end
Game.playerJoinedEvent:Connect(OnPlayerJoined)

function Reset(player)
    OnPlayerLeft(player)
    Storage.SetSharedPlayerData(propSharedKeyIslands, player, {})
    OnPlayerJoined(player)
end
Events.ConnectForPlayer("HARDRESET", Reset)

print("Building Mode Activated for the server (need the same message for players)")