local SPAWN_MANAGER = script:GetCustomProperty("SpawnManager"):WaitForObject().context
local STORY_MANAGER = script:GetCustomProperty("StoryManager"):WaitForObject().context

function Reset(player)
    SPAWN_MANAGER.OnPlayerLeft(player)
    Storage.SetPlayerData(player, {})
	Events.Broadcast("inventoryReady", player)
	STORY_MANAGER.OnPlayerJoined(player)
    SPAWN_MANAGER.OnPlayerJoined(player)
end

Events.ConnectForPlayer("HARDRESET", Reset)