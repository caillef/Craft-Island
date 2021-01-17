local parent = script.parent
if not parent or parent:GetCustomProperty("CanGrow") ~= true then
    return
end

local owner
function SetOwner(player)
    owner = player
end

local config = World.GetRootObject():FindChildByName("CONFIG_RESOURCES")
local growthConfig = config.context.GetGrowthConfig(script.parent.sourceTemplateId)

print(script.parent.name)
if growthConfig == nil then
    print("Missing growth configuration for object "..script.parent.name..", "..script.parent.sourceTemplateId)
    return
end

function GetCurrentTime()
    return os.time(os.date("!*t"))
end

function SpawnNextStep()
    World.GetRootObject():FindChildByName("ServerScripts"):FindChildByName("BuildingSystemServer").context.Grow(script.parent, growthConfig[3], owner)
end

local dateNextGrowth = GetCurrentTime() + math.random(growthConfig[1], growthConfig[2])

local task = Task.Spawn(function()
    Task.Wait(dateNextGrowth - GetCurrentTime())
    if script:IsValid() then
        SpawnNextStep()
    end
end)

script.destroyEvent:Connect(function()
    Task.Cancel(task)
end)