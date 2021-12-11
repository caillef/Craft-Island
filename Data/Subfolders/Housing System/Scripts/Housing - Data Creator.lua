local HOUSE_DATA_TEMPLATE = script:GetCustomProperty("HouseContentData")

while _G.Housing_Data == nil do Task.Wait(0.1) end

for _,house in pairs(_G.Housing_Data.getAllHouses()) do
    for _,floor in pairs(house.floors) do
        local dataFolder = World.SpawnAsset(HOUSE_DATA_TEMPLATE, {parent = floor.folder, position = floor.tempFolder:GetPosition()})
        dataFolder:SetCustomProperty('houseId', house.id)
        dataFolder:SetCustomProperty('floorNumber', floor.number)
        dataFolder.name = 'Data'
    end
end