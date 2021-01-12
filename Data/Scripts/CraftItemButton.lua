
local button = script.parent
local player = Game.GetLocalPlayer()
local craftMuid = button:GetCustomProperty("CraftUIItem")

if craftMuid == nil then
    print("Error: missing CraftUIItem for button "..button.name)
    return
end

local function mysplit(inputstr, sep)
    if sep == nil then
            sep = "%s"
    end
    local t={}
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
            table.insert(t, str)
    end
    return t
end

function OnCraftItem(button)
    while Events.BroadcastToServer("inventoryCraftEvent", player, mysplit(craftMuid, ":")[1]) ~= BroadcastEventResultCode.SUCCESS do
        Task.Wait(0.25)
    end
    button.isInteractable = false
    Task.Wait(0.3)
    button.isInteractable = true
end

button.releasedEvent:Connect(OnCraftItem)