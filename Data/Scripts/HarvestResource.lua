local propTrigger = script:GetCustomProperty("Trigger"):WaitForObject()

local id = CoreString.Split(propTrigger.parent.id, {delimiters={":"}})
local eventName = "H"..id

function OnHarvest(trigger, other)
    Events.Broadcast(eventName, { p=other.id, h=true, t=2 })
end

propTrigger.interactedEvent:Connect(OnHarvest)