local function AddCurrency(player, name, amount)
  if amount == 0 then return end
  if player:GetResource(name) == nil then
    player:SetResource(name, 0)
  end
  player:AddResource(name, amount)
  Task.Wait(0.1)
  local storage = Storage.GetPlayerData(player) or {}
  storage[name == "Gold" and "gold" or "gem"] = player:GetResource(name)
  Storage.SetPlayerData(player, storage)
end

local function AddGold(player, amount)
  AddCurrency(player, "Gold", amount)
end

local function AddGem(player, amount)
  AddCurrency(player, "Gem", amount)
end

Events.Connect("SGemAddForPlayer", AddGem)
Events.Connect("SGoldAddForPlayer", AddGold)

Events.ConnectForPlayer("inventoryReady", function(player)
  local storage = Storage.GetPlayerData(player) or {}
  player:SetResource("Gold", storage.gold or 0)
  player:SetResource("Gem", storage.gem or 0)
end)
