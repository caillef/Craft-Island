local DATA_FOLDER = script:GetCustomProperty("Data"):WaitForObject()
local CLASS_HOUSE = require(script:GetCustomProperty("ClassHouse"))

local HOUSES_FOLDER = DATA_FOLDER:FindChildByName('Houses')
local OBJECTS_FOLDER = DATA_FOLDER:FindChildByName('Objects')

local TILE_SIZE = 100

local HOUSES_BY_ID = {}
local OBJECTS_BY_ID = {}
local OBJECTS_BY_CATEGORIES = {}

for index,child in ipairs(HOUSES_FOLDER:GetChildren()) do
    local data = child:GetCustomProperties()
    HOUSES_BY_ID[data.id] = CLASS_HOUSE.House:New(data)
end

for _,categorie in ipairs(OBJECTS_FOLDER:GetChildren()) do
    local dataCategorie = {
        name = categorie.name,
        objects = {}
    }
    table.insert(OBJECTS_BY_CATEGORIES, dataCategorie)
    for index,child in ipairs(categorie:GetChildren()) do
        local data = child:GetCustomProperties()
        if OBJECTS_BY_ID[data.id] ~= nil then
            warn('"' .. child.name .. '" and "' .. OBJECTS_BY_ID[data.id].name .. '" have the same ID. "' .. child.name .. '" will be ignored')
        else
            data.name = child.name
            if data.onWall then
                if data.size.x > 1 then
                    data.size.x = 1
                    warn(data.name .. ' : The objects with the "onWall" property can\'t have a X size gretter than 1')
                end
            end

            if data.canSupportObject and data.onOtherObject then
                data.onOtherObject = false
                warn(data.name .. ' : Object can\'t have the properties "onOtherObject" and "canSupportObject" at the same time')
            end
            if data.carpet then
                data.onFloor = true -- On force le "onFloor" pour les carpet
            end
            if data.carpet and (data.onWall or data.onOtherObject or data.canSupportObject) then
                warn(data.name .. ' : Carpet objects can\'t have other properties')
                data.onWall = false
                data.onOtherObject = false
                data.canSupportObject = false
            end
            OBJECTS_BY_ID[data.id] = data
            table.insert(dataCategorie.objects, data.id)
        end
    end
end

local Module = {}

Module.getHouse = function(id)
    return HOUSES_BY_ID[id]
end

Module.getObject = function(id)
    return OBJECTS_BY_ID[id]
end

Module.getAllHouses = function()
    return HOUSES_BY_ID
end

Module.getAllObjects = function()
    return OBJECTS_BY_ID
end

Module.getAllCategories = function()
    return OBJECTS_BY_CATEGORIES
end

Module.getCoordFromPosition = function(position, rotationId)
    local coord = Vector2.New(position / TILE_SIZE)

    if rotationId == 2 or rotationId == 3 then
        coord.x = math.ceil(CoreMath.Round(coord.x, 2))
    else
        coord.x = math.floor(CoreMath.Round(coord.x, 2))
    end

    if rotationId == 3 or rotationId == 4 then
        coord.y = math.ceil(CoreMath.Round(coord.y, 2))
    else
        coord.y = math.floor(CoreMath.Round(coord.y, 2))
    end

    return coord
end

_G.Housing_Data = Module