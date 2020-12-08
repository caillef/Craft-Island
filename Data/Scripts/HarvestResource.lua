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

function OnHarvest(trigger, other)
    --TODO sound
    Events.Broadcast("H"..mysplit(trigger.parent.id, ":")[1], { p=other.id, harvest=true, pos = trigger.parent:GetWorldPosition(), angle = trigger.parent:GetRotation().z })
end

propTrigger.interactedEvent:Connect(OnHarvest)