local propTrigger = script:GetCustomProperty("Trigger"):WaitForObject()

local id = propTrigger.parent.id

function OnHarvest(trigger, other)
    Events.Broadcast("H", { prop=id, p=other.id, h=true, t=2 })
end

if not Environment.IsClient() then
    print("trigger not in client")
    propTrigger.interactedEvent:Connect(OnHarvest)
end


