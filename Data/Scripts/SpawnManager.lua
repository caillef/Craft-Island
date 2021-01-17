﻿local BUILDING_SYSTEM = script:GetCustomProperty("BuildingSystemServerattherootofthe"):WaitForObject().context
local TELEPORT_MANAGER = script:GetCustomProperty("TeleportManager"):WaitForObject().context
local propPlayerIsland = script:GetCustomProperty("PlayerIsland")
local propIslands = script:GetCustomProperty("Islands"):WaitForObject()

local NB_MAX_PLAYERS = 8
local SPACE_BETWEEN_ISLAND = 100000

local playerSlots = {}

local function GetSpawnWorldPosition(i)
    local pos = Vector3.ONE * i * SPACE_BETWEEN_ISLAND
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
        if s.player == nil and s.island == nil then
            return PrepareSlot(player, s)
        end
    end
    return nil
end

permissionsAll = {}
permissionsBreak = {}

local miningZone = World.GetRootObject():FindDescendantByName("MiningZone")
miningZone.beginOverlapEvent:Connect(function(trigger, other)
    if not other:IsA("Player") then return end
    print("canBreak")
    permissionsBreak[other.id] = true
end)
miningZone.endOverlapEvent:Connect(function(trigger, other)
    if not other:IsA("Player") then return end
    print("cantBreak")
    permissionsBreak[other.id] = false
end)

function OnPlayerJoined(player)
    local slot = AssignNextSlot(player)
    if slot == nil then return end
    local buildingZone = slot.island:FindChildByName("BuildingZone")
    buildingZone.beginOverlapEvent:Connect(function(trigger, other)
        if not other:IsA("Player") then return end
        permissionsAll[other.id] = player == other
        while other:IsValid() and Events.BroadcastToPlayer(other, "OnBuildPermission", player == other) ~= BroadcastEventResultCode.SUCCESS do
            Task.Wait(0.25)
        end
    end)
    buildingZone.endOverlapEvent:Connect(function(trigger, other)
        if not other:IsA("Player") then return end
        permissionsAll[other.id] = false
        while other:IsValid() and Events.BroadcastToPlayer(other, "OnBuildPermission", false) ~= BroadcastEventResultCode.SUCCESS do
            Task.Wait(0.25)
        end
    end)

    Task.Wait(1)
    BUILDING_SYSTEM.LoadIsland(slot)
    TELEPORT_MANAGER.TeleportPlayerTo(player, "own_island")
end

function OnPlayerLeft(player)
    local slot = GetSpawnSlotForPlayer(player)
    BUILDING_SYSTEM.UnloadIsland(slot)    
    slot.player = nil
    slot.island = nil
end

function GetSpawnSlotForPlayer(player)
    for _,s in pairs(playerSlots) do
        if s.player and s.player:IsValid() and (s.player.name == player or (player.IsA and player:IsValid() and s.player.id == player.id)) then
            return s
        end
    end
    print("No slot")
    return nil
end

Game.playerJoinedEvent:Connect(OnPlayerJoined)
Game.playerLeftEvent:Connect(OnPlayerLeft)