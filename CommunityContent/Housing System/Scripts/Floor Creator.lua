Task.Wait() -- Wait for property to be set

local ROOT = script:GetCustomProperty("Root"):WaitForObject()
local OBJECTS = script:GetCustomProperty("Objects"):WaitForObject()

local CLASS_HOUSE_OBJECT = require(script:GetCustomProperty("ClassHouseObject"))

local HOUSE_ID = ROOT:GetCustomProperty('houseId')
local FLOOR_NUMBER = ROOT:GetCustomProperty('floorNumber')

local HOUSE = _G.Housing_Data.getHouse(HOUSE_ID)
local FLOOR = HOUSE:GetFloor(FLOOR_NUMBER)

function clearObjects()
    FLOOR:ClearObjects()
    for _,child in pairs(OBJECTS:GetChildren()) do
        child:Destroy()
    end
end

function createObject(encodedObject, isHide)
    local houseObject = CLASS_HOUSE_OBJECT.Decode(encodedObject, FLOOR, {hide = isHide})
    houseObject:CreateMesh()
    return houseObject
end

function decodeData(dataString, hideUniqId)
    clearObjects()
    if dataString == '' then return end
    local encodedObjects = {CoreString.Split(dataString, '|')}
    for index,encodedObject in ipairs(encodedObjects) do
        local isHide = (hideUniqId == index)
        local createdObject = createObject(encodedObject, isHide)
        createdObject.uniqId = index
        FLOOR:AddObject(createdObject)
    end
end

function onPropertyChange(owner, property)
    if property == 'data' or property == 'refresh' then
        refresh()
    end
end

function refresh()
    decodeData(ROOT:GetCustomProperty('data'))
end

function hideObject(uniqId)
    decodeData(ROOT:GetCustomProperty('data'), uniqId)
end

function askHideObject(houseId, floorNumber, uniqId)
    if HOUSE.id == HOUSE_ID and floorNumber == FLOOR_NUMBER then
        hideObject(uniqId)
    end
end

function askRefreshObjects(houseId, floorNumber, uniqId)
    if HOUSE.id == HOUSE_ID and floorNumber == FLOOR_NUMBER then
        refresh()
    end
end

ROOT.customPropertyChangedEvent:Connect(onPropertyChange)
refresh()

Events.Connect('housing-system.hide-object', askHideObject)
Events.Connect('housing-system.refresh-objects', askRefreshObjects)