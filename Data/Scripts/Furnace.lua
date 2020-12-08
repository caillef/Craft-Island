local INVENTORY = World.GetRootObject():FindDescendantByName("InventoryScriptServer").context
local propSmokeVolumeVFX = script:GetCustomProperty("SmokeVolumeVFX"):WaitForObject()
local propFireBreathWhoosh01SFX = script:GetCustomProperty("FireBreathWhoosh01SFX"):WaitForObject()
local propFireandFlameBurningLoopSet01SFX = script:GetCustomProperty("FireandFlameBurningLoopSet01SFX"):WaitForObject()

local propTrigger1 = script:GetCustomProperty("Trigger1"):WaitForObject()
local propContent1 = script:GetCustomProperty("Content1"):WaitForObject()
local propTrigger2 = script:GetCustomProperty("Trigger2"):WaitForObject()
local propContent2 = script:GetCustomProperty("Content2"):WaitForObject()
local propTrigger3 = script:GetCustomProperty("Trigger3"):WaitForObject()
local propContent3 = script:GetCustomProperty("Content3"):WaitForObject()

propSmokeVolumeVFX.visibility = Visibility.FORCE_OFF

local cooking = 0

function OnPlace(trigger, player)
    if INVENTORY.GetCurrentItem(player) == "905D3C58A6D70B6A" and -- Dough
       INVENTORY.PlayerHasItems(player, "905D3C58A6D70B6A", 1) then
        local parent
        if trigger.id == propTrigger1.id then
            parent = propContent1
        end
        if trigger.id == propTrigger2.id then
            parent = propContent2
        end
        if trigger.id == propTrigger3.id then
            parent = propContent3
        end
        if #parent:GetChildren() == 0 then
            trigger.isInteractable = false
            INVENTORY.PlayerRemoveItems(player, "905D3C58A6D70B6A", 1) -- Dough
            local temporary = World.SpawnAsset("DA3210C33E0E71A7", { parent = parent }) -- UncookedBread
            if cooking == 0 then
                propFireBreathWhoosh01SFX:Play()
                propFireandFlameBurningLoopSet01SFX:Play()
            end
            propSmokeVolumeVFX.visibility = Visibility.FORCE_ON
            cooking = cooking + 1
            Task.Wait(5)
            temporary:Destroy()
            World.SpawnAsset("9DDC09A1376B35EB", { parent = parent }) -- Bread
            local storage = Storage.GetPlayerData(player) or {}
            local story = storage.story or {}
            if story.step == 5 then
                Events.Broadcast("STEP_COMPLETED", player)
            end
            trigger.isInteractable = true
            cooking = cooking - 1
            if cooking == 0 then
                propFireandFlameBurningLoopSet01SFX:Stop()
                propSmokeVolumeVFX.visibility = Visibility.FORCE_OFF
            end
        end
    end

    if INVENTORY.GetCurrentItem(player) == "849D4C1B02464AC5" and -- UI Berry pie dough
       INVENTORY.PlayerHasItems(player, "849D4C1B02464AC5", 1) then
        local parent
        if trigger.id == propTrigger1.id then
            parent = propContent1
        end
        if trigger.id == propTrigger2.id then
            parent = propContent2
        end
        if trigger.id == propTrigger3.id then
            parent = propContent3
        end
        if #parent:GetChildren() == 0 then
            trigger.isInteractable = false
            INVENTORY.PlayerRemoveItems(player, "849D4C1B02464AC5", 1) -- UI Berry pie dough
            local temporary = World.SpawnAsset("F721BFAF2C35AE1E", { parent = parent }) -- Berry pie dough
            if cooking == 0 then
                propFireBreathWhoosh01SFX:Play()
                propFireandFlameBurningLoopSet01SFX:Play()
            end
            propSmokeVolumeVFX.visibility = Visibility.FORCE_ON
            cooking = cooking + 1
            Task.Wait(5)
            temporary:Destroy()
            World.SpawnAsset("20A307AEAC04355A", { parent = parent }) -- Berry pie
            trigger.isInteractable = true
            cooking = cooking - 1
            if cooking == 0 then
                propFireandFlameBurningLoopSet01SFX:Stop()
                propSmokeVolumeVFX.visibility = Visibility.FORCE_OFF
            end
        end
    end
end

propTrigger1.interactedEvent:Connect(OnPlace)
propTrigger2.interactedEvent:Connect(OnPlace)
propTrigger3.interactedEvent:Connect(OnPlace)