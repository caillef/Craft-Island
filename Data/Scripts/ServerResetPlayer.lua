local SPAWN_MANAGER = script:GetCustomProperty("SpawnManager"):WaitForObject().context
local propSharedKeyIslands = script:GetCustomProperty("SharedKeyIslands")

function Reset(player)
    SPAWN_MANAGER.OnPlayerLeft(player)
    Storage.SetSharedPlayerData(propSharedKeyIslands, player, {})
    SPAWN_MANAGER.OnPlayerJoined(player)
end

Events.ConnectForPlayer("HARDRESET", Reset)