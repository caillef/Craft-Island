local propTriggerPutGrain = script:GetCustomProperty("TriggerPutGrain"):WaitForObject()
local propTriggerGetFlour = script:GetCustomProperty("TriggerGetFlour"):WaitForObject()
local INVENTORY = World.GetRootObject():FindDescendantByName("InventoryScriptServer").context
local propWheatNumber = script:GetCustomProperty("WheatNumber"):WaitForObject()
local propFlourNumber = script:GetCustomProperty("FlourNumber"):WaitForObject()

local flours = 0
local wheats = 0
local running = false

function ConsumeWheat()
    if wheats <= 0 then
        running = false
        return
    end
    running = true
    Task.Wait(5)
    wheats = wheats - 1
    propWheatNumber.text = tostring(wheats)
    flours = flours + 1
    propFlourNumber.text = tostring(flours)
    ConsumeWheat()
end

function OnPutGrain(trigger, player)
    if INVENTORY.PlayerRemoveItems(player, "828D307143518252") then -- Ui Wheat
        wheats = wheats + 1
        propWheatNumber.text = tostring(wheats)
        if not running then
            ConsumeWheat()
        end
    end
end

function OnGetFlour(trigger, player)
    INVENTORY.Add(player, { muid="5D28AF9148A5452A", qty = flours }) -- UI Flour
    flours = 0
    propFlourNumber.text = tostring(flours)
end

propTriggerPutGrain.interactedEvent:Connect(OnPutGrain)
propTriggerGetFlour.interactedEvent:Connect(OnGetFlour)