local ROOT = script:GetCustomProperty("Root"):WaitForObject()
local CLASS_HOUSE_OBJECT = require(script:GetCustomProperty("ClassHouseObject"))

local EVENT_ACTIVATE = ROOT:GetCustomProperty("activateEvent")
local EVENT_CLOSE = ROOT:GetCustomProperty("closeEvent")
local EVENT_PLAYER_CLOSE = ROOT:GetCustomProperty("playerCloseEvent")

local playersHousing = {}

--[[
    Get the house
        houseId : the id of the house
]]--
function getHouse(houseId)
    local house = _G.Housing_Data.getHouse(houseId)
    if house == nil then 
        warn('House ID "' .. houseId .. '" doesn\'t exist')
        return nil
    end
    return house
end

--[[
    Get the floor of a house
        houseId : the id of the house
        floorId : The floor number
]]--
function getHouseFloor(houseId, floorId)
    local house = getHouse(houseId)
    if house == nil then return nil end
    local floor = house:GetFloor(floorId)
    if floor == nil then
        warn('The house ' .. houseId .. ' doesn\'t have a floor number ' .. floorNumber)
        return nil
    end
    return floor
end

--[[
    Add an object to the house
        player : the player who add the object
        encodedObject : the encoded data of the object
        floorNumber : the floor number
        houseId : the id of the house
]]--
function addObject(player, encodedObject, floorNumber, houseId)
    local floor = getHouseFloor(houseId, floorNumber)

    local object = CLASS_HOUSE_OBJECT.Decode(encodedObject, floor, {temporary = true})
    object:CreateMesh()
    if not object:HasValidPosition() then floor:RefreshData() object:Destroy() return end
    object.uniqId = (#floor.objects) + 1
    floor:AddObject(object)
    local encoded = floor:Encode()
    floor:SetData(encoded)
    object:Destroy()
end

--[[
    Move an object to the house
        player : the player who move the object
        uniqId : the id of the moved object
        encodedObject : the new encoded data of the object
        floorNumber : the floor number
        houseId : the id of the house
]]--
function moveObject(player, uniqId, encodedObject, floorNumber, houseId)
    local floor = getHouseFloor(houseId, floorNumber)
    local movedObject = CLASS_HOUSE_OBJECT.Decode(encodedObject, floor, {temporary = true})

    movedObject.uniqId = uniqId
    movedObject:CreateMesh()
    if not movedObject:HasValidPosition() then floor:RefreshData() movedObject:Destroy() return end

    local encoded = floor:Encode(uniqId, movedObject)
    floor:SetData(encoded)
    movedObject:Destroy()
end

--[[
    Delete an object to the house
        player : the player who delete the object
        uniqId : the id of the deleted object
        floorNumber : the floor number
        houseId : the id of the house
]]--
function deleteObject(player, uniqId, floorNumber, houseId)
    local floor = getHouseFloor(houseId, floorNumber)
    local encoded = floor:Encode(uniqId)
    floor:SetData(encoded)
end

--[[
    Return true if a player currently editing the house
        houseId : the id of the house
]]--
function isHouseEditing(houseId)
    for _,houseEdited in pairs(playersHousing) do
        if houseEdited.id == houseId then return true end
    end
    return false
end

--[[
    When a player ask to open the edition of the house. Broadcast an error if the house is already editing by another player
        player : the player who want activate the housing
        houseId : the id of the house
]]--
function playerAksActivateHousing(player, houseId)
    if isHouseEditing(houseId) then
        Events.BroadcastToPlayer(player, 'housing-system.error', 'house-occupied')
        return
    end
    activateHousing(player, houseId)
end

--[[
    Activate the housing for the player
        player : the player
        houseId : the id of the house
]]--
function activateHousing(player, houseId)
    local editHouse = _G.Housing_Data.getHouse(houseId)
    if editHouse == nil then return end
    Events.BroadcastToPlayer(player, 'housing-system.activate', houseId)
    Events.Broadcast('housing-system.activate', houseId)
    player.isMovementEnabled = false
    playersHousing[player.id] = editHouse
    editHouse:Activate()
end

function onPlayerLeft(player)
    closePlayerHousing(player)
end

--[[
    Close the housing for the player
        player : the player
]]--
function closePlayerHousing(player)
    if playersHousing[player.id] == nil then return end
    Events.BroadcastToPlayer(player, 'housing-system.deactivate', playersHousing[player.id].id)
    Events.Broadcast('housing-system.deactivate', playersHousing[player.id].id)
    Events.Broadcast(EVENT_PLAYER_CLOSE, player, playersHousing[player.id].id)

    playersHousing[player.id]:Deactivate()
    playersHousing[player.id] = nil
    player.isMovementEnabled = true
end

--[[
    Return the encoded data for a house
        houseId : the id of the house
]]--
function getHouseEncode(houseId)
    local house = getHouse(houseId)
    if house == nil then return nil end
    return house:Encode()
end

--[[
    Return the encoded data for a floor
        houseId : the id of the house
        floorNumber : The floor number
]]--
function getHouseFloorEncode(houseId, floorNumber)
    local floor = getHouseFloor(houseId, floorNumber)
    if floor == nil then return nil end
    return floor:GetCurrentEncode()
end

--[[
    Set the encoded data for a house
        houseId : the id of the house
]]--
function setHouseEncode(houseId, encode)
    local house = getHouse(houseId)
    if house == nil then return end
    house:SetData(encode)
end

--[[
    Set the encoded data for a floor
        houseId : the id of the house
        floorNumber : The floor number
]]--
function setHouseFloorEncode(houseId, floorId, encode)
    local floor = getHouseFloor(houseId, floorId)
    if floor == nil then return end
    floor:SetData(encode)
end

Events.ConnectForPlayer('housing-system.add-object', addObject)
Events.ConnectForPlayer('housing-system.move-object', moveObject)
Events.ConnectForPlayer('housing-system.delete-object', deleteObject)

Events.Connect(EVENT_ACTIVATE, playerAksActivateHousing)
Events.Connect(EVENT_CLOSE, closePlayerHousing)

Game.playerLeftEvent:Connect(onPlayerLeft)

local Module = {}

Module.isHouseEditing = isHouseEditing
Module.getHouseEncode = getHouseEncode
Module.getHouseFloorEncode = getHouseFloorEncode
Module.setHouseEncode = setHouseEncode
Module.setHouseFloorEncode = setHouseFloorEncode
Module.activateEvent = EVENT_ACTIVATE

_G.Housing_Manager = Module
