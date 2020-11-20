function OnSaveInventory(player, d)
    local data = Storage.GetPlayerData(player)
    for key,item in pairs(d) do
        if item.qty == 0 then
            d[key] = nil
        end
    end
    data.inventory = d
    Storage.SetPlayerData(player, data)
end

Events.Connect("inventorySaveEvent", OnSaveInventory)