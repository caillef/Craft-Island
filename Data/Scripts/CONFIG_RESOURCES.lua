local growthConfig = {}
local devgrowthConfig = {}

local DEV_MODE_ACTIVATED = false

-- Min time, max time, next object muid

-- Sapling
devgrowthConfig["27313876BD39650C"] = { 3, 3, "2C9DA5AC47D87B71" }

-- Wheat
devgrowthConfig["42793220AEB392CF"] = { 1, 1, "7BA2BA8C590D39DF" }
devgrowthConfig["7BA2BA8C590D39DF"] = { 1, 1, "F20A02737F888FF0" }
devgrowthConfig["F20A02737F888FF0"] = { 1, 1, "0CF04473DA51CDA5" }

-- Sapling
growthConfig["27313876BD39650C"] = { 30, 45, "2C9DA5AC47D87B71" }

-- Wheat
growthConfig["42793220AEB392CF"] = { 10, 15, "7BA2BA8C590D39DF" }
growthConfig["7BA2BA8C590D39DF"] = { 10, 15, "F20A02737F888FF0" }
growthConfig["F20A02737F888FF0"] = { 10, 15, "0CF04473DA51CDA5" }


function GetGrowthConfig(muid)
    if muid == nil then return nil end
    return DEV_MODE_ACTIVATED and devgrowthConfig[muid] or growthConfig[muid]
end