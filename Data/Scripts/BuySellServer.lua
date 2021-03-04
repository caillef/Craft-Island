local INVENTORY = script:GetCustomProperty("InventoryScriptServer"):WaitForObject().context

Events.ConnectForPlayer("Sell", function(player, data)
    print(data.qty)
    if INVENTORY.PlayerRemoveItems(player, { idName=data.idName }, data.qty) then
        Events.Broadcast("SGoldAddForPlayer", player, data.price * data.qty)
    end
end)
    
Events.ConnectForPlayer("Buy", function(player, data)
    if data.price * data.qty <= player:GetResource("Gold") then
        INVENTORY.Add(player, { idName=data.idName, qty = data.qty })
        Events.Broadcast("SGoldAddForPlayer", player, -data.price * data.qty)
    else
        --TODO: feedback not enough gold
    end
    return
end)

Events.ConnectForPlayer("ReqInv", function(player)
    Events.BroadcastToPlayer(player, "Inv", INVENTORY.GetInventory(player))
end)