local architect = script.parent
local INVENTORY = script:GetCustomProperty("InventoryScriptServer"):WaitForObject().context

local startPos = architect:GetWorldPosition()

local propTrigger = script:GetCustomProperty("Trigger"):WaitForObject()

function OnTalk(trigger, player)
    local storage = Storage.GetPlayerData(player) or {}
    local story = storage.story or {}
    if story.step == 1 then
        Events.Broadcast("inventoryAddEvent", player, { idName="SAPLING", qty = 1 }) -- Sapling
        Events.Broadcast("STEP_COMPLETED", player)
    end

    if story.step == 3 then
        Events.Broadcast("inventoryAddEvent", player, { idName="WHEAT_SEEDS", qty = 3 }) -- Wheat seeds
        Events.Broadcast("STEP_COMPLETED", player)
    end

    if story.step == 7 then
        if INVENTORY.PlayerHasItems(player, { idName="BREAD" }, 5) and -- Bread 
           INVENTORY.PlayerHasItems(player, { idName="WOOD_LOG" }, 3) then -- Wood
            INVENTORY.PlayerRemoveItems(player, { idName="BREAD" }, 5)
            INVENTORY.PlayerRemoveItems(player, { idName="WOOD_LOG" }, 3)
            Task.Wait(0.2)
            Events.Broadcast("inventoryAddEvent", player, { idName="WOODEN_WALL", qty = 30 }) -- Wall wood
            Task.Wait(0.2)
            Events.Broadcast("inventoryAddEvent", player, { idName="WOODEN_FLOOR", qty = 30 }) -- Floor wood
            Task.Wait(0.2)
            Events.Broadcast("inventoryAddEvent", player, { idName="WOODEN_STAIRS", qty = 10 }) -- Stairs wood
            Task.Wait(0.2)
            Events.Broadcast("STEP_COMPLETED", player)
        end
    end
end

propTrigger.interactedEvent:Connect(OnTalk)