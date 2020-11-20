local golds = {}

function AddGold(player, amount)
    golds[player] = golds[player] + amount
    while Events.BroadcastToPlayer(player, "CGoldAmount", golds[player]) ~= BroadcastEventResultCode.SUCCESS do
		Task.Wait(0.1)
	end
    local storage = Storage.GetPlayerData(player) or {}
    storage.gold = golds[player]
    Storage.SetPlayerData(player, storage)
end

function OnPlayerJoined(player)
    local storage = Storage.GetPlayerData(player) or {}
    golds[player] = storage.gold or 0
    while Events.BroadcastToPlayer(player, "CGoldAmount", golds[player]) ~= BroadcastEventResultCode.SUCCESS do
		Task.Wait(0.1)
	end
end

Events.Connect("SGoldAddForPlayer", AddGold)
Game.playerJoinedEvent:Connect(OnPlayerJoined)