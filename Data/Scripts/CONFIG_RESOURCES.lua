local growthConfig = {}
local devgrowthConfig = {}

local DEV_MODE_ACTIVATED = script:GetCustomProperty("GROW_FAST") or false

if Environment.IsHostedGame() then
    DEV_MODE_ACTIVATED = false
end

-- Min time, max time, next object muid

-- Berry Sprout
growthConfig["36A9E82F5F5F4C9D"] = { 30, 45, "37506694514741E4" }
-- Berry Bush
growthConfig["E90DF6F7DCB80F51"] = { 45, 60, "37506694514741E4" }

-- Sapling
growthConfig["27313876BD39650C"] = { 30, 45, "2C9DA5AC47D87B71" }

-- Wheat
growthConfig["42793220AEB392CF"] = { 10, 15, "7BA2BA8C590D39DF" }
growthConfig["7BA2BA8C590D39DF"] = { 10, 15, "F20A02737F888FF0" }
growthConfig["F20A02737F888FF0"] = { 10, 15, "0CF04473DA51CDA5" }

for key,value in pairs(growthConfig) do 
    devgrowthConfig[key] = { 1, 1, value[3] }
end

function GetGrowthConfig(muid)
    if muid == nil then return nil end
    return DEV_MODE_ACTIVATED and devgrowthConfig[muid] or growthConfig[muid]
end