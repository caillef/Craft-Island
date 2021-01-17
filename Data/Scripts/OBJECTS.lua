local objects = {}
local objectsId = {}

function createObject(id, idName, name, templateMuid, itemMuid, previewMuid, builtConditions)
    if objectsId[idName] ~= nil then
        print("ERROR: two objects have the same idName ("..idName..").")
        return nil
    end
    objectsId[idName] = id
    if objects[id] ~= nil then
        print("ERROR: two objects have the same id ("..id..").")
        return
    end
    objects[id] = {
        id=id,
        idName=idName,
        name=name,
        templateMuid=templateMuid,
        itemMuid=itemMuid,
        previewMuid=previewMuid,
        canBeBuilt=previewMuid ~= nil,
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
createObject(8, "WOODEN_FLOOR", "Wooden Floor", "F440BFFDAF9433E4", "60BA6C27C1F3EA75", "BF60947C4D8E547C")
createObject(9, "SAPLING", "Sapling", "27313876BD39650C", "D48610A224F25A9E", "08884EC5CAA3F25C")
createObject(10, "WOODEN_STAIRS", "Wooden Stairs", "D0A095484BDEF61C", "D4469C4FF621DC7D", "F7888B9462A8A926")
createObject(11, "WOODEN_WALL", "Wooden Wall", "CDE4BDBDD300E1ED", "178FF62EF3246BE7", "D785C551FADA97B2")
createObject(12, "WHEAT", "Wheat", "0CF04473DA51CDA5", "828D307143518252")
createObject(13, "WHEAT_SEEDS", "Wheat Seeds", "42793220AEB392CF", "A19DF3F7881592F3", "2D75F4CC5455EDD6", { mustBeBuiltOn=30 })
createObject(14, "WOOD_LOG", "Wood Log", nil, "4153F13DBF7563A6")
createObject(15, "BERRY_SPROUT", "Berry Sprout", "36A9E82F5F5F4C9D", "1FDE35B1D2A8901F", "6C7CCF845D71B30D")
createObject(16, "BIG_WOODEN_WINDOW", "Big Wooden Window", "B1BE272F2A3FD51A", "8C5509CCAC1C750E", "571716603F328AA9")
createObject(17, "SMALL_WOODEN_WINDOW", "Small Wooden Window", "DC823597FE997BE1", "1F4C8911AF77BAFA", "0336E0F4603BDBF1")
createObject(18, "CHAIR", "Chair", "B6749DB861E6DDED", "D1F4BC513D92F88A", "82A86A138A4BA145")
createObject(19, "WOODEN_DOOR", "Wooden Door", "0C546224C6536C85", "2B56C1E3C138F542", "6E060D37954CD7F0")
createObject(20, "TABLE", "Table", "76C9DD010BBBBDD3", "BC4C40A42D63733D1", "05664EF0710D2EB4")
createObject(21, "BASIC_PICKAXE", "Basic Pickaxe", "9B0E9CDD3D19EB9E", "AECB1226211DC37C")
createObject(22, "FURNACE", "Furnace", "58C8D2760D98333B", "0B66793FF08195AC", "E5F4BD6594A353C6")
createObject(23, "STONE", "Stone", nil, "51D4970917797698")
createObject(24, "COAL", "Coal", nil, "D1EC52C0B5D654EA")
createObject(25, "TREE", "Tree", "2C9DA5AC47D87B71")
createObject(26, "BERRY_BUSH_EMPTY", "Berry Bush (empty)", "E90DF6F7DCB80F51")
createObject(27, "BERRY_BUSH_FULL", "Berry Bush (full)", "37506694514741E4")
createObject(28, "ROCK", "Rock", "AEF89E3EB4EC6DA7")
createObject(29, "COAL_ROCK", "Coal Rock", "68C52F65CF8115BD")
createObject(30, "SOIL", "Soil", "1B5A92562B0F84C3", nil, "EFFBAD6AD3F97DC0")
createObject(31, "WHEAT_SEEDS_2", "Wheat Seeds (step 2)", "7BA2BA8C590D39DF")
createObject(32, "WHEAT_SEEDS_3", "Wheat Seeds (step 3)", "F20A02737F888FF0")

for _,item in pairs(objects) do
    for _,item2 in pairs(objects) do
        if item ~= item2 then
            if item.templateMuid and item.templateMuid == item2.templateMuid then
                print("ERROR: two objects have the same templateMuid ("..item.templateMuid..").")
            end
            if item.itemMuid and item.itemMuid == item2.itemMuid then
                print("ERROR: two objects have the same itemMuid ("..item.itemMuid..").")
            end
            if item.previewMuid and item.previewMuid == item2.previewMuid then
                print("ERROR: two objects have the same previewMuid ("..item.previewMuid..").")
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