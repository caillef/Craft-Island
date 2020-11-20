local propTrigger = script:GetCustomProperty("Trigger"):WaitForObject()

function OnHarvest(trigger, other)
    --TODO sound
    Events.Broadcast("H", { id = trigger.parent.id, p=other.id, harvest=true, pos = trigger.parent:GetWorldPosition(), angle = trigger.parent:GetRotation().z })
end

propTrigger.interactedEvent:Connect(OnHarvest)