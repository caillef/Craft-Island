local golds = {}

local function AddGold(player, amount)
  golds[player] = golds[player] + amount
  while Events.BroadcastToPlayer(player, "CGoldAmount", golds[player]) ~= BroadcastEventResultCode.SUCCESS do
    Task.Wait(0.25)
  end
end

local function OnPlayerJoined(player)
  local storage = Storage.GetPlayerData(player) or {}
  golds[player] = storage.gold or 0
  Task.Wait(1)
  while Events.BroadcastToPlayer(player, "CGoldAmount", golds[player]) ~= BroadcastEventResultCode.SUCCESS do
    Task.Wait(0.25)
  end
end

local function OnPlayerLeft(player)
  local storage = Storage.GetPlayerData(player) or {}
  storage.gold = golds[player]
  Storage.SetPlayerData(player, storage)
end

function GetGoldAmount(player)
  return golds[player] or 0
end

Events.Connect("SGoldAddForPlayer", AddGold)
Game.playerJoinedEvent:Connect(OnPlayerJoined)
Game.playerLeftEvent:Connect(OnPlayerLeft)