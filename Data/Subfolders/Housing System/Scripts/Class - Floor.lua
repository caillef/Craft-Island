local EMPTY_FOLDER = script:GetCustomProperty("HousingEmptyFolder")
local GRID_TEMPLATE = script:GetCustomProperty("HousingGridTileClient")
local FORBIDDEN_GRID_TEMPLATE = script:GetCustomProperty("HousingForbiddenGridTileClient")
local CLASS_HOUSE_OBJECT = require(script:GetCustomProperty("ClassHouseObject"))
local API_POSITION = require(script:GetCustomProperty("API_Position"))
local TRIGGER = script:GetCustomProperty("HousingTrigger")

local TILE_SIZE = 100

local Floor = {}
Floor.__index = Floor
Floor.number = nil
Floor.house = nil
Floor.folder = nil
Floor.floorFolder = nil
Floor.tempFolder = nil -- permet d'y assigner des objet temporaire afin de les supprimer plus rapidement
Floor.static = nil
Floor.gridFolder = nil
Floor.forbiddenFloorGrid = nil
Floor.wall = nil
Floor.eventNewChild = nil
Floor.objects = nil
Floor.origin = nil
Floor.rotation = nil
Floor.forbiddenFloor = nil
Floor.forbiddenFloorTriggerFolder = nil
Floor.forbiddenFloorTrigger = nil

function Floor:New(house, number, floorFolder)
	local self = setmetatable({}, Floor)
    self.number = number
    self.house = house
    self.folder = floorFolder
    self.floorFolder = floorFolder:FindChildByName('Floor')
    self.wall = floorFolder:FindChildByName('Walls')
    self.forbiddenFloor = floorFolder:FindChildByName('Forbidden Floor'):GetChildren()

    local originLocalPosition = Vector3.ZERO
    local firstFloor = self.floorFolder:GetChildren()[1]
    if firstFloor:GetScale().x % 2 == 1 then
        originLocalPosition.x = originLocalPosition.x - (TILE_SIZE / 2)
    end
    if firstFloor:GetScale().y % 2 == 1 then
        originLocalPosition.y = originLocalPosition.y - (TILE_SIZE / 2)
    end
    local originWorldPosition = API_POSITION.getWorldPosition(originLocalPosition, self.floorFolder:GetWorldPosition(), self.floorFolder:GetWorldRotation())

    self.origin = originWorldPosition
    self.rotation = self.floorFolder:GetWorldRotation()

    self.tempFolder = World.SpawnAsset(EMPTY_FOLDER, {parent = self.folder})
    self.tempFolder:SetWorldPosition(originWorldPosition)
    self.tempFolder.name = 'Temp'

    self.objects = {}

    -- On vérifie si le dossier Data est déjà créer
    local dataFolder = floorFolder:FindChildByName('Data')
    if dataFolder ~= nil then
        self.static = dataFolder
    else
        self.eventNewChild = floorFolder.childAddedEvent:Connect(function(parent, child)
            if child.isNetworked then
                self.static = child
                self.eventNewChild:Disconnect()

                -- Pour le preview single player, les objet ne sont pas créer côté client, car le static script n'est éxécuté que côté serveur
                -- On va donc créer une réplication des données
                if Environment.IsSinglePlayerPreview() and Environment.IsClient() then
                    child.customPropertyChangedEvent:Connect(function() self:ReplicateDataForClient() end)
                    self:ReplicateDataForClient()
                end
            end
        end)
    end

    self:CreateForbiddenFloor()
    return self
end

function Floor:ReplicateDataForClient()
    local encodedData = self.static:GetCustomProperty('data')
    self:ClearObjects()
    if encodedData == '' then return end
    local encodedObjects = {CoreString.Split(encodedData, '|')}
    for index,encodedObject in ipairs(encodedObjects) do
        local houseObject = CLASS_HOUSE_OBJECT.Decode(encodedObject, self)
        houseObject.uniqId = index
        self:AddObject(houseObject)
    end
end

function Floor:ClearObjects()
    self.objects = {}
end

function Floor:CreateForbiddenFloor()
    local folderTrigger = World.SpawnAsset(EMPTY_FOLDER, {parent = self.folder, name = "Forbidden Floor Triggers"})
    local folderGrid = World.SpawnAsset(EMPTY_FOLDER, {parent = self.folder, name = "Forbidden Floor Grid"})
    self.forbiddenFloorTriggerFolder = folderTrigger
    self.forbiddenFloorGrid = folderGrid
    self.forbiddenFloorGrid.visibility = Visibility.FORCE_OFF
    self.forbiddenFloorGrid.collision = Collision.FORCE_OFF
    self.forbiddenFloorGrid.cameraCollision = Collision.FORCE_OFF

    local triggers = {}
    local grids = {}
    for _,forbidden in ipairs(self.forbiddenFloor) do
        local scale = forbidden:GetScale()
        scale.z = 2
        local forbidenTrigger = World.SpawnAsset(TRIGGER, {parent = folderTrigger, scale = scale})
        forbidenTrigger:SetWorldPosition(forbidden:GetWorldPosition() + Vector3.UP * 100)
        table.insert(triggers, forbidenTrigger)

        local forbiddenGrid = World.SpawnAsset(FORBIDDEN_GRID_TEMPLATE, {parent = folderGrid, scale = scale})
        forbiddenGrid:SetWorldPosition(forbidden:GetWorldPosition() + Vector3.UP * 0.2)
        table.insert(grids, forbiddenGrid)
    end
    self.forbiddenFloorTrigger = triggers
end

function Floor:GetObjectByUniqId(uniqId)
    return self.objects[uniqId]
end

function Floor:GetWallId(wallMesh)
    for index, wall in ipairs(self.wall:GetChildren()) do
        if wall.id == wallMesh.id then
            return index
        end
    end
    return nil
end

function Floor:GetHouseObjectFromMesh(mesh)
    if mesh == nil then return nil end
    local objectsFolder = self.static:GetCustomProperty('Objects'):WaitForObject()
    for index,meshStatic in ipairs(objectsFolder:GetChildren()) do
        if meshStatic.id == mesh.id then
            return self:GetObjectByUniqId(index)
        end
    end

    return nil
end

function Floor:AddObject(object)
    if object.uniqId == nil then return end
    self.objects[object.uniqId] = object
end

function Floor:CreateGridFromFloor(floorMesh)
    local gridMesh = World.SpawnAsset(GRID_TEMPLATE, {parent = self.gridFolder, scale = floorMesh:GetScale()})
    for _,materialSlot in pairs(gridMesh:GetMaterialSlots()) do
        materialSlot:SetUVTiling(Vector2.New(gridMesh:GetScale()))
    end

    return gridMesh
end

function Floor:CreateGrid()
    if self.gridFolder ~= nil then return end
    self.gridFolder = World.SpawnAsset(EMPTY_FOLDER, {parent = self.folder, name = 'Grid Folder'})
    for _,child in pairs(self.floorFolder:GetChildren()) do
        local gridMesh = self:CreateGridFromFloor(child)
        local worldPositionFloor = child:GetWorldPosition()
        worldPositionFloor.z = worldPositionFloor.z + 0.1
        gridMesh:SetWorldPosition(worldPositionFloor)
    end

    self.gridFolder.cameraCollision = Collision.FORCE_OFF
    self.gridFolder.visibility = Visibility.FORCE_OFF
end

function Floor:Encode(ignoreUniqId, replacementObject)
    local encodedFloor = ''
    local trueIndex = 0
    local attachedObject = {}
    for index,object in ipairs(self.objects) do
        if replacementObject == nil and ignoreUniqId == index  then
            object.uniqId = -1 -- on set a "-1", ça permet de vérifier qu'il est supprimer
        elseif replacementObject ~= nil and ignoreUniqId == index and replacementObject.parentObject ~= nil then
            table.insert(attachedObject, { oldId = index, object = replacementObject})
        elseif object.parentObject ~= nil then
            table.insert(attachedObject, { oldId = index, object = object})
        else
            trueIndex = trueIndex + 1
            object.uniqId = trueIndex
            if trueIndex > 1 then
                encodedFloor = encodedFloor .. '|'
            end
            local currentObjectEncoded = object:Encode()
            if ignoreUniqId == index and replacementObject ~= nil then
                currentObjectEncoded = replacementObject:Encode()
            end
            encodedFloor = encodedFloor .. currentObjectEncoded
        end
    end

    -- On s'occupe ensuite des objet attaché
    for index,object in ipairs(attachedObject) do
        if object.object.parentObject.uniqId == -1 and replacementObject == nil then
            -- On ignore, ça fait partie des objet à supprimer
        else
            trueIndex = trueIndex + 1
            object.object.uniqId = trueIndex
            
            local currentObjectEncoded = object.object:Encode()
            if ignoreUniqId == object.oldId and replacementObject ~= nil then
                currentObjectEncoded = replacementObject:Encode()
            end
            encodedFloor = encodedFloor .. '|' .. currentObjectEncoded
        end
        
    end
    return encodedFloor
end

function Floor:SetData(newEncodedData)
    local oldEncode = self:GetCurrentEncode()
    self.static:SetCustomProperty('data', newEncodedData)
    if oldEncode == newEncodedData then
        self:RefreshData()
    end
end

function Floor:RefreshData()
    local refreshValue = self.static:GetCustomProperty('refresh')
    self.static:SetCustomProperty('refresh', not refreshValue)
end

function Floor:GetCurrentEncode()
    while self.static == nil do
        Task.Wait(0.1)
    end
    return self.static:GetCustomProperty('data')
end

function Floor:Activate()
    self:CreateGrid()
    self.gridFolder.visibility = Visibility.INHERIT
    self.forbiddenFloorGrid.visibility = Visibility.INHERIT
end

function Floor:Deactivate()
    self.gridFolder.visibility = Visibility.FORCE_OFF
    self.forbiddenFloorGrid.visibility = Visibility.FORCE_OFF
end

function Floor:Clean()
    self:Deactivate()
end

function Floor:CleanTempFolder()
    for _,child in pairs(Floor.tempFolder:GetChildren()) do
        child:Destroy()
    end
end

local API = {}

API.Floor = Floor

return API

