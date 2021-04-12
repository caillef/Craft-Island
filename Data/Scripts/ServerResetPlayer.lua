local SPAWN_MANAGER = script:GetCustomProperty("SpawnManager"):WaitForObject().context
local STORY_MANAGER = script:GetCustomProperty("StoryManager"):WaitForObject().context
local propSharedKeyIslands = script:GetCustomProperty("SharedKeyIslands")
local propSharedKeyInventory = script:GetCustomProperty("SharedKeyInventory")

function Reset(player)
    SPAWN_MANAGER.OnPlayerLeft(player)
    Storage.SetPlayerData(player, {})
    Storage.SetSharedPlayerData(propSharedKeyIslands, player, {})
    Storage.SetSharedPlayerData(propSharedKeyInventory, player, {})
    player:SetResource("Gold", 0)
    player:SetResource("Gem", 0)
    Events.Broadcast("inventoryReady", player)
	STORY_MANAGER.OnPlayerJoined(player)
    SPAWN_MANAGER.OnPlayerJoined(player)
end

Events.ConnectForPlayer("HARDRESET", Reset)