Task.Wait()
local TRIGGER = script:GetCustomProperty("Trigger"):WaitForObject()
local TEST_ROOT = script:GetCustomProperty("TestRoot"):WaitForObject()
local CURRENT_HOUSE_ID = TEST_ROOT:GetCustomProperty("houseId")

local ACTIVATE_EVENT = _G.Housing_Manager.activateEvent

function onInteract(trigger, player)
    Events.Broadcast(ACTIVATE_EVENT, player, CURRENT_HOUSE_ID)
end

function activateHouse(houseId)
    if CURRENT_HOUSE_ID == houseId then
        TRIGGER.isInteractable = false
        TRIGGER.visibility = Visibility.FORCE_OFF
    end
end

function deactivateHouse(houseId)
    if CURRENT_HOUSE_ID == houseId then
        TRIGGER.isInteractable = true
        TRIGGER.visibility = Visibility.INHERIT
    end
end

TRIGGER.interactedEvent:Connect(onInteract)

Events.Connect('housing-system.activate', activateHouse)
Events.Connect('housing-system.deactivate', deactivateHouse)