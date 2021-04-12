local function AddGold(player, amount)
  if amount == 0 then return end
  if player:GetResource("Gold") == nil then
    player:SetResource("Gold", 0)    
  end
  player:AddResource("Gold", amount)
  local storage = Storage.GetPlayerData(player) or {}
  storage.gold = player:GetResource("Gold")
  Storage.SetPlayerData(player, storage)
end


local function AddGem(player, amount)
  if amount == 0 then return end
  if player:GetResource("Gem") == nil then
    player:SetResource("Gem", 0)
  end
  player:AddResource("Gem", amount)
  local storage = Storage.GetPlayerData(player) or {}
  storage.gem = player:GetResource("Gem")
  Storage.SetPlayerData(player, storage)
end

Events.Connect("SGemAddForPlayer", AddGem)
Events.Connect("SGoldAddForPlayer", AddGold)

Events.ConnectForPlayer("inventoryReady", function(player)
  local storage = Storage.GetPlayerData(player) or {}
  player:SetResource("Gold", storage.gold or 0)
  player:SetResource("Gem", storage.gem or 0)
end)
