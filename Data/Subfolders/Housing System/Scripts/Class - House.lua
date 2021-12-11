local CLASS_FLOOR = require(script:GetCustomProperty("ClassFloor"))

local House = {}
House.__index = House
House.id = nil
House.data = nil
House.folder = nil
House.floors = nil
House.roof = nil

function House:New(houseData)
	local self = setmetatable({}, House)
    self.id = houseData.id
    self.data = houseData
    self.folder = self.data.houseObject:WaitForObject()

    self.roof =  self.folder:FindChildByName('Roof')

    local floorsFolder = self.folder:FindChildByName('Floors')

    self.floors = {}
    local floorsTable = {}
    for number,floor in ipairs(floorsFolder:GetChildren()) do
        table.insert(floorsTable, CLASS_FLOOR.Floor:New(self, number, floor))
    end
    self.floors = floorsTable

    return self
end

function House:Activate()
    self.roof.visibility = Visibility.FORCE_OFF
    self.roof.collision = Collision.FORCE_OFF
    self.roof.cameraCollision = Collision.FORCE_OFF
end

function House:Deactivate()
    self.roof.visibility = Visibility.INHERIT
    self.roof.collision = Collision.INHERIT
    self.roof.cameraCollision = Collision.INHERIT
end

function House:GetFloor(floorNumber)
    return self.floors[floorNumber]
end

function House:SetData(encode)
    for floor,encodedData in pairs(encode) do
        local floor = self:GetFloor(floor)
        if floor ~= nil then
            floor:SetData(encodedData)
        end
    end
end

function House:Encode()
    local encodedHouse = {}
    for floorNumber,floor in pairs(self.floors) do
        encodedHouse[floorNumber] = floor:GetCurrentEncode()
    end

    return encodedHouse
end

local API = {}

API.House = House

return API