local LOOT_TABLES = {}

-- Feel free to modify the contents of each table (string values only)
local commonLootTable = {"Bass", "Perch", "Sardine", "Cod", "Halibut", "Herring", "Mackerel", "Walleye"}
local uncommonLootTable = {"Pike", "Tuna", "Catfish", "Carp"}
local rareLootTable = {"Blue Shark", "Grey Skate", "Swordfish"}
local veryRareLootTable = {"Basking Shark", "Great White Shark"}

-- Do not delete or modify the functions below
function LOOT_TABLES.GetCommonLootTable()
    return commonLootTable
end

function LOOT_TABLES.GetUncommonLootTable()
    return uncommonLootTable
end

function LOOT_TABLES.GetRareLootTable()
    return rareLootTable
end

function LOOT_TABLES.GetVeryRareLootTable()
    return veryRareLootTable
end

return LOOT_TABLES