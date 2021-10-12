local growthConfig = {}
local devgrowthConfig = {}

local DEV_MODE_ACTIVATED = script:GetCustomProperty("GROW_FAST") or false

if Environment.IsHostedGame() then
    DEV_MODE_ACTIVATED = false
end

-- Min time, max time, next object muid

-- Berry Sprout
growthConfig["36A9E82F5F5F4C9D"] = { 60, 120, "BERRY_BUSH_EMPTY" }
-- Berry Bush
growthConfig["E90DF6F7DCB80F51"] = { 200, 240, "BERRY_BUSH_FULL" }

-- Sapling
growthConfig["27313876BD39650C"] = { 30, 45, "TREE" }

-- Wheat
growthConfig["42793220AEB392CF"] = { 15, 20, "WHEAT_SEEDS_2" }
growthConfig["7BA2BA8C590D39DF"] = { 15, 20, "WHEAT_SEEDS_3" }
growthConfig["F20A02737F888FF0"] = { 15, 20, "WHEAT" }

-- Carrots
growthConfig["C1A4AA9C6FE28B6E"] = { 40, 45, "CARROT_SEEDS_2" }
growthConfig["958AB68F519C22B7"] = { 40, 45, "CARROT_SEEDS_3" }
growthConfig["AE55DAF95CF23E0E"] = { 40, 45, "CARROT" }

-- Pumpkins
growthConfig["6AD9CDB1DFADEC24"] = { 50, 60, "PUMPKIN_SEEDS_2" }
growthConfig["927247A49F1B691C"] = { 50, 60, "PUMPKIN_SEEDS_3" }
growthConfig["09D9C9CDEE0B3F4B"] = { 50, 60, "PUMPKIN" }

for key,value in pairs(growthConfig) do 
    devgrowthConfig[key] = { 1, 1, value[3] }
end

function GetGrowthConfig(muid)
    if muid == nil then return nil end
    return DEV_MODE_ACTIVATED and devgrowthConfig[muid] or growthConfig[muid]
end