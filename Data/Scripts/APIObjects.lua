local objects = {}
local objectsId = {}

local CAN_BE_BUILT = true

function createObject(id, idName, name, templateMuid, canbeBuilt, metadata)
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
        type=metadata and metadata.structureType,
        templateMuid=templateMuid,
        canBeBuilt=canbeBuilt == CAN_BE_BUILT,
        metadata=metadata or {},
        tostring=function(obj)
            return tostring(obj.id).." "..obj.idName.." "..obj.name
        end
    }
    return objects[id]
end

createObject(1, "BASIC_AXE", "Basic Axe", "2B7B3C64C0ED0918", not CAN_BE_BUILT, { structureType="tool" })
createObject(2, "BASIC_HOE", "Basic Hoe", "7EEB7CAAF782C5B8", not CAN_BE_BUILT, { structureType="tool" })
createObject(3, "BERRY", "Berry", "88D3C25AE4312B10", not CAN_BE_BUILT, { structureType="item" })
createObject(4, "BERRY_PIE", "Berry Pie", "CFD716E1015C49A4", not CAN_BE_BUILT, { structureType="item" })
createObject(5, "BERRY_PIE_DOUGH", "Berry Pie Dough", "110D2747ABD3EFDC", not CAN_BE_BUILT, { structureType="item" })
createObject(6, "BREAD", "Bread", "A70B66FD86441F0A", not CAN_BE_BUILT, { structureType="item" })
createObject(7, "DOUGH", "Dough", "0A29B6599C7FFFC7", not CAN_BE_BUILT, { structureType="item" })
createObject(8, "WOODEN_FLOOR", "Wooden Floor", "F440BFFDAF9433E4", CAN_BE_BUILT, { structureType="floor" })
createObject(9, "SAPLING", "Sapling", "27313876BD39650C", CAN_BE_BUILT, { structureType="ground", thumbnailType="bigObject" })
createObject(10, "WOODEN_STAIRS", "Wooden Stairs", "D0A095484BDEF61C", CAN_BE_BUILT, { structureType="block", thumbnailType="mediumObject" })
createObject(11, "WOODEN_WALL", "Wooden Wall", "CDE4BDBDD300E1ED", CAN_BE_BUILT, { structureType="wall" })
createObject(12, "WHEAT", "Wheat", "0CF04473DA51CDA5", not CAN_BE_BUILT, { structureType="block", item="25BE03B0B3F60550" })
createObject(13, "WHEAT_SEEDS", "Wheat Seeds", "42793220AEB392CF", CAN_BE_BUILT, { structureType="block", mustBeBuiltOn=30, thumbnailType="item", item="831352FDF93F9924" })
createObject(14, "WOOD_LOG", "Wood Log", "CDC6C6F3AA320EF1", not CAN_BE_BUILT, { structureType="item" })
createObject(15, "BERRY_SPROUT", "Berry Sprout", "36A9E82F5F5F4C9D", CAN_BE_BUILT, { structureType="ground", thumbnailType="mediumObject" })
createObject(16, "BIG_WOODEN_WINDOW", "Big Wooden Window", "B1BE272F2A3FD51A", CAN_BE_BUILT, { structureType="wall" })
createObject(17, "SMALL_WOODEN_WINDOW", "Small Wooden Window", "DC823597FE997BE1", CAN_BE_BUILT, { structureType="wall" })
createObject(18, "CHAIR", "Chair", "B6749DB861E6DDED", CAN_BE_BUILT, { structureType="block", nlo="40A8E4CCDBD73839", thumbnailType="mediumObject" })
createObject(19, "WOODEN_DOOR", "Wooden Door", "0C546224C6536C85", CAN_BE_BUILT, { structureType="wall", nlo="63C063D27EADBC84" })
createObject(20, "TABLE", "Table", "76C9DD010BBBBDD3", CAN_BE_BUILT, { structureType="block", thumbnailType="bigObject" })
createObject(21, "BASIC_PICKAXE", "Basic Pickaxe", "9B0E9CDD3D19EB9E", not CAN_BE_BUILT, { structureType="tool" })
createObject(22, "FURNACE", "Furnace", "58C8D2760D98333B", CAN_BE_BUILT, { structureType="block", thumbnailType="bigObject" })
createObject(23, "STONE", "Stone", "73D15590F7AF28A0", not CAN_BE_BUILT, { thumbnailType="item" })
createObject(24, "COAL", "Coal", "93B43A4C3D2AF9E2", not CAN_BE_BUILT, { thumbnailType="item" })
createObject(25, "TREE", "Tree", "2C9DA5AC47D87B71", not CAN_BE_BUILT, { structureType="block" })
createObject(26, "BERRY_BUSH_EMPTY", "Berry Bush (empty)", "E90DF6F7DCB80F51", not CAN_BE_BUILT, { structureType="block" })
createObject(27, "BERRY_BUSH_FULL", "Berry Bush (full)", "37506694514741E4", not CAN_BE_BUILT, { structureType="block" })
createObject(28, "ROCK", "Rock", "AEF89E3EB4EC6DA7")
createObject(29, "COAL_ROCK", "Coal Rock", "68C52F65CF8115BD")
createObject(30, "SOIL", "Soil", "1B5A92562B0F84C3", CAN_BE_BUILT, { structureType="ground" })
createObject(31, "WHEAT_SEEDS_2", "Wheat Seeds (step 2)", "7BA2BA8C590D39DF", not CAN_BE_BUILT, { structureType="block" })
createObject(32, "WHEAT_SEEDS_3", "Wheat Seeds (step 3)", "F20A02737F888FF0", not CAN_BE_BUILT, { structureType="block" })
createObject(33, "CRAFTING_TABLE", "Crafting Table", "F95AF4EFEEE7ED28", CAN_BE_BUILT, { structureType="block", thumbnailType="bigObject" })
createObject(34, "COOKING_TABLE", "Cooking Table", "59B79BAC58346826", CAN_BE_BUILT, { structureType="block", thumbnailType="bigObject" })
createObject(35, "STONEBRICKS_WALL", "Stone Bricks Wall", "8ADBAD3470BDF271", CAN_BE_BUILT, { structureType="wall" })
createObject(36, "STONEBRICKS_WINDOW", "Stone Bricks Window", "5C79FED5ECB2988C", CAN_BE_BUILT, { structureType="wall" })
createObject(37, "STONEBRICKS_FLOOR", "Stone Bricks Floor", "117258AA93C5A99A", CAN_BE_BUILT, { structureType="floor" })
createObject(38, "STONEBRICKS_STAIRS", "Stone Bricks Stairs", "44E630CD0E3E4EEB", CAN_BE_BUILT, { structureType="block", thumbnailType="mediumObject" })
createObject(39, "STONEBRICKS_DOOR", "Stone Bricks Door", "643C2CF33CA51F8C", CAN_BE_BUILT, { structureType="wall", nlo="BEFFF6583A6C501A" })
createObject(40, "CARROT_SEEDS", "Carrot Seeds", "C1A4AA9C6FE28B6E", CAN_BE_BUILT, { structureType="block", mustBeBuiltOn=30, item="D663333AEF980A43" })
createObject(41, "CARROT_SEEDS_2", "Carrot Seeds (step 2)", "958AB68F519C22B7", not CAN_BE_BUILT, { structureType="block" })
createObject(42, "CARROT_SEEDS_3", "Carrot Seeds (step 3)", "AE55DAF95CF23E0E", not CAN_BE_BUILT, { structureType="block" })
createObject(43, "CARROT", "Carrot", "6408EF122263758C", not CAN_BE_BUILT, { structureType="block", item="0B62CFD669A52D79" })
createObject(44, "CARROT_CAKE", "Carrot Cake", "1C56C4FF03BC00BC", not CAN_BE_BUILT, { thumbnailType="item" })
createObject(45, "CARROT_CAKE_DOUGH", "Carrot Cake Dough", "6D9C5C0B5E6ABA04", not CAN_BE_BUILT, { thumbnailType="item" })

createObject(46, "WOODEN_ROOF", "Wood Roof", "2761A08C351F45BE", CAN_BE_BUILT, { structureType="block", thumbnailType="roof" })
createObject(47, "STONEBRICKS_ROOF", "Stone Bricks Roof", "EFCF7BEB8474601F", CAN_BE_BUILT, { structureType="block", thumbnailType="roof" })

createObject(48, "WOODEN_HALF_WALL", "Wood Half Wall", "B84CE7A6982549BA", CAN_BE_BUILT, { structureType="small_wall" })
createObject(49, "STONEBRICKS_HALF_WALL", "Stone Bricks Half Wall", "A41A2492C9BEF70D", CAN_BE_BUILT, { structureType="small_wall" })
createObject(50, "WOODEN_TRI_WALL", "Wood Triangle Wall", "31D16B93745142FD", CAN_BE_BUILT, { structureType="small_wall" })
createObject(51, "STONEBRICKS_TRI_WALL", "Stone Bricks Triangle Wall", "454F0A6798EB78A2", CAN_BE_BUILT, { structureType="small_wall" })

createObject(52, "FISH", "Fish", "14B9DBED53DAD9AC", not CAN_BE_BUILT, { structureType="item" })
createObject(53, "FISHING_ROD", "Fishing Rod", "5B12901D72C18C90", not CAN_BE_BUILT, { structureType="tool", thumbnailType="bigTool" })
createObject(54, "COOKED_FISH", "Cooked Fish", "31F13FEE2708E896", not CAN_BE_BUILT, { structureType="item" })

createObject(55, "LANTERN", "Lantern", "81C0362A7379CE60", CAN_BE_BUILT, { structureType="block", thumbnailType="mediumObject" })
createObject(56, "WALLTORCH", "Wall Torch", "C46A3D3062C5A0C9", CAN_BE_BUILT, { structureType="block", thumbnailType="mediumObject" })
createObject(57, "IRON_ROCK", "Iron Rock", "CA41BB1CFD9573AC")
createObject(58, "IRON", "Iron", "C105035D4B20AF80", not CAN_BE_BUILT, { thumbnailType="item" })
createObject(59, "WOODEN_REVTRI_WALL", "Wood Reverse Triangle Wall", "6ADC103424B9D134", CAN_BE_BUILT, { structureType="small_wall" })
createObject(60, "STONEBRICKS_REVTRI_WALL", "Stone Bricks Reverse Triangle Wall", "D8750C1C96CCCBEB", CAN_BE_BUILT, { structureType="small_wall"  })

createObject(61, "PUMPKIN_SEEDS", "Pumpkin Seeds", "6AD9CDB1DFADEC24", CAN_BE_BUILT, { structureType="block", mustBeBuiltOn=30, thumbnailType="item", item="A41709484A71F75E" })
createObject(62, "PUMPKIN_SEEDS_2", "Pumpkin Seeds (step 2)", "927247A49F1B691C", not CAN_BE_BUILT, { structureType="block" })
createObject(63, "PUMPKIN_SEEDS_3", "Pumpkin Seeds (step 3)", "09D9C9CDEE0B3F4B", not CAN_BE_BUILT, { structureType="block" })
createObject(64, "PUMPKIN", "Pumpkin", "C1EF362489B3A783", not CAN_BE_BUILT, { structureType="block", item="E18B1073BA6F37A3" })

createObject(65, "IRON_SWORD", "Iron Sword", "CEC311EF57E9F34F", not CAN_BE_BUILT, { structureType="tool", thumbnailType="bigTool" })
-- createObject(66, "ANVIL", "Anvil", "AB934149453725A9", "A472C0845BD4FF76", CAN_BE_BUILT)

-- createObject(67, "WOOL", "Wool", nil, "AA5131329027ED3C")

createObject(68, "PLANT", "Plant", "C9321A7FCAEF530B", CAN_BE_BUILT, { thumbnailType="bigObject" })

createObject(69, "ARMCHAIR", "Armchair", "782A1074497CD267", CAN_BE_BUILT, { structureType="block", nlo="40A8E4CCDBD73839", thumbnailType="mediumObject"  })
createObject(70, "DRESSER", "Dresser", "3F349D26F69E656F", CAN_BE_BUILT, { structureType="block", thumbnailType="mediumObject"  })
createObject(71, "WOODEN_FENCE", "Wooden Fence", "A3D4F93755CB8850", CAN_BE_BUILT, { structureType="small_wall"  })

createObject(72, "SPRUCE_SAPLING", "Spruce Sapling", "5DC7E74A2BCF0F3F", CAN_BE_BUILT, { structureType="ground", thumbnailType="bigObject"  })
createObject(73, "SPRUCE_TREE", "Spruce Tree", "F41065F71794AB67", not CAN_BE_BUILT, { structureType="block" })
createObject(74, "BIRCH_SAPLING", "Birch Sapling", "5D74906B65570FED", CAN_BE_BUILT, { structureType="ground", thumbnailType="bigObject"  })
createObject(75, "BIRCH_TREE", "Birch Tree", "DC45C7146E9FACC3", not CAN_BE_BUILT, { structureType="block" })

createObject(76, "WARDROBE", "Wardrobe", "7F93670E64FBF97B", CAN_BE_BUILT, { structureType="block", thumbnailType="bigObject" })
createObject(77, "BOOKSHELF", "Bookshelf", "EF1A5C54D612BBD3", CAN_BE_BUILT, { structureType="block", thumbnailType="bigObject" })
createObject(78, "NIGHTSTAND", "Nightstand", "28C34EFC02AC0524", CAN_BE_BUILT, { structureType="block", thumbnailType="mediumObject" })
createObject(79, "DINING_TABLE", "Dining Table", "F4A85DC684E7A362", CAN_BE_BUILT, { structureType="block", thumbnailType="mediumObject" })
createObject(80, "COFFEE_TABLE", "Coffee Table", "04A06C136AF897C3", CAN_BE_BUILT, { structureType="block", thumbnailType="mediumObject" })

for _,item in pairs(objects) do
    for _,item2 in pairs(objects) do
        if item ~= item2 then
            if item.templateMuid and item.templateMuid == item2.templateMuid then
                print("Error: two objects have the same templateMuid ("..item.templateMuid..").")
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
    },
    { -- 5 for reseller
        { BUY, "BIRCH_SAPLING", 200 },
        { BUY, "SPRUCE_SAPLING", 500 },
        { BUY, "PLANT", 150 },
        { BUY, "ARMCHAIR", 500 },
        { BUY, "NIGHTSTAND", 500 },
        { BUY, "DRESSER", 750 },
        { BUY, "DINING_TABLE", 750 },
        { BUY, "WARDROBE", 750 },
        { BUY, "BOOKSHELF", 1000 },
        { BUY, "COFFEE_TABLE", 1500 }
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
API.QueryObjectByName = function(name)
    for _,o in pairs(objects) do 
        if o.name == name then
            return o
        end
    end
end
API.FindStructure = function(idName)
    if not idName then return end
    if idName == "BASIC_HOE" then
        return objectsId["SOIL"]
    end
    local structure = API.QueryObject(idName)
    if structure.canBeBuilt then return structure.id end
end
API.FindTool = function(idName)
    if not idName then return end
    local tool = API.QueryObject(idName)
    if tool and tool.type == "tool" then return tool.templateMuid end
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