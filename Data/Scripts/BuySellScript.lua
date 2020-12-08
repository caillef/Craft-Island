local TRIGGER = script.parent
local INVENTORY = TRIGGER:GetCustomProperty("InventoryScriptServer"):WaitForObject().context
local GOLD = TRIGGER:GetCustomProperty("GoldScriptServer"):WaitForObject().context

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

local UIItemMuid = mysplit(TRIGGER:GetCustomProperty("ItemUI"), ":")[1]
local price = TRIGGER:GetCustomProperty("Price")
local buy = TRIGGER:GetCustomProperty("Buy")
local qty = TRIGGER:GetCustomProperty("Quantity") or 1

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

function OnInteract(trigger, player)
    if buy then
        if price <= GOLD.GetGoldAmount(player) then
            INVENTORY.Add(player, { muid=UIItemMuid, qty = qty })
            Events.Broadcast("SGoldAddForPlayer", player, -price)
        else
            --TODO: feedback not enough gold
        end
        return
    else
        if INVENTORY.PlayerRemoveItems(player, UIItemMuid) then
            Events.Broadcast("SGoldAddForPlayer", player, price)
            local storage = Storage.GetPlayerData(player) or {}
            local story = storage.story or {}
            if story.step == 6 and "58CF2E553C1958F0" == UIItemMuid then --Bread
                Events.Broadcast("STEP_COMPLETED", player)
            end
            return
        end
    end
end

TRIGGER.interactedEvent:Connect(OnInteract)