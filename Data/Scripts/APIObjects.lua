local objects = {}
local objectsId = {}

local CAN_BE_BUILT = true

function createObject(id, idName, name, templateMuid, itemMuid, canbeBuilt, builtConditions)
    if objectsId[idName] ~= nil then
        print("Error: two objects have the same idName ("..idName..").")
        return nil
    end
    objectsId[idName] = id
    if objects[id] ~= nil then
        print("Error: two objects have the same id ("..id..").")
        return
    end
    objects[id] = {
        id=id,
        idName=idName,
        name=name,
        templateMuid=templateMuid,
        itemMuid=itemMuid,
        canBeBuilt=canbeBuilt == CAN_BE_BUILT,
        buildConditions=builtConditions,
        tostring=function(obj)
            return tostring(obj.id).." "..obj.idName.." "..obj.name
        end
    }
    return objects[id]
end

createObject(1, "BASIC_AXE", "Basic Axe", "F27A87BB28DA0B17", "1214EEEF9701EE9A")
createObject(2, "BASIC_HOE", "Basic Hoe", "7EEB7CAAF782C5B8", "E2428B216BD2D34B")
createObject(3, "BERRY", "Berry", nil, "7D3C73A40F261843")
createObject(4, "BERRY_PIE", "Berry Pie", "20A307AEAC04355A", "6B0CB993E5EAEFF6")
createObject(5, "BERRY_PIE_DOUGH", "Berry Pie Dough", "F721BFAF2C35AE1E", "849D4C1B02464AC5")
createObject(6, "BREAD", "Bread", "9DDC09A1376B35EB", "58CF2E553C1958F0")
createObject(7, "DOUGH", "Dough", "DA3210C33E0E71A7", "905D3C58A6D70B6A")
createObject(8, "WOODEN_FLOOR", "Wooden Floor", "F440BFFDAF9433E4", "60BA6C27C1F3EA75", CAN_BE_BUILT)
createObject(9, "SAPLING", "Sapling", "27313876BD39650C", "D48610A224F25A9E", CAN_BE_BUILT)
createObject(10, "WOODEN_STAIRS", "Wooden Stairs", "D0A095484BDEF61C", "D4469C4FF621DC7D", CAN_BE_BUILT)
createObject(11, "WOODEN_WALL", "Wooden Wall", "CDE4BDBDD300E1ED", "178FF62EF3246BE7", CAN_BE_BUILT)
createObject(12, "WHEAT", "Wheat", "0CF04473DA51CDA5", "828D307143518252")
createObject(13, "WHEAT_SEEDS", "Wheat Seeds", "42793220AEB392CF", "A19DF3F7881592F3", CAN_BE_BUILT, { mustBeBuiltOn=30 })
createObject(14, "WOOD_LOG", "Wood Log", nil, "4153F13DBF7563A6")
createObject(15, "BERRY_SPROUT", "Berry Sprout", "36A9E82F5F5F4C9D", "1FDE35B1D2A8901F", CAN_BE_BUILT)
createObject(16, "BIG_WOODEN_WINDOW", "Big Wooden Window", "B1BE272F2A3FD51A", "8C5509CCAC1C750E", CAN_BE_BUILT)
createObject(17, "SMALL_WOODEN_WINDOW", "Small Wooden Window", "DC823597FE997BE1", "1F4C8911AF77BAFA", CAN_BE_BUILT)
createObject(18, "CHAIR", "Chair", "B6749DB861E6DDED", "D1F4BC513D92F88A", CAN_BE_BUILT)
createObject(19, "WOODEN_DOOR", "Wooden Door", "0C546224C6536C85", "2B56C1E3C138F542", CAN_BE_BUILT)
createObject(20, "TABLE", "Table", "76C9DD010BBBBDD3", "BC4C40A42D63733D", CAN_BE_BUILT)
createObject(21, "BASIC_PICKAXE", "Basic Pickaxe", "9B0E9CDD3D19EB9E", "AECB1226211DC37C")
createObject(22, "FURNACE", "Furnace", "58C8D2760D98333B", "0B66793FF08195AC", CAN_BE_BUILT)
createObject(23, "STONE", "Stone", nil, "51D4970917797698")
createObject(24, "COAL", "Coal", nil, "D1EC52C0B5D654EA")
createObject(25, "TREE", "Tree", "2C9DA5AC47D87B71")
createObject(26, "BERRY_BUSH_EMPTY", "Berry Bush (empty)", "E90DF6F7DCB80F51")
createObject(27, "BERRY_BUSH_FULL", "Berry Bush (full)", "37506694514741E4")
createObject(28, "ROCK", "Rock", "AEF89E3EB4EC6DA7")
createObject(29, "COAL_ROCK", "Coal Rock", "68C52F65CF8115BD")
createObject(30, "SOIL", "Soil", "1B5A92562B0F84C3", nil, CAN_BE_BUILT)
createObject(31, "WHEAT_SEEDS_2", "Wheat Seeds (step 2)", "7BA2BA8C590D39DF")
createObject(32, "WHEAT_SEEDS_3", "Wheat Seeds (step 3)", "F20A02737F888FF0")
createObject(33, "CRAFTING_TABLE", "Crafting Table", "F95AF4EFEEE7ED28", "50690DEBF9920EEA", CAN_BE_BUILT)
createObject(34, "COOKING_TABLE", "Cooking Table", "59B79BAC58346826", "A9F30D0C73F26FC3", CAN_BE_BUILT)
createObject(35, "STONEBRICKS_WALL", "Stone Bricks Wall", "8ADBAD3470BDF271", "D94B675726659603", CAN_BE_BUILT) 
createObject(36, "STONEBRICKS_WINDOW", "Stone Bricks Window", "5C79FED5ECB2988C", "1C320A5367ED0C60", CAN_BE_BUILT) 
createObject(37, "STONEBRICKS_FLOOR", "Stone Bricks Floor", "117258AA93C5A99A", "5F1CC941472413F0", CAN_BE_BUILT) 
createObject(38, "STONEBRICKS_STAIRS", "Stone Bricks Stairs", "44E630CD0E3E4EEB", "05ED5D4E1CA9613F", CAN_BE_BUILT) 
createObject(39, "STONEBRICKS_DOOR", "Stone Bricks Door", "643C2CF33CA51F8C", "2EB9B31CA3EC69A7", CAN_BE_BUILT) 
createObject(40, "CARROT_SEEDS", "Carrot Seeds", "C1A4AA9C6FE28B6E", "9E40FB62220F7B65", CAN_BE_BUILT, { mustBeBuiltOn=30 })
createObject(41, "CARROT_SEEDS_2", "Carrot Seeds (step 2)", "958AB68F519C22B7")
createObject(42, "CARROT_SEEDS_3", "Carrot Seeds (step 3)", "AE55DAF95CF23E0E")
createObject(43, "CARROT", "Carrot", "6408EF122263758C", "D126BC06CDE848AE")
createObject(44, "CARROT_CAKE", "Carrot Cake", nil, "ABDE0CA429E5ABCB")
createObject(45, "CARROT_CAKE_DOUGH", "Carrot Cake Dough", nil, "30DDBB38EFE77CEB")

createObject(46, "WOODEN_ROOF", "Wood Roof", "2761A08C351F45BE", "21259372F91A9B2C", CAN_BE_BUILT)
createObject(47, "STONEBRICKS_ROOF", "Stone Bricks Roof", "EFCF7BEB8474601F", "30579678C9629843", CAN_BE_BUILT)

createObject(48, "WOODEN_HALF_WALL", "Wood Half Wall", "B84CE7A6982549BA", "A413535463FA42C9", CAN_BE_BUILT)
createObject(49, "STONEBRICKS_HALF_WALL", "Stone Bricks Half Wall", "A41A2492C9BEF70D", "D4A860FCB4EA1BCC", CAN_BE_BUILT)
createObject(50, "WOODEN_TRI_WALL", "Wood Triangle Wall", "31D16B93745142FD", "59128C7BC620BB43", CAN_BE_BUILT)
createObject(51, "STONEBRICKS_TRI_WALL", "Stone Bricks Triangle Wall", "454F0A6798EB78A2", "DE0403C123E32DDE", CAN_BE_BUILT)

createObject(52, "FISH", "Fish", nil, "D0217B0C80A7903E")
createObject(53, "FISHING_ROD", "Fishing Rod", "5B12901D72C18C90", "E241E71578A23273")
createObject(54, "COOKED_FISH", "Cooked Fish", nil, "80D099987281F9E9")

createObject(55, "LANTERN", "Lantern", "81C0362A7379CE60", "C85154B189F4B8F4", CAN_BE_BUILT)
createObject(56, "WALLTORCH", "Wall Torch", "C46A3D3062C5A0C9", "39472EF77277F5AE", CAN_BE_BUILT)
createObject(57, "IRON_ROCK", "Iron Rock", "CA41BB1CFD9573AC")
createObject(58, "IRON", "Iron", nil, "D759E42007B25621")
createObject(59, "WOODEN_REVTRI_WALL", "Wood Reverse Triangle Wall", "6ADC103424B9D134", "02A043CEBA80ABFB", CAN_BE_BUILT)
createObject(60, "STONEBRICKS_REVTRI_WALL", "Stone Bricks Reverse Triangle Wall", "D8750C1C96CCCBEB", "35CAD5A3332A3C31", CAN_BE_BUILT)

createObject(61, "PUMPKIN_SEEDS", "Pumpkin Seeds", "6AD9CDB1DFADEC24", "F9F42D39C8BDE302", CAN_BE_BUILT, { mustBeBuiltOn=30 })
createObject(62, "PUMPKIN_SEEDS_2", "Pumpkin Seeds (step 2)", "927247A49F1B691C")
createObject(63, "PUMPKIN_SEEDS_3", "Pumpkin Seeds (step 3)", "09D9C9CDEE0B3F4B")
createObject(64, "PUMPKIN", "Pumpkin", "C1EF362489B3A783", "11B5B4C2A94A0D6B")

for _,item in pairs(objects) do
    for _,item2 in pairs(objects) do
        if item ~= item2 then
            if item.templateMuid and item.templateMuid == item2.templateMuid then
                print("Error: two objects have the same templateMuid ("..item.templateMuid..").")
            end
            if item.itemMuid and item.itemMuid == item2.itemMuid then
                print("Error: two objects have the same itemMuid ("..item.itemMuid..").")
            end
        end
    end
end

_G["caillef.craftisland.objects"] = objects
_G["caillef.craftisland.objectsid"] = objectsId
_G["caillef.craftisland.queryobject"] = function(data)
    if objects[data] then
        return objects[data]
    end
    return objectsId[data] and objects[objectsId[data]] or nil
end
_G["caillef.craftisland.findstructure"] = function(itemMuid)
    if itemMuid == objects[objectsId["BASIC_HOE"]].itemMuid then
        return objectsId["SOIL"]
    end
    for k,v in pairs(objects) do
        if v.itemMuid == itemMuid then
            return k
        end
    end
    return nil
end

local CRAFTING_TABLE = 0
local COOKING_TABLE = 1

_G["caillef.craftisland.crafts"] = {
	{
		{ "WHEAT", 2 },
        { "DOUGH", 1 },
        COOKING_TABLE
	},
	{
		{ "DOUGH", 1, "BERRY", 2 },
        { "BERRY_PIE_DOUGH", 1 },
        COOKING_TABLE
	},
	{
		{ "DOUGH", 1, "CARROT", 2 },
        { "CARROT_CAKE_DOUGH", 1 },
        COOKING_TABLE
	},
    {
		{ "STONE", 20 },
        { "FURNACE", 1 },
        CRAFTING_TABLE
	},
	{
		{ "WOOD_LOG", 5 },
        { "CRAFTING_TABLE", 1 },
        CRAFTING_TABLE
	},
	{
		{ "WOOD_LOG", 5 },
        { "COOKING_TABLE", 1 },
        CRAFTING_TABLE
	},
    {
		{ "WOOD_LOG", 30 },
        { "FISHING_ROD", 1 },
        CRAFTING_TABLE
	},
	{
		{ "WOOD_LOG", 5 },
        { "CHAIR", 1 },
        CRAFTING_TABLE
	},
	{
		{ "WOOD_LOG", 10 },
        { "TABLE", 1 },
        CRAFTING_TABLE
	},
	{
		{ "WOOD_LOG", 2 },
        { "WOODEN_WALL", 3, "WOODEN_STAIRS", 3, "WOODEN_FLOOR", 3, "WOODEN_DOOR", 3, "SMALL_WOODEN_WINDOW", 3, "BIG_WOODEN_WINDOW", 3, "WOODEN_ROOF", 3, "WOODEN_HALF_WALL", 3, "WOODEN_TRI_WALL", 3, "WOODEN_REVTRI_WALL", 3 },
        CRAFTING_TABLE
    },
    {
		{ "STONE", 2 },
        { "STONEBRICKS_WALL", 3, "STONEBRICKS_STAIRS", 3, "STONEBRICKS_FLOOR", 3, "STONEBRICKS_WINDOW", 3, "STONEBRICKS_DOOR", 3, "STONEBRICKS_ROOF", 3, "STONEBRICKS_HALF_WALL", 3, "STONEBRICKS_TRI_WALL", 3, "STONEBRICKS_REVTRI_WALL", 3 },
        CRAFTING_TABLE
	},
    {
		{ "IRON", 5, "COAL", 1 },
        { "LANTERN", 1, "WALLTORCH", 1 },
        CRAFTING_TABLE
	}
}

local SELL = 0
local BUY = 1
_G["caillef.craftisland.buysell"] = {
    { -- 1 is for baker
        { SELL, "BREAD", 10 },
        { SELL, "CARROT_CAKE", 30 },
        { SELL, "BERRY_PIE", 100 },
        { SELL, "COOKED_FISH", 50 },
    },
    { -- 2 for seeds
        { BUY, "SAPLING", 50 },
        { BUY, "WHEAT_SEEDS", 20 },
        { BUY, "CARROT_SEEDS", 50 },
        { BUY, "PUMPKIN_SEEDS", 100 },
        { BUY, "BERRY_SPROUT", 200 },
    },
    { -- 3 for farmer
        { SELL, "WHEAT", 3 },
        { SELL, "CARROT", 10 },
        { SELL, "PUMPKIN", 25 },
        { SELL, "BERRY", 20 },
    },
    { -- 4 for material
        { SELL, "STONE", 2 },
        { SELL, "WOOD_LOG", 2 },
    }
}

local API = {}
API.OBJECTS = objects
API.OBJECTS_ID = objectsId
API.QueryObject = function(data)
    if objects[data] then
        return objects[data]
    end
    return objectsId[data] and objects[objectsId[data]] or nil
end
API.FindStructure = function(itemMuid)
    if itemMuid == objects[objectsId["BASIC_HOE"]].itemMuid then
        return objectsId["SOIL"]
    end
    for k,v in pairs(objects) do
        if v.itemMuid == itemMuid then
            return k
        end
    end
    return nil
end
API.CRAFTS = _G["caillef.craftisland.crafts"]
API.BUYSELL_LIST = _G["caillef.craftisland.buysell"]

return API