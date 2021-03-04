local function AddGold(player, amount)
  if player:GetResource("Gold") == nil then
    player:SetResource("Gold", 0)    
  end
  player:AddResource("Gold", amount)
  local storage = Storage.GetPlayerData(player) or {}
  storage.gold = player:GetResource("Gold")
  Storage.SetPlayerData(player, storage)
end

local function OnPlayerReady(player)
  local storage = Storage.GetPlayerData(player) or {}
  player:SetResource("Gold", storage.gold or 0)
end

Events.Connect("SGoldAddForPlayer", AddGold)
Events.ConnectForPlayer("inventoryReady", OnPlayerReady)