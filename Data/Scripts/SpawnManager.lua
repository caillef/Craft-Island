local TELEPORT_MANAGER = script:GetCustomProperty("TeleportManager"):WaitForObject().context
local ISLANDS_TEMPLATE = {
    script:GetCustomProperty("PlayerIsland"),
    script:GetCustomProperty("PlayerIsland2"),
    script:GetCustomProperty("PlayerIsland3"),
    script:GetCustomProperty("PlayerIsland4")
}
local propIslands = script:GetCustomProperty("Islands"):WaitForObject()

local NB_MAX_PLAYERS = 4
local SPACE_BETWEEN_ISLAND = 20000

local playerSlots = {}

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
            player = nil,
            island = nil
        } 
    end
end
initPlayerSpots()

local function PrepareSlot(player, slot)
    slot.player = player
    slot.island = World.SpawnAsset(ISLANDS_TEMPLATE[player.serverUserData.islandType], { position = slot.pos, parent = propIslands })
    slot.island.serverUserData.owner = player
    return slot
end

local function AssignNextSlot(player)
    for _,s in pairs(playerSlots) do
        if (s.player == nil or not s.player:IsValid()) then
            if s.island and s.island:IsValid() then
                s.island:Destroy()
            end
            local slot = PrepareSlot(player, s)
            return slot
        end
    end
    return nil
end

function OnPlayerJoined(player)
    local storage = Storage.GetPlayerData(player)
    player.serverUserData.islandType = storage.islandType or 1
    TELEPORT_MANAGER.TeleportPlayerTo(player, "main_island")
    local slot = AssignNextSlot(player)
    if slot == nil then return end
    Task.Wait(1)
    Events.Broadcast("BSLI", slot) -- Building Manager Load Island
    TELEPORT_MANAGER.TeleportPlayerTo(player, "own_island")
end

function OnPlayerLeft(player)
    local slot = GetSpawnSlotForPlayer(player)
    if not slot then return end
    Events.Broadcast("BSULI", slot)
end

function GetSpawnSlotForPlayer(player)
    for _,s in pairs(playerSlots) do
        if s.player and s.player:IsValid() and (s.player.name == player or s.player == player) then
            return s
        end
    end
    return nil
end

function UnlockNextIslandType(player, nextType)
    local currentType = player.serverUserData.islandType
    if currentType + 1 == nextType and player:GetResource("Gem") >= (nextType + 1) * 100 then
        TELEPORT_MANAGER.TeleportPlayerTo(player, "main_island")
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
        local slot = GetSpawnSlotForPlayer(player)
        if not slot then return end
        Events.Broadcast("BSULI", slot)
        Task.Wait(1)
        local slot = AssignNextSlot(player)
        if slot == nil then return end
        Task.Wait(1)
        Events.Broadcast("BSLI", slot) -- Building Manager Load Island
        TELEPORT_MANAGER.TeleportPlayerTo(player, "own_island")
    end
end
Events.ConnectForPlayer("UnlockNextIsland", UnlockNextIslandType)

Game.playerJoinedEvent:Connect(OnPlayerJoined)
Game.playerLeftEvent:Connect(OnPlayerLeft)