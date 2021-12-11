local TRIGGER = script.parent
local INVENTORY = TRIGGER:GetCustomProperty("InventoryScriptServer"):WaitForObject().context

local itemIdName = TRIGGER:GetCustomProperty("ItemId")
local price = TRIGGER:GetCustomProperty("Price")
local buy = TRIGGER:GetCustomProperty("Buy")
local qty = TRIGGER:GetCustomProperty("Quantity") or 1

function OnInteract(trigger, player)
    if buy then
        if price <= player:GetResource("Gold") then
            INVENTORY.Add(player, { idName=itemIdName, qty = qty })
            Events.Broadcast("SGoldAddForPlayer", player, -price)
        else
            --TODO: feedback not enough gold
        end
        return
    else
        if INVENTORY.PlayerRemoveItems(player, { idName=itemIdName }) then
            Events.Broadcast("SGoldAddForPlayer", player, price)
            return
        end
    end
end

TRIGGER.interactedEvent:Connect(OnInteract)