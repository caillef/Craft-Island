local propNextStep = script:GetCustomProperty("NextStep")
local propGrowthRangeTime = script:GetCustomProperty("GrowthRangeTime")

function GetCurrentTime()
    return os.time(os.date("!*t"))
end

function SpawnNextStep()
    World.GetRootObject():FindChildByName("ServerScripts"):FindChildByName("BuildingSystemServer").context.Grow(script.parent, propNextStep)
end

local dateNextGrowth = GetCurrentTime() + math.random(propGrowthRangeTime.x, propGrowthRangeTime.y)

local task = Task.Spawn(function()
    Task.Wait(dateNextGrowth - GetCurrentTime())
    if script:IsValid() then
        SpawnNextStep()
    end
end)

script.destroyEvent:Connect(function()
    Task.Cancel(task)
end)