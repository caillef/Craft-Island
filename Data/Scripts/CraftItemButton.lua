
local button = script.parent
local player = Game.GetLocalPlayer()
local craftIdName = button:GetCustomProperty("CraftUIItem")

if craftIdName == nil then
    print("Error: missing CraftUIItem for button "..button.name)
    return
end

function OnCraftItem(button)
    while Events.BroadcastToServer("inventoryCraftEvent", player, craftIdName) ~= BroadcastEventResultCode.SUCCESS do
        Task.Wait(1)
    end
    button.isInteractable = false
    Task.Wait(0.3)
    button.isInteractable = true
end

button.releasedEvent:Connect(OnCraftItem)