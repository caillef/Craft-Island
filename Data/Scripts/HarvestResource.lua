local propTrigger = script:GetCustomProperty("Trigger"):WaitForObject()

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

local eventName = "H"..mysplit(propTrigger.parent.id, ":")[1]

function OnHarvest(trigger, other)
    --TODO sound
    Events.Broadcast(eventName, { p=other.id, harvest=true, pos = trigger.parent:GetWorldPosition(), angle = trigger.parent:GetRotation().z, t=2 })
end

propTrigger.interactedEvent:Connect(OnHarvest)