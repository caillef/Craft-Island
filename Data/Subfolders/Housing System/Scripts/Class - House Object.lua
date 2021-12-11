local OBJECT_FLOOR_TILE = script:GetCustomProperty("ObjectFloorTile")
local API_POSITION = require(script:GetCustomProperty("API_Position"))
local TRIGGER = script:GetCustomProperty("Trigger")

local DECAL_TILE_SIZE = 0.55
local DECAL_TILE_SIZE_WALL = 0.7
local TILE_SIZE = 100
local BASE_WALL_OBJECT_POSITION_Z = 200

local HouseObject = {}
HouseObject.__index = HouseObject
HouseObject.id = nil
HouseObject.uniqId = nil -- Id unique de l'objet
HouseObject.rotationId = 1
HouseObject.rotation = Rotation.New(0, 0, 0)
HouseObject.positionCoord = Vector2.New(0, 0)
HouseObject.position = Vector3.New(0, 0, 0)
HouseObject.displayPosition = Vector3.New(0, 0, 0)
HouseObject.mesh = nil
HouseObject.data = nil
HouseObject.floor = nil
HouseObject.floorTile = nil
HouseObject.localCenterPosition = nil
HouseObject.trigger = nil
HouseObject.isTemporary = false -- indique si l'item existe réellement ou non. Dans le cas d'un item que l'on souhaite poser, ou que l'on déplace, ce dernier n'existe pas réellement
HouseObject.isHide = false
HouseObject.wallAttached = nil
HouseObject.parentObject = nil
HouseObject.lastSelectedPosition = nil

function HouseObject:New(id, floor, params)
    if params == nil then
        params = {}
    end
	local self = setmetatable({}, HouseObject)
    self.id = id
    self.data = _G.Housing_Data.getObject(id)
    self.floor = floor
    if params.temporary then
        self.isTemporary = true
    end
    if params.hide then
        self.isHide = true
    end

    self.localCenterPosition = Vector3.New((self.data.size * (TILE_SIZE /2)), 0)

    return self
end

function HouseObject:CreateMesh()
    if self.mesh ~= nil then return end
    local parent = self.floor.tempFolder
    if not self.isTemporary then
        if self.floor.static == nil then return end
        parent = self.floor.static:GetCustomProperty('Objects'):WaitForObject()
    end
    self:CalculPosition()

    local paramsSpawn = {parent = parent, position = self.displayPosition, rotation = self.rotation}

    if self.isHide then
        paramsSpawn.visibility = Visibility.FORCE_OFF
    end

    self.mesh = World.SpawnAsset(self.data.asset, paramsSpawn)
    local floorObject = self.mesh:FindChildByName('Floor')

    self:CreateTrigger()

    if self.isTemporary and Environment.IsClient() then -- dans le cas d'un item temporaire, on créer toujours le floor tile (si côté client)
        self:CreateFloorTile()
    end
    return self.mesh
end

function HouseObject:IsOnWall()
    return self.wallAttached ~= nil
end

function HouseObject:IgnoreCheckX()
    return self:IsOnWall() and (self.rotationId == 1 or self.rotationId == 3)
end

function HouseObject:IgnoreCheckY()
    return self:IsOnWall() and (self.rotationId == 2 or self.rotationId == 4)
end

function HouseObject:CreateTrigger()
    local zScale = 1
    if self:IsOnWall() then
        zScale = 0.5
    end
    self.trigger = World.SpawnAsset(TRIGGER, {parent = self.mesh, collision = Collision.FORCE_ON, position = self.localCenterPosition + Vector3.UP * 50, scale = Vector3.New(self.data.size - 0.3, zScale)})
end

function HouseObject:Hide()
    Events.Broadcast('housing-system.hide-object', self.floor.house.id, self.floor.number, self.uniqId)
    if Environment.IsSinglePlayerPreview() and Environment.IsClient() then
        Events.BroadcastToServer('housing-system.hide-object', self.floor.house.id, self.floor.number, self.uniqId)
    end
end

function HouseObject:Show()
    Events.Broadcast('housing-system.refresh-objects', self.floor.house.id, self.floor.number)
    if Environment.IsSinglePlayerPreview() and Environment.IsClient() then
        Events.BroadcastToServer('housing-system.refresh-objects', self.floor.house.id, self.floor.number)
    end
end

function HouseObject:GetOrCreateMesh()
    if self.mesh == nil then self:CreateMesh() end
    return self.mesh
end

function HouseObject:CreateFloorTile()
    if self.floorTile ~= nil then return end
    self.floorTile = World.SpawnAsset(OBJECT_FLOOR_TILE, {parent = self.mesh, position = self.localCenterPosition})
    self.floorTile:SetScale(Vector3.New(self.data.size * DECAL_TILE_SIZE, 0.1))
end

function HouseObject:SelectPosition(newPosition, freePosition, smooth)
    if freePosition == nil then
        freePosition = false
    end
    if smooth == nil then
        smooth = true
    end
    self.lastSelectedPosition = newPosition
    if freePosition and self.wallAttached == nil then
        local quat = Quaternion.New(self.rotation)
        local forwardVector = quat:GetForwardVector()
        local rightVector = quat:GetRightVector()
        local diffVector = Vector3.New(self.localCenterPosition.x * forwardVector.x + self.localCenterPosition.y * rightVector.x, self.localCenterPosition.x * forwardVector.y + self.localCenterPosition.y * rightVector.y, 0)
        newPosition = newPosition - diffVector
    end

    if freePosition == false then
        local coord = _G.Housing_Data.getCoordFromPosition(Vector2.New(newPosition), self.rotationId)
        newPosition = Vector3.New(coord * TILE_SIZE, 0)
    end

    if self.floorTile ~= nil then
        if self:IsOnWall() then
            self.floorTile:SetPosition(Vector3.New(0, self.data.size.y * TILE_SIZE / 2, 50))
            self.floorTile:SetRotation(Rotation.New(0, -90, 0))
            self.floorTile:SetScale(Vector3.New(self.data.size * DECAL_TILE_SIZE_WALL, 0.1))
        else
            self.floorTile:SetPosition(self.localCenterPosition)
            self.floorTile:SetRotation(Rotation.ZERO)
            self.floorTile:SetScale(Vector3.New(self.data.size * DECAL_TILE_SIZE, 0.1))
        end
    end
    self:ChangePosition(newPosition, smooth)
end

function HouseObject:ChangePosition(newPosition, smooth)
    if newPosition:IsA('Vector2') then
        newPosition = Vector3.New(newPosition, 0)
    end
    self.position = newPosition
    self:RefreshMesh(smooth)
end

function HouseObject:AttachToWall(wallMesh, rotationWall)
    self.wallAttached = wallMesh
    if rotationWall ~= nil then
        rotationWall = CoreMath.Round(rotationWall - self.floor.rotation.z)
        self:ChangeRotation(math.floor((((rotationWall + 180) / 90) + 1) + 2) % 4 + 1)
    end
end

function HouseObject:AttachToObject(houseObject)
    self.parentObject = houseObject
end

function HouseObject:DetachToParent()
    self.parentObject = nil
    self.wallAttached = nil
end

function HouseObject:CalculPosition()
    -- Plus besoin de ça, si on force l'origine des objet au point 0,0,0

    --local rootObjectPosition = self.mesh:GetWorldPosition()
    --local topLeftPosition = self.originFolder:GetWorldPosition()
    --local diffCurrentObjectPosition = rootObjectPosition - topLeftPosition
    --diffCurrentObjectPosition.z = 0
    local zPosition = 0
    if self:IsOnWall() then
        zPosition = BASE_WALL_OBJECT_POSITION_Z + self.data.wallOffsetPositionZ
    end

    self.displayPosition = Vector3.New(self.position)
    self.displayPosition.z = zPosition

    if self.wallAttached ~= nil then
        local quat = Quaternion.New(self.rotation + self.floor.rotation)
        local forwardVector = quat:GetForwardVector()
        local rightVector = quat:GetRightVector()
        local worldPositionObject = API_POSITION.getWorldPosition(self.position, self.floor.origin, self.floor.rotation)
        worldPositionObject.z = self.floor.floorFolder:GetWorldPosition().z + self.displayPosition.z
        local hitResults = World.RaycastAll(worldPositionObject + forwardVector * 500 + Vector3.UP * 50 + rightVector * 50, worldPositionObject - forwardVector * 500 + Vector3.UP * 50 + rightVector * 50)
        for _,result in pairs(hitResults) do
            if result.other.id == self.wallAttached.id then
                local localPosition = API_POSITION.getLocalPosition(result:GetImpactPosition(), self.floor.origin, self.floor.rotation)
                if self.rotationId == 1 or self.rotationId == 3 then
                    self.displayPosition.x = localPosition.x
                    self.position.x = localPosition.x
                else
                    self.displayPosition.y = localPosition.y
                    self.position.y = localPosition.y
                end
                break
            end
        end
    end

    if self.parentObject ~= nil then
        local worldPositionParent = API_POSITION.getWorldPosition(self.parentObject.position, self.floor.origin, self.floor.rotation)
        local worldPosition       = API_POSITION.getWorldPosition(self.position, worldPositionParent, self.floor.rotation + self.parentObject.rotation)
        local localObjectPosition = API_POSITION.getLocalPosition(worldPosition, worldPositionParent, self.floor.rotation)

        local fixVector = self:GetFixVectorFromParentRotation()
        self.displayPosition.x = self.parentObject.position.x + localObjectPosition.x + (fixVector.x * TILE_SIZE)
        self.displayPosition.y = self.parentObject.position.y + localObjectPosition.y + (fixVector.y * TILE_SIZE)

        -- Raycast pour trouvé la position en Z
        local addedRotation = Rotation.New(0, 0, 0)
        -- Si le parent est un objet mural, on fais quelque exception sur la rotation
        if self.parentObject:IsOnWall() then
            if self.parentObject.rotationId == 3 then
                addedRotation.z = 90
            elseif self.parentObject.rotationId == 4 then
                addedRotation.z = -90
            end
        end

        local worldPositionMiddleObject = API_POSITION.getWorldPosition(self.localCenterPosition, worldPosition, self.floor.rotation + self.parentObject.rotation + self.rotation)

        local startRaycast = worldPositionMiddleObject + Vector3.UP * 500
        local endRaycast = worldPositionMiddleObject - Vector3.UP * 50

        local hitResults = World.RaycastAll(startRaycast, endRaycast)

        for _,hitResult in ipairs(hitResults) do
            local rootTemplate = hitResult.other:FindTemplateRoot()
            if rootTemplate ~= nil then
                -- Dans le cas d'une preview, on doit rechercher manuellement l'objet touché poru voir si c'est le bon houseObject
                local isGoodMesh = false
                local houseObjectHitResult = self.floor:GetHouseObjectFromMesh(rootTemplate)
                if houseObjectHitResult ~= nil then
                    isGoodMesh = (self.parentObject.uniqId == houseObjectHitResult.uniqId)
                end
                if isGoodMesh then 
                    local worldImpact = hitResult:GetImpactPosition()
                    zPosition = (worldImpact - self.floor.floorFolder:GetWorldPosition()).z
                    self.displayPosition.z = zPosition
                    break
                end
            end
        end
    end
end

-- Retourne un vecteur a ajouté à celui de la position d'un objet attaché
-- Pour obtenir sa réel position vis à vis de l'objet parent
function HouseObject:GetFixVectorFromParentRotation()
    if self.parentObject == nil then return Vector2.ZERO end
    local fixVector = Vector2.New(0,0)
    local parentRotation = self.parentObject.rotationId
    local currentRotation = self.rotationId

    if parentRotation == 2 then
        if currentRotation == 1 then
            fixVector.x = -1
        elseif currentRotation == 2 then
            fixVector.y = -1
        elseif currentRotation == 3 then
            fixVector.x = 1
        elseif currentRotation == 4 then
            fixVector.y = 1
        end
    elseif parentRotation == 3 then
        if currentRotation == 1 or currentRotation == 2 then
            fixVector.y = -1
        else
            fixVector.y = 1
        end

        if currentRotation == 1 or currentRotation == 4 then
            fixVector.x = -1
        else
            fixVector.x = 1
        end
    elseif parentRotation == 4 then
        if currentRotation == 1 then
            fixVector.y = -1
        elseif currentRotation == 2 then
            fixVector.x = 1
        elseif currentRotation == 3 then
            fixVector.y = 1
        elseif currentRotation == 4 then
            fixVector.x = -1
        end
    end

    return fixVector
end

function HouseObject:ChangeRotation(rotationId, smooth)
    self.rotationId = rotationId
    self.rotation = Rotation.New(0, 0, (rotationId - 1) * 90)
    if self.isTemporary and Environment.IsClient() then
        self:GetOrCreateMesh():SetRotation(self.rotation)
        if self.lastSelectedPosition ~= nil and self.wallAttached == nil then
            self:SelectPosition(self.lastSelectedPosition, true, false)
        end
    end
    self:RefreshMesh(smooth)
end

function HouseObject:NextRotation(smooth)
    if self:IsOnWall() then return end -- On ne peut pas tourner manuellement les objet à accroché au mur
    local nextRotation = (self.rotationId % 4) + 1
    self:ChangeRotation(nextRotation, smooth)
end

function HouseObject:RefreshMesh(smooth)
    if smooth == nil then smooth = true end
    self:CalculPosition()
    if self.mesh == nil then return end
    if smooth then
        self.mesh:MoveTo(self.displayPosition, 0.05, true)
        self.mesh:RotateTo(self.rotation, 0.05, true)
    else
        self.mesh:SetPosition(self.displayPosition)
        self.mesh:SetRotation(self.rotation)
    end
    if self.isTemporary then
        if self:HasValidPosition() then
            self.floorTile:SetSmartProperty('Color', Color.GREEN)
        else
            self.floorTile:SetSmartProperty('Color', Color.RED)
        end
    end
end

function HouseObject:HasValidPosition()
    -- On créer le mesh pour avoir accès au trigger
    self:CreateMesh()
    local triggerPosition = self.trigger:GetWorldPosition()
        local triggerScale = self.trigger:GetWorldScale() - Vector3.New(0.1, 0.1, 0.1)
        local quat = Quaternion.New(self.trigger:GetWorldRotation())
        local fVector = quat:GetForwardVector()
        local rVector = quat:GetRightVector()

        local bottomLeftRaycastStart = triggerPosition + Vector3.UP * 200 - (fVector * self.data.size.x * TILE_SIZE / 2) - (rVector * self.data.size.y * TILE_SIZE / 2)
        local bottomLeftRaycastEnd = triggerPosition - Vector3.UP * 100  - (fVector * self.data.size.x * TILE_SIZE / 2) - (rVector * self.data.size.y * TILE_SIZE / 2)

        local centerRaycastStart = triggerPosition + Vector3.UP * 200
        local centerRaycastEnd = triggerPosition - Vector3.UP * 200

        local topRightRaycastStart = triggerPosition + Vector3.UP * 200 + (fVector * self.data.size.x * TILE_SIZE / 2) + (rVector * self.data.size.y * TILE_SIZE / 2)
        local topRightRaycastEnd = triggerPosition - Vector3.UP * 100  + (fVector * self.data.size.x * TILE_SIZE / 2) + (rVector * self.data.size.y * TILE_SIZE / 2)

    if not self:IsOnWall() and self.parentObject == nil then
        
        local hitResultFloorBottomLeft = World.Raycast(bottomLeftRaycastStart, bottomLeftRaycastEnd, {checkObjects = self.floor.floorFolder:GetChildren()})
        local hitResultFloorCenter = World.Raycast(centerRaycastStart, centerRaycastEnd, {checkObjects = self.floor.floorFolder:GetChildren()})
        local hitResultFloorTopRight = World.Raycast(topRightRaycastStart, topRightRaycastEnd, {checkObjects = self.floor.floorFolder:GetChildren()})

        if hitResultFloorBottomLeft == nil or hitResultFloorCenter == nil or hitResultFloorTopRight == nil then return false end
    end

    local overlappingObjects = self.trigger:GetOverlappingObjects()
    for _,overlap in pairs(overlappingObjects) do
        if overlap:IsA('Trigger') and self.floor.static:IsAncestorOf(overlap) then
            local uniqIdCollision = getChildrenNumber(overlap.parent, self.floor.static:GetCustomProperty('Objects'):WaitForObject())
            if uniqIdCollision ~= nil then
                local houseObjectCollide = self.floor:GetObjectByUniqId(uniqIdCollision)
                if self.uniqId == houseObjectCollide.uniqId or (self.parentObject ~= nil and self.parentObject.uniqId == houseObjectCollide.uniqId) or (houseObjectCollide.parentObject ~= nil and houseObjectCollide.parentObject.uniqId == self.uniqId) then
                   -- collision avec le même objet (dans le cas d'un déplacement)
                   -- Ou collision avec un objet attaché
                else
                    -- On ne check que les collision entre objet du meme type
                    if self:IsOnWall() and houseObjectCollide:IsOnWall() then return false end
                    if self.data.isCarpet and houseObjectCollide.data.isCarpet then return false end 
                    if self.data.isCarpet == false and houseObjectCollide.data.isCarpet == false then return false end
                end
            end
        elseif overlap:IsA('StaticMesh') and self.floor.wall:IsAncestorOf(overlap) then
            if self.wallAttached ~= nil and self.wallAttached.id == overlap.id then
                -- Le mur qu'on collide est le même que notre mur porteur : on ne fait rien
            else
                return false
            end
        end
       if self.data.isCarpet == false and overlap:IsA('Trigger') and self.floor.forbiddenFloorTriggerFolder:IsAncestorOf(overlap) then
           return false
       end
    end

    if self:IsOnWall() then
        -- On vérifie qu'il est entièrement sur le même mur
        local triggerWorldLocation = self.trigger:GetWorldPosition()
        local quaternion = Quaternion.New(self.trigger:GetWorldRotation())
        local rightVector = quaternion:GetRightVector()
        local forwardVector = quaternion:GetForwardVector()
        local leftObjectCenter = triggerWorldLocation + (rightVector * self.data.size.y * TILE_SIZE / 2)
        local rightObjectCenter = triggerWorldLocation - (rightVector * self.data.size.y * TILE_SIZE / 2)
       
        local startLeftObject = leftObjectCenter + (forwardVector * 100)
        local endLeftObject = leftObjectCenter - (forwardVector * 100)

        local startRightObject = rightObjectCenter + (forwardVector * 100)
        local endRightObject = rightObjectCenter - (forwardVector * 100)

        local objectsLeft = World.RaycastAll(startLeftObject, endLeftObject)
        local hasWallOnLeft = false
        local hasWallOnRight = false
        for _,impact in ipairs(objectsLeft) do
            if self.floor.wall:IsAncestorOf(impact.other) and objectIsOnRightPositionOnWall(self, impact:GetImpactPosition()) then
                hasWallOnLeft = true
                break
            end
        end
        if not hasWallOnLeft then return false end

        local objectsRight = World.RaycastAll(startRightObject, endRightObject)
        for _,impact in ipairs(objectsRight) do
            if self.floor.wall:IsAncestorOf(impact.other) and objectIsOnRightPositionOnWall(self, impact:GetImpactPosition()) then
                hasWallOnRight = true
                break
            end
        end
        if not hasWallOnRight then return false end
    elseif self.parentObject ~= nil then
        -- On va faire 2 raycast : un dans le coin supérieur gauche, et un dane le coin supérieur droit
        -- Si les 2 sont sur le meme objet : c'est good
        local triggerScale = self.trigger:GetScale()
        local bottomLeftRaycastStart = triggerPosition + Vector3.UP * 200 - (fVector * triggerScale.x * TILE_SIZE / 2) - (rVector * triggerScale.y * TILE_SIZE / 2)
        local bottomLeftRaycastEnd = triggerPosition - Vector3.UP * 100  - (fVector * triggerScale.x * TILE_SIZE / 2) - (rVector * triggerScale.y * TILE_SIZE / 2)


        local topRightRaycastStart = triggerPosition + Vector3.UP * 200 + (fVector * triggerScale.x * TILE_SIZE / 2) + (rVector * triggerScale.y * TILE_SIZE / 2)
        local topRightRaycastEnd = triggerPosition - Vector3.UP * 100  + (fVector * triggerScale.x * TILE_SIZE / 2) + (rVector * triggerScale.y * TILE_SIZE / 2)

        local hitResultOne = World.RaycastAll(bottomLeftRaycastStart, bottomLeftRaycastEnd)

        local hasCollisionWithParentObject = false
        local zPositionLeft = 0
        local zPositionRight = 0
        for _,impact in ipairs(hitResultOne) do
            local rootTemplate = impact.other:FindTemplateRoot()
            if rootTemplate ~= nil then
                local objectHouseImpact = self.floor:GetHouseObjectFromMesh(rootTemplate)
                if objectHouseImpact ~= nil and objectHouseImpact.uniqId == self.parentObject.uniqId then
                    hasCollisionWithParentObject = true
                    zPositionLeft = impact:GetImpactPosition().z
                    break
                end
            end
        end

        if not hasCollisionWithParentObject then
            return false
        end

        local hitResultTwo = World.RaycastAll(topRightRaycastStart, topRightRaycastEnd)
        hasCollisionWithParentObject = false
        for _,impact in ipairs(hitResultTwo) do
            local rootTemplate = impact.other:FindTemplateRoot()
            if rootTemplate ~= nil then
                local objectHouseImpact = self.floor:GetHouseObjectFromMesh(rootTemplate)
                if objectHouseImpact ~= nil and objectHouseImpact.uniqId == self.parentObject.uniqId then
                    hasCollisionWithParentObject = true
                    zPositionRight = impact:GetImpactPosition().z
                    break
                end
            end
        end

        if not hasCollisionWithParentObject then
            return false
        end

        local diffPositionZ = math.abs(zPositionRight - zPositionLeft)
        if diffPositionZ > 15 then return false end
    end

    return true
end

function objectIsOnRightPositionOnWall(object, impact)
    local allowedDiff = 5

    local localPosition = API_POSITION.getLocalPosition(impact, object.floor.origin, object.floor.rotation)
    if object:IgnoreCheckX() then
        local diff = math.abs(object.position.x - localPosition.x)
        if diff > allowedDiff then return false end
    end

    if object:IgnoreCheckY() then
        local diff = math.abs(object.position.y - localPosition.y)
        if diff > allowedDiff then return false end
    end

    return true
end

function getChildrenNumber(mesh, parent)
    for index,child in ipairs(parent:GetChildren()) do
        if child.id == mesh.id then return index end
    end
    return nil
end

function HouseObject:Encode()
    local encode = self.id .. ';' .. math.floor(self.position.x) .. ',' .. math.floor(self.position.y) .. ';' .. self.rotationId
    if self.wallAttached ~= nil then
        local idWall = self.floor:GetWallId(self.wallAttached)
        encode = encode .. ';w' .. idWall
    elseif self.parentObject ~= nil then
        encode = encode .. ';a' .. self.parentObject.uniqId
    end
    return encode
end

function HouseObject:Destroy()
    if self.mesh ~= nil and Object.IsValid(self.mesh) then
        self.mesh:Destroy()
    end
end

function HouseObject:CopyTemporary()
    local copyHouse = HouseObject:New(self.id, self.floor, {temporary = true})
    if self.wallAttached ~= nil then
        copyHouse:AttachToWall(self.wallAttached)
    elseif self.parentObject ~= nil then
        copyHouse.parentObject = self.parentObject
    end
    copyHouse:ChangeRotation(self.rotationId)
    copyHouse:ChangePosition(self.position)
    copyHouse:RefreshMesh(false)
    copyHouse.uniqId = self.uniqId
    return copyHouse
end

local API = {}

API.HouseObject = HouseObject
API.Decode = function(encodeObject, floor, params)
    local id,position,rotationId,attachedObject = CoreString.Split(encodeObject, ';')
    local positionX,positionY = CoreString.Split(position, ',')

    local object = HouseObject:New(tonumber(id), floor, params)
    if  attachedObject ~= nil then
        local type = attachedObject:sub(1, 1)
        local idAttached = tonumber(attachedObject:sub(2))
        if type == 'w' and object.data.onWall then -- w = ID d'un mur
            local wallMesh = floor.wall:GetChildren()[idAttached]
            object:AttachToWall(wallMesh)
        elseif type == 'a' and object.data.onOtherObject then -- a = ID d'un uniqID house
            local parentObject = floor:GetObjectByUniqId(idAttached)
            object:AttachToObject(parentObject)
            if object.parentObject.isHide then
                object.isHide = true
            end
        end
    end
    object:ChangeRotation(tonumber(rotationId))
    object:ChangePosition(Vector2.New(tonumber(positionX), tonumber(positionY)))

    return object
end

return API