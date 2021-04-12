local INVENTORY = script:GetCustomProperty("InventoryScriptServer"):WaitForObject().context

Events.ConnectForPlayer("Sell", function(player, data)
    if INVENTORY.PlayerRemoveItems(player, { idName=data.idName }, data.qty) then
        if data.idName == "BREAD" then
            Events.Broadcast("TrackAction", { p=player, t=13, qty=data.qty })
        end
        Events.Broadcast("SGoldAddForPlayer", player, data.price * data.qty)
    end
end)
    
Events.ConnectForPlayer("Buy", function(player, data)
    if data.price * data.qty <= player:GetResource("Gold") then
        INVENTORY.Add(player, { idName=data.idName, qty = data.qty })
        Events.Broadcast("SGoldAddForPlayer", player, -data.price * data.qty)
        if data.idName == "CARROT_SEEDS" then
            Events.Broadcast("TrackAction", { p=player, t=14, qty=data.qty })
        end
        if data.idName == "BERRY_SPROUT" then
            Events.Broadcast("TrackAction", { p=player, t=15, qty=data.qty })
        end
    else
        --TODO: feedback not enough gold
    end
    return
end)

Events.ConnectForPlayer("ReqInv", function(player)
    Events.BroadcastToPlayer(player, "Inv", INVENTORY.GetInventory(player))
end)