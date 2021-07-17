local TELEPORT_MANAGER = script:GetCustomProperty("TeleportManager"):WaitForObject().context
local propPlayerIsland = script:GetCustomProperty("PlayerIsland")
local propIslands = script:GetCustomProperty("Islands"):WaitForObject()

local NB_MAX_PLAYERS = 4
local SPACE_BETWEEN_ISLAND = 8000

local playerSlots = {}

local function GetSpawnWorldPosition(i)
    local pos = Vector3.New()
    pos.x = (i - 1) % (NB_MAX_PLAYERS / 2) * SPACE_BETWEEN_ISLAND + 30000
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
    slot.island = World.SpawnAsset(propPlayerIsland, { position = slot.pos, parent = propIslands })
    return slot
end

local function AssignNextSlot(player)
    for _,s in pairs(playerSlots) do
        if (s.player == nil or not s.player:IsValid()) and s.island == nil then
            local slot = PrepareSlot(player, s)
            return slot
        end
    end
    return nil
end

permissionsAll = {}
permissionsBreak = {}

local miningZone = World.GetRootObject():FindDescendantByName("MiningZone")
miningZone.beginOverlapEvent:Connect(function(trigger, other)
    if not other:IsA("Player") then return end
    permissionsBreak[other.id] = true
end)
miningZone.endOverlapEvent:Connect(function(trigger, other)
    if not other:IsA("Player") then return end
    permissionsBreak[other.id] = false
end)

function OnPlayerJoined(player)
    TELEPORT_MANAGER.TeleportPlayerTo(player, "main_island")
    local slot = AssignNextSlot(player)
    if slot == nil then return end
    local buildingZone = slot.island:FindChildByName("BuildingZone")
    buildingZone.beginOverlapEvent:Connect(function(trigger, other)
        if not player:IsValid() or not other:IsValid() then return end
        if not other:IsA("Player") then return end
        permissionsAll[other.id] = player == other
        while other:IsValid() and Events.BroadcastToPlayer(other, "OnBuildPermission", player == other) ~= BroadcastEventResultCode.SUCCESS do
            Task.Wait(1)
        end
    end)
    buildingZone.endOverlapEvent:Connect(function(trigger, other)
        if not player:IsValid() or not other:IsValid() then return end
        if not other:IsA("Player") then return end
        permissionsAll[other.id] = false
        while other:IsValid() and Events.BroadcastToPlayer(other, "OnBuildPermission", false) ~= BroadcastEventResultCode.SUCCESS do
            Task.Wait(1)
        end
    end)
    Task.Wait(1)
    Events.Broadcast("BSLI", slot) -- Building Manager Load Island
    TELEPORT_MANAGER.TeleportPlayerTo(player, "own_island")
end

function OnPlayerLeft(player)
    local slot = GetSpawnSlotForPlayer(player)
    if not slot then return end
    Events.Broadcast("BSULI", slot)
    slot.player = nil
    slot.island = nil
end

function GetSpawnSlotForPlayer(player)
    for _,s in pairs(playerSlots) do
        if s.player and s.player:IsValid() and (s.player.name == player or s.player == player) then
            return s
        end
    end
    return nil
end

Game.playerJoinedEvent:Connect(OnPlayerJoined)
Game.playerLeftEvent:Connect(OnPlayerLeft)