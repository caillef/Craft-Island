local SPAWN_MANAGER = script:GetCustomProperty("SpawnManager"):WaitForObject().context
local PortalSFX = script:GetCustomProperty("PortalSFX")
local propMainPortal = script:GetCustomProperty("MainPortal"):WaitForObject()

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
    Events.BroadcastToPlayer(player, "EnteringIsland")
    local sfx = World.SpawnAsset(PortalSFX, { position = pos })
    sfx:Play()
    Task.Wait(2)
    sfx:Destroy()
end

destinations = {
    ["own_island"] = function (player)
        local slot = SPAWN_MANAGER.GetSpawnSlotForPlayer(player)
        if slot == nil then
            TeleportPlayerTo(player, "main_island")
            return nil
        end
        return Vector3.New(slot.pos.x - 1850, slot.pos.y, slot.pos.z + 150) -- portal position
    end,
    ["main_island"] = function (player)
        local pos = propMainPortal:GetWorldPosition()
        pos.x = pos.x - 300
        pos.z = pos.z + 150
        return pos
    end,
}

Events.ConnectForPlayer("TP", TeleportPlayerTo)