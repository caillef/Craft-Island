local PortalSFX = script:GetCustomProperty("PortalSFX")
local MAIN_PORTAL = script:GetCustomProperty("MainPortal"):WaitForObject()

local function Teleport(player, pos)
    if player and player:IsValid() then
        player:SetWorldPosition(pos)
    end
end

local destinations = {}

function TeleportPlayerTo(player, destination)
    local pos = destinations[destination](player)
    if not pos then return end
    Teleport(player, pos)
    while player:IsValid() and Events.BroadcastToPlayer(player, "EnteringIsland") ~= BroadcastEventResultCode.SUCCESS do
		Task.Wait(1)
    end
    World.SpawnAsset(PortalSFX, { position = pos })
end

destinations = {
    ["own_island"] = function (player)
        local slot = player.serverUserData.slot
        if slot == nil then
            TeleportPlayerTo(player, "main_island")
            return nil
        end
        return Vector3.New(slot.pos.x - 1850, slot.pos.y, slot.pos.z + 150) -- portal position
    end,
    ["main_island"] = function (player)
        local pos = MAIN_PORTAL:GetWorldPosition()
        pos.x = pos.x - 300
        pos.z = pos.z + 150
        return pos
    end,
}
Events.Connect("TP", TeleportPlayerTo)

Events.ConnectForPlayer("AuthTP", function(player, other)
    if not player:IsValid() then return end
    if other == player.name then return end
    player.serverUserData.teleportAllowLists = player.serverUserData.teleportAllowLists or {}
    table.insert(player.serverUserData.teleportAllowLists, other)
end)

function GetPlayerByName(name)
    for _,p in ipairs(Game.GetPlayers()) do
        if name == p.name then return p end
    end
end

Events.ConnectForPlayer("ReqTP", function(player, otherName)
    if not player:IsValid() then return end
    local other = GetPlayerByName(otherName)
    if other == nil then return end
    for _,p in pairs(other.serverUserData.teleportAllowLists) do
        if p == player.name then
            local slot = other.serverUserData.slot
            if slot then
                Teleport(player, Vector3.New(slot.pos.x - 1850, slot.pos.y, slot.pos.z + 150))
                return nil
            end
        end
    end
    print("Not allowed")
end)
