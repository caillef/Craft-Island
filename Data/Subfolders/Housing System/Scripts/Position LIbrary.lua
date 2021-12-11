local EMPTY_FOLDER = script:GetCustomProperty("EmptyFolder")

local parentToWorldPosition = World.SpawnAsset(EMPTY_FOLDER, {name = 'Local To World Position - Container'})
local folderToWorldPosition = World.SpawnAsset(EMPTY_FOLDER, {parent = parentToWorldPosition, name = 'Local To World Position'})

local TILE_SIZE = 100

local Module = {}

Module.getWorldPosition = function(localPosition, parentPosition, parentRotation)
    parentToWorldPosition:SetWorldPosition(parentPosition)
    parentToWorldPosition:SetWorldRotation(parentRotation)
    folderToWorldPosition:SetPosition(localPosition)
    return folderToWorldPosition:GetWorldPosition()
end

Module.getLocalPosition = function(worldPosition, parentPosition, parentRotation)
    parentToWorldPosition:SetWorldPosition(parentPosition)
    parentToWorldPosition:SetWorldRotation(parentRotation)
    folderToWorldPosition:SetWorldPosition(worldPosition)
    return folderToWorldPosition:GetPosition()
end

Module.objectCanBePutHere = function(object)
    local position = object.position

    local parentSize = object.floor.house.data.size
    if object.parentObject ~= nil then
        return true -- Les objet attaché a d'autre sont vérifié via raycast
    end
    parentSize = parentSize * TILE_SIZE
    
    if not object:IgnoreCheckX() and (position.x < 0 or position.x > parentSize.x) then return false end
    if not object:IgnoreCheckY() and (position.y < 0 or position.y > parentSize.y) then return false end

    local quat = Quaternion.New(object.rotation)
    local forwardVector = quat:GetForwardVector()
    local rightVector = quat:GetRightVector()

    local objectRotationSize = Vector3.New(object.data.size.x * forwardVector.x + object.data.size.y * rightVector.x, object.data.size.x * forwardVector.y + object.data.size.y * rightVector.y, 0) * TILE_SIZE
    
    local objectEndPosition = position + objectRotationSize

    if not object:IgnoreCheckX() and (objectEndPosition.x < 0 or objectEndPosition.x > parentSize.x) then return false end
    if not object:IgnoreCheckY() and (objectEndPosition.y < 0 or objectEndPosition.y > parentSize.y) then return false end

    return true
end

Module.objectCanBePutHereOld = function(object)
    local coord = object.positionCoord
    if object.freePosition then
        coord = Vector2.New(math.ceil(object.position.x / TILE_SIZE), math.ceil(object.position.y / TILE_SIZE))
        -- Modifier les coord en fonction de la rotation
    end
    local rotationParent = nil
    if object.parentObject ~= nil then
        rotationParent = object.parentObject.rotationId
        -- Les objet attaché à d'autre qui sont en "free position" ont toujorus des coord valide
        -- La vérification se fait via raycast
        if object.freePosition then return true end
    end
    local coords = Module.getObjectCoordsWithSizeAndRotation(coord, object.data.size, object.rotationId, rotationParent)
    local parentSize = object.floor.house.data.size
    if object.parentObject ~= nil then
        parentSize = object.parentObject.data.size
    end

    -- On vérifie que toute les coords sont valide
    for _,objectCoord in pairs(coords) do
        if not Module.isValidCoord(object, parentSize, objectCoord) then return false end
    end
    return true
end

Module.isValidCoord = function(object, parentSize, coord)
    if not object:IgnoreCheckX() and (coord.x < 0 or coord.x >= parentSize.x) then return false end
    if not object:IgnoreCheckY() and (coord.y < 0 or coord.y >= parentSize.y) then return false end
    return true
end

Module.getObjectCoordsWithSizeAndRotation = function(coord, size, rotationId, rotationParent)
    local coords = {}
    if rotationParent ~= nil then
        if rotationParent == 2 then
            rotationId = (rotationId + 3) % 4
        elseif rotationParent == 4 then
            rotationId = (rotationId + 1) % 4
        end
        if rotationId == 0 then
            rotationId = 4
        end
    end
    for x=0,(size.x - 1) do
        for y=0,(size.y - 1) do
            if rotationParent == 3 then
                if rotationId == 1 then
                    table.insert(coords, coord + Vector2.New(-x, -y))
                elseif rotationId == 2 then
                    table.insert(coords, coord + Vector2.New(y, -x))
                elseif rotationId == 3 then
                    table.insert(coords, coord + Vector2.New(x, y))
                elseif rotationId == 4 then
                    table.insert(coords, coord + Vector2.New(-y, x))
                end
            else
                if rotationId == 1 then
                    table.insert(coords, coord + Vector2.New(x, y))
                elseif rotationId == 2 then
                    table.insert(coords, coord + Vector2.New(-y, x))
                elseif rotationId == 3 then
                    table.insert(coords, coord + Vector2.New(-x, -y))
                elseif rotationId == 4 then
                    table.insert(coords, coord + Vector2.New(y, -x))
                end
            end
        end
    end
    return coords
end

return Module