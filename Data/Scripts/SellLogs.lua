local TRIGGER = script.parent
local INVENTORY = script:GetCustomProperty("InventoryScriptServer"):WaitForObject().context

local LOG_MUID = "4153F13DBF7563A6:Item UI Wood"

function OnInteract(trigger, player)
    if INVENTORY.PlayerRemoveItems(player, LOG_MUID) then
        Events.Broadcast("SGoldAddForPlayer", player, 5)
        return
    end
end

TRIGGER.interactedEvent:Connect(OnInteract)