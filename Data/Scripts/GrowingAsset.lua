local parent = script.parent
if not parent or parent:GetCustomProperty("CanGrow") ~= true then
    return
end

local growthConfig = require(script:GetCustomProperty("CONFIG_RESOURCES")).GetGrowthConfig(script.parent.sourceTemplateId)
if growthConfig == nil then
    print("Missing growth configuration for object "..script.parent.name..", "..script.parent.sourceTemplateId)
    return
end

function SpawnNextStep()
    Events.Broadcast("SGrow", script.parent, growthConfig[3])
end

local nextGrowth = math.random(growthConfig[1], growthConfig[2])
local task = Task.Spawn(function()
    Task.Wait(nextGrowth)
    if script:IsValid() then
        SpawnNextStep()
    end
end)
script.destroyEvent:Connect(function()
    Task.Cancel(task)
end)