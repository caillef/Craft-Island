local objects = {}
local objectsId = {}

local CAN_BE_BUILT = true

function createObject(id, idName, name, templateMuid, itemMuid, canbeBuilt, metadata)
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
        metadata=metadata or {},
        tostring=function(obj)
            return tostring(obj.id).." "..obj.idName.." "..obj.name
        end
    }
    return objects[id]
end

createObject(1, "BASIC_AXE", "Basic Axe", "2B7B3C64C0ED0918", "1214EEEF9701EE9A")
createObject(2, "BASIC_HOE", "Basic Hoe", "7EEB7CAAF782C5B8", "E2428B216BD2D34B")
createObject(3, "BERRY", "Berry", nil, "7D3C73A40F261843")
createObject(4, "BERRY_PIE", "Berry Pie", "20A307AEAC04355A", "6B0CB993E5EAEFF6")
createObject(5, "BERRY_PIE_DOUGH", "Berry Pie Dough", "F721BFAF2C35AE1E", "849D4C1B02464AC5")
createObject(6, "BREAD", "Bread", "9DDC09A1376B35EB", "58CF2E553C1958F0")
createObject(7, "DOUGH", "Dough", "DA3210C33E0E71A7", "905D3C58A6D70B6A")
createObject(8, "WOODEN_FLOOR", "Wooden Floor", "F440BFFDAF9433E4", "60BA6C27C1F3EA75", CAN_BE_BUILT, { structureType="floor" })
createObject(9, "SAPLING", "Sapling", "27313876BD39650C", "D48610A224F25A9E", CAN_BE_BUILT, { structureType="ground" })
createObject(10, "WOODEN_STAIRS", "Wooden Stairs", "D0A095484BDEF61C", "D4469C4FF621DC7D", CAN_BE_BUILT, { structureType="block" })
createObject(11, "WOODEN_WALL", "Wooden Wall", "CDE4BDBDD300E1ED", "178FF62EF3246BE7", CAN_BE_BUILT, { structureType="wall" })
createObject(12, "WHEAT", "Wheat", "0CF04473DA51CDA5", "828D307143518252", not CAN_BE_BUILT, { structureType="block" })
createObject(13, "WHEAT_SEEDS", "Wheat Seeds", "42793220AEB392CF", "A19DF3F7881592F3", CAN_BE_BUILT, { structureType="block", mustBeBuiltOn=30 })
createObject(14, "WOOD_LOG", "Wood Log", nil, "4153F13DBF7563A6")
createObject(15, "BERRY_SPROUT", "Berry Sprout", "36A9E82F5F5F4C9D", "1FDE35B1D2A8901F", CAN_BE_BUILT, { structureType="ground" })
createObject(16, "BIG_WOODEN_WINDOW", "Big Wooden Window", "B1BE272F2A3FD51A", "8C5509CCAC1C750E", CAN_BE_BUILT, { structureType="wall" })
createObject(17, "SMALL_WOODEN_WINDOW", "Small Wooden Window", "DC823597FE997BE1", "1F4C8911AF77BAFA", CAN_BE_BUILT, { structureType="wall" })
createObject(18, "CHAIR", "Chair", "B6749DB861E6DDED", "D1F4BC513D92F88A", CAN_BE_BUILT, { structureType="block", nlo="40A8E4CCDBD73839" })
createObject(19, "WOODEN_DOOR", "Wooden Door", "0C546224C6536C85", "2B56C1E3C138F542", CAN_BE_BUILT, { structureType="wall", nlo="63C063D27EADBC84" })
createObject(20, "TABLE", "Table", "76C9DD010BBBBDD3", "BC4C40A42D63733D", CAN_BE_BUILT, { structureType="block" })
createObject(21, "BASIC_PICKAXE", "Basic Pickaxe", "9B0E9CDD3D19EB9E", "AECB1226211DC37C")
createObject(22, "FURNACE", "Furnace", "58C8D2760D98333B", "0B66793FF08195AC", CAN_BE_BUILT, { structureType="block" })
createObject(23, "STONE", "Stone", nil, "51D4970917797698")
createObject(24, "COAL", "Coal", nil, "D1EC52C0B5D654EA")
createObject(25, "TREE", "Tree", "2C9DA5AC47D87B71", nil, not CAN_BE_BUILT, { structureType="block" })
createObject(26, "BERRY_BUSH_EMPTY", "Berry Bush (empty)", "E90DF6F7DCB80F51", not CAN_BE_BUILT, { structureType="block" })
createObject(27, "BERRY_BUSH_FULL", "Berry Bush (full)", "37506694514741E4", not CAN_BE_BUILT, { structureType="block" })
createObject(28, "ROCK", "Rock", "AEF89E3EB4EC6DA7")
createObject(29, "COAL_ROCK", "Coal Rock", "68C52F65CF8115BD")
createObject(30, "SOIL", "Soil", "1B5A92562B0F84C3", nil, CAN_BE_BUILT, { structureType="ground" })
createObject(31, "WHEAT_SEEDS_2", "Wheat Seeds (step 2)", "7BA2BA8C590D39DF", not CAN_BE_BUILT, { structureType="block" })
createObject(32, "WHEAT_SEEDS_3", "Wheat Seeds (step 3)", "F20A02737F888FF0", not CAN_BE_BUILT, { structureType="block" })
createObject(33, "CRAFTING_TABLE", "Crafting Table", "F95AF4EFEEE7ED28", "50690DEBF9920EEA", CAN_BE_BUILT, { structureType="block" })
createObject(34, "COOKING_TABLE", "Cooking Table", "59B79BAC58346826", "A9F30D0C73F26FC3", CAN_BE_BUILT, { structureType="block" })
createObject(35, "STONEBRICKS_WALL", "Stone Bricks Wall", "8ADBAD3470BDF271", "D94B675726659603", CAN_BE_BUILT, { structureType="wall" })
createObject(36, "STONEBRICKS_WINDOW", "Stone Bricks Window", "5C79FED5ECB2988C", "1C320A5367ED0C60", CAN_BE_BUILT, { structureType="wall" })
createObject(37, "STONEBRICKS_FLOOR", "Stone Bricks Floor", "117258AA93C5A99A", "5F1CC941472413F0", CAN_BE_BUILT, { structureType="floor" })
createObject(38, "STONEBRICKS_STAIRS", "Stone Bricks Stairs", "44E630CD0E3E4EEB", "05ED5D4E1CA9613F", CAN_BE_BUILT, { structureType="block" })
createObject(39, "STONEBRICKS_DOOR", "Stone Bricks Door", "643C2CF33CA51F8C", "2EB9B31CA3EC69A7", CAN_BE_BUILT, { structureType="wall", nlo="BEFFF6583A6C501A" })
createObject(40, "CARROT_SEEDS", "Carrot Seeds", "C1A4AA9C6FE28B6E", "9E40FB62220F7B65", CAN_BE_BUILT, { structureType="block", mustBeBuiltOn=30 })
createObject(41, "CARROT_SEEDS_2", "Carrot Seeds (step 2)", "958AB68F519C22B7", not CAN_BE_BUILT, { structureType="block" })
createObject(42, "CARROT_SEEDS_3", "Carrot Seeds (step 3)", "AE55DAF95CF23E0E", not CAN_BE_BUILT, { structureType="block" })
createObject(43, "CARROT", "Carrot", "6408EF122263758C", "D126BC06CDE848AE", not CAN_BE_BUILT, { structureType="block" })
createObject(44, "CARROT_CAKE", "Carrot Cake", nil, "ABDE0CA429E5ABCB")
createObject(45, "CARROT_CAKE_DOUGH", "Carrot Cake Dough", nil, "30DDBB38EFE77CEB")

createObject(46, "WOODEN_ROOF", "Wood Roof", "2761A08C351F45BE", "21259372F91A9B2C", CAN_BE_BUILT, { structureType="block" })
createObject(47, "STONEBRICKS_ROOF", "Stone Bricks Roof", "EFCF7BEB8474601F", "30579678C9629843", CAN_BE_BUILT, { structureType="block" })

createObject(48, "WOODEN_HALF_WALL", "Wood Half Wall", "B84CE7A6982549BA", "A413535463FA42C9", CAN_BE_BUILT, { structureType="small_wall" })
createObject(49, "STONEBRICKS_HALF_WALL", "Stone Bricks Half Wall", "A41A2492C9BEF70D", "D4A860FCB4EA1BCC", CAN_BE_BUILT, { structureType="small_wall" })
createObject(50, "WOODEN_TRI_WALL", "Wood Triangle Wall", "31D16B93745142FD", "59128C7BC620BB43", CAN_BE_BUILT, { structureType="small_wall" })
createObject(51, "STONEBRICKS_TRI_WALL", "Stone Bricks Triangle Wall", "454F0A6798EB78A2", "DE0403C123E32DDE", CAN_BE_BUILT, { structureType="small_wall" })

createObject(52, "FISH", "Fish", nil, "D0217B0C80A7903E")
createObject(53, "FISHING_ROD", "Fishing Rod", "5B12901D72C18C90", "E241E71578A23273")
createObject(54, "COOKED_FISH", "Cooked Fish", nil, "80D099987281F9E9")

createObject(55, "LANTERN", "Lantern", "81C0362A7379CE60", "C85154B189F4B8F4", CAN_BE_BUILT, { structureType="block" })
createObject(56, "WALLTORCH", "Wall Torch", "C46A3D3062C5A0C9", "39472EF77277F5AE", CAN_BE_BUILT, { structureType="block" })
createObject(57, "IRON_ROCK", "Iron Rock", "CA41BB1CFD9573AC")
createObject(58, "IRON", "Iron", nil, "D759E42007B25621")
createObject(59, "WOODEN_REVTRI_WALL", "Wood Reverse Triangle Wall", "6ADC103424B9D134", "02A043CEBA80ABFB", CAN_BE_BUILT, { structureType="small_wall" })
createObject(60, "STONEBRICKS_REVTRI_WALL", "Stone Bricks Reverse Triangle Wall", "D8750C1C96CCCBEB", "35CAD5A3332A3C31", CAN_BE_BUILT, { structureType="small_wall" })

createObject(61, "PUMPKIN_SEEDS", "Pumpkin Seeds", "6AD9CDB1DFADEC24", "F9F42D39C8BDE302", CAN_BE_BUILT, { structureType="block", mustBeBuiltOn=30 })
createObject(62, "PUMPKIN_SEEDS_2", "Pumpkin Seeds (step 2)", "927247A49F1B691C", not CAN_BE_BUILT, { structureType="block" })
createObject(63, "PUMPKIN_SEEDS_3", "Pumpkin Seeds (step 3)", "09D9C9CDEE0B3F4B", not CAN_BE_BUILT, { structureType="block" })
createObject(64, "PUMPKIN", "Pumpkin", "C1EF362489B3A783", "11B5B4C2A94A0D6B", not CAN_BE_BUILT, { structureType="block" })

createObject(65, "IRON_SWORD", "Iron Sword", "CEC311EF57E9F34F", "8794CFE9EB375C78")
-- createObject(66, "ANVIL", "Anvil", "AB934149453725A9", "A472C0845BD4FF76", CAN_BE_BUILT)

-- createObject(67, "WOOL", "Wool", nil, "AA5131329027ED3C")

createObject(68, "PLANT", "Plant", "C9321A7FCAEF530B", "2ACA51B23F61C6ED", CAN_BE_BUILT)

createObject(69, "ARMCHAIR", "Armchair", "782A1074497CD267", "7CB4DA82D2B5409C", CAN_BE_BUILT, { structureType="block", nlo="40A8E4CCDBD73839" })
createObject(70, "DRESSER", "Dresser", "3F349D26F69E656F", "AD724A553E6FF743", CAN_BE_BUILT, { structureType="block" })
createObject(71, "WOODEN_FENCE", "Wooden Fence", "A3D4F93755CB8850", "655FC066F28F52D4", CAN_BE_BUILT, { structureType="small_wall" })

createObject(72, "SPRUCE_SAPLING", "Spruce Sapling", "5DC7E74A2BCF0F3F", "A306883833CCACB7", CAN_BE_BUILT, { structureType="ground" })
createObject(73, "SPRUCE_TREE", "Spruce Tree", "F41065F71794AB67",  nil, not CAN_BE_BUILT, { structureType="block" })
createObject(74, "BIRCH_SAPLING", "Birch Sapling", "5D74906B65570FED", "13223FCABB717282", CAN_BE_BUILT, { structureType="ground" })
createObject(75, "BIRCH_TREE", "Birch Tree", "DC45C7146E9FACC3", nil, not CAN_BE_BUILT, { structureType="block" })

createObject(76, "WARDROBE", "Wardrobe", "7F93670E64FBF97B", "D8DDCE89D92FA970", CAN_BE_BUILT, { structureType="block" })
createObject(77, "BOOKSHELF", "Bookshelf", "EF1A5C54D612BBD3",  "8CA33A68DB2988D1", CAN_BE_BUILT, { structureType="block" })
createObject(78, "NIGHTSTAND", "Nightstand", "28C34EFC02AC0524", "6BDF7CE41E03AB03", CAN_BE_BUILT, { structureType="block" })
createObject(79, "DINING_TABLE", "Dining Table", "F4A85DC684E7A362", "135BFE21EB3FA94B", CAN_BE_BUILT, { structureType="block" })
createObject(80, "COFFEE_TABLE", "Coffee Table", "04A06C136AF897C3", "6F49191FD931F4E0", CAN_BE_BUILT, { structureType="block" })


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

local CRAFTING_TABLE = 0
local COOKING_TABLE = 1
local ANVIL = 2

local CRAFTS_LIST = {
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
	},
    -- {
	-- 	{ "IRON", 20, "WOOD_LOG", 15 },
    --     { "ANVIL", 1 },
    --     CRAFTING_TABLE
	-- },
    -- {
	-- 	{ "IRON", 30, "WOOD_LOG", 5 },
    --     { "IRON_SWORD", 1 },
    --     ANVIL
	-- }
}

local SELL = 0
local BUY = 1
local BUYSELL_LIST = {
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
    if not itemMuid then return end
    if itemMuid == objects[objectsId["BASIC_HOE"]].itemMuid then
        return objectsId["SOIL"]
    end
    for k,v in pairs(objects) do
        if v.itemMuid == itemMuid then
            return k
        end
    end
end
API.GetTypeFromTemplate = function(muid)
    if not muid then return end
    for key,obj in pairs(objects) do
        if obj.templateMuid == muid then
            return key
        end
    end
end
API.BuySellList = function(id) return BUYSELL_LIST[id] end
API.GetCrafts = function() return CRAFTS_LIST end

return API