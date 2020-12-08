local architect = script.parent
local INVENTORY = script:GetCustomProperty("InventoryScriptServer"):WaitForObject().context

local startPos = architect:GetWorldPosition()

-- Task.Spawn(function()
--     while true do
--         architect:MoveContinuous(Vector3.UP * 10)
--         Task.Wait(1)
--         architect:MoveContinuous(Vector3.UP * -10)
--         Task.Wait(1)
--     end
-- end)

local propTrigger = script:GetCustomProperty("Trigger"):WaitForObject()

function OnTalk(trigger, player)
    local storage = Storage.GetPlayerData(player) or {}
    local story = storage.story or {}
    if story.step == 1 then
        Events.Broadcast("inventoryAddEvent", player, { muid="D48610A224F25A9E", qty = 1 }) -- Sapling
        Events.Broadcast("STEP_COMPLETED", player)
    end

    if story.step == 3 then
        Events.Broadcast("inventoryAddEvent", player, { muid="A19DF3F7881592F3", qty = 3 }) -- Wheat seeds
        Events.Broadcast("STEP_COMPLETED", player)
    end

    if story.step == 7 then
        if INVENTORY.PlayerHasItems(player, "58CF2E553C1958F0", 5) and -- Bread 
           INVENTORY.PlayerHasItems(player, "4153F13DBF7563A6", 3) then -- Wood
            INVENTORY.PlayerRemoveItems(player, "58CF2E553C1958F0", 5)
            INVENTORY.PlayerRemoveItems(player, "4153F13DBF7563A6", 3)
            Task.Wait(0.2)
            Events.Broadcast("inventoryAddEvent", player, { muid="178FF62EF3246BE7", qty = 30 }) -- Wall wood
            Task.Wait(0.2)
            Events.Broadcast("inventoryAddEvent", player, { muid="60BA6C27C1F3EA75", qty = 30 }) -- Floor wood
            Task.Wait(0.2)
            Events.Broadcast("inventoryAddEvent", player, { muid="D4469C4FF621DC7D", qty = 10 }) -- Stairs wood
            Task.Wait(0.2)
            Events.Broadcast("STEP_COMPLETED", player)
        end
    end
end

propTrigger.interactedEvent:Connect(OnTalk)