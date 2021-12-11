local PLAYER = Game.GetLocalPlayer()
local API_POSITION = require(script:GetCustomProperty("API_Position"))
local CLASS_HOUSE_OBJECT = require(script:GetCustomProperty("Class_HouseObject"))

local ROOT = script:GetCustomProperty("Root"):WaitForObject()
local CAMERA = script:GetCustomProperty("Camera"):WaitForObject()

local CLOSE_EVENT = ROOT:GetCustomProperty('closeEvent')

local OUTLINE_OBJECT = script:GetCustomProperty("OutlineObject"):WaitForObject()
local SOUND_ROTATE_OBJECT = script:GetCustomProperty("SoundRotateObject"):WaitForObject()
local SOUND_DELETE_OBJECT = script:GetCustomProperty("SoundDeleteObject"):WaitForObject()
local EFFECT_PUT_OBJECT = script:GetCustomProperty("EffectPutObject")

local CAMERA_MIN_PITCH = CAMERA.minPitch
local CAMERA_MAX_PITCH = CAMERA.maxPitch

local CAMERA_MIN_X = 0
local CAMERA_MAX_X = 0
local CAMERA_MIN_Y = 0
local CAMERA_MAX_Y = 0

local currentHouse = nil
local currentFloor = nil
local currentSelectedObject = nil
local currentHoveredObject = nil

local TILE_SIZE = 100

local currentAction = nil

local currentTimeRightClick = 0

local isGridActivate = true

function Tick(dt)
    if currentHouse == nil then return end
    currentHoveredObject = nil
    -- If the "Cancel action" (right click) is held more than 0.3s, the system considers that the player simply turns the camera
    if Input.IsActionHeld(PLAYER, 'Cancel action') then
        currentTimeRightClick = currentTimeRightClick + dt
    elseif currentTimeRightClick > 0 then
        if currentTimeRightClick <= 0.3 then
            playerPressAbilitySecondary()
        end
        currentTimeRightClick = 0
    end

    -- Manage the camera movements
    local moveCameraActionValue = Input.GetActionValue(PLAYER, 'Move camera')
    if moveCameraActionValue ~= Vector2.ZERO then
        local quat = Quaternion.New(Rotation.New(0, 0, CAMERA.currentYaw - 90))
        local forwardVector = quat:GetForwardVector()
        local rightVector = quat:GetRightVector()
        moveCameraActionValue.x = -moveCameraActionValue.x
        local moveX = moveCameraActionValue.x * forwardVector.x + moveCameraActionValue.y * rightVector.x
        local moveY = moveCameraActionValue.x * forwardVector.y + moveCameraActionValue.y * rightVector.y
        moveCameraActionValue.x = moveX
        moveCameraActionValue.y = moveY
        local newCameraPosition = CAMERA:GetWorldPosition() + (Vector3.New(moveCameraActionValue, 0) * (800 * dt))
        newCameraPosition.x = CoreMath.Clamp(newCameraPosition.x, CAMERA_MIN_X, CAMERA_MAX_X)
        newCameraPosition.y = CoreMath.Clamp(newCameraPosition.y, CAMERA_MIN_Y, CAMERA_MAX_Y)
        CAMERA:SetWorldPosition(newCameraPosition)
    end

    local impacts = getCursorImpacts()
    OUTLINE_OBJECT:SetSmartProperty('Enabled', false)

    -- Manage the position of the selected objects
    if (currentAction == 'add' or currentAction == 'move') and currentSelectedObject ~= nil then
        currentSelectedObject:DetachToParent()
        if impacts.wall ~= nil and currentSelectedObject.data.onWall then -- For the call objects
            local localPosition = calculLocalPosition(impacts.wall:GetImpactPosition())
            local normal = impacts.wall:GetImpactNormal()
            local allowedNormal = (math.abs(normal.z) <= 0.01) -- Only allow wall with 0 rotation X and Y
            if allowedNormal then
                local rotationZ = getRotationZFromNormal(impacts.wall:GetImpactNormal())
                currentSelectedObject:AttachToWall(impacts.wall.other, rotationZ)
                currentSelectedObject:SelectPosition(localPosition, not isGridActivate)
            end
        elseif impacts.object ~= nil and impacts.object.data.canSupportObject and currentSelectedObject.data.onOtherObject then -- For the obejcts on other objects
            local impactLocalPosition = API_POSITION.getLocalPosition(impacts.mesh:GetImpactPosition(), impacts.meshRoot:GetWorldPosition(), impacts.meshRoot:GetWorldRotation())
            currentSelectedObject:AttachToObject(impacts.object)
            currentSelectedObject:SelectPosition(impactLocalPosition, not isGridActivate)
        elseif impacts.floor ~= nil and currentSelectedObject.data.onFloor then -- For the other objects
            local localPosition = calculLocalPosition(impacts.floor:GetImpactPosition())
            currentSelectedObject:SelectPosition(localPosition, not isGridActivate)
        end
    elseif currentAction == nil then -- Si no action, we outline the selected object
        if impacts.mesh ~= nil then
            local rootMesh = impacts.mesh.other:FindTemplateRoot()
            currentHoveredObject = impacts.object
            if currentHoveredObject ~= nil then
                OUTLINE_OBJECT:SetSmartProperty('Enabled', true)
                OUTLINE_OBJECT:SetSmartProperty('Object To Outline', rootMesh)
            end
        end
    end
end

--[[
    Get the impact of the cursor with a Raycast, return a table with the first impact on the floor, on the wall and on another object 
        houseId : the id of the house
        floorNumber : The floor number
]]--
function getCursorImpacts()
    local hitResult = UI.GetCursorHitResult()
    if hitResult == nil then return {} end
    local positionImpact = hitResult:GetImpactPosition()
    local startPoint = PLAYER:GetViewWorldPosition()

    local normalize = (positionImpact - startPoint):GetNormalized()
    
    local positionFin = startPoint + (normalize * 5000)

    local impacts = World.RaycastAll(startPoint, positionFin, {ignorePlayers = true})

    local goodImpacts = {}
    for _,impact in pairs(impacts) do
        if goodImpacts.floor == nil and impact.other:IsA('StaticMesh') and currentFloor.floorFolder:IsAncestorOf(impact.other) then -- Floor impact
            goodImpacts.floor = impact
        elseif goodImpacts.mesh == nil and currentFloor.static:IsAncestorOf(impact.other) then -- On other object impact
            local rootMesh = impact.other:FindTemplateRoot()
            local object = currentFloor:GetHouseObjectFromMesh(rootMesh)
            if currentSelectedObject == nil or object.uniqId ~= currentSelectedObject.uniqId then
                goodImpacts.mesh = impact
                goodImpacts.meshRoot = rootMesh
                goodImpacts.object = object
            end
        elseif goodImpacts.wall == nil and impact.other:IsA('StaticMesh') and currentFloor.wall:IsAncestorOf(impact.other) then -- wall impact
            goodImpacts.wall = impact
        end
    end

    return goodImpacts
end

--[[
    Get the rotation Z from a normal Vector3
        normalVector : the normal Vector3
]]--
function getRotationZFromNormal(normalVector)
    local angle = math.deg(math.acos(normalVector.y))
    if normalVector.x > 0 then
        angle = -angle
    end
    return angle
end

--[[
    Get the local position in the house of the world position
        worldPosition : The world position
]]--
function calculLocalPosition(worldPosition)
    return API_POSITION.getLocalPosition(worldPosition, currentFloor.origin, currentFloor.rotation)
end

--[[
    Create the effect when you put an object
        position : The world position of the effect
]]--
function createEffect(position)
    if not Environment.IsSinglePlayerPreview() then
        Task.Wait(0.2)
    end
    World.SpawnAsset(EFFECT_PUT_OBJECT, {position = position - Vector3.UP * 50})
end

--[[
    Add the current object on the current selected position
]]--
function putCurrentObject()
    if currentSelectedObject ~= nil then
        if currentSelectedObject:HasValidPosition() then
            Events.BroadcastToServer('housing-system.add-object', currentSelectedObject:Encode(), currentFloor.number, currentHouse.id)
            local currentPosition = currentSelectedObject.trigger:GetWorldPosition()
            createEffect(currentPosition)
            --resetAction()
        end
    end
end

--[[
    Move the current object on the current selected position
]]--
function moveCurrentObject()
    if currentSelectedObject ~= nil then
        if currentSelectedObject:HasValidPosition() then
            Events.BroadcastToServer('housing-system.move-object', currentSelectedObject.uniqId, currentSelectedObject:Encode(), currentFloor.number, currentHouse.id)
            local currentPosition = currentSelectedObject.trigger:GetWorldPosition()
            createEffect(currentPosition)
            resetAction()
        end
    end
end

--[[
    Delete the current selected object
]]--
function deleteCurrentObject()
    if currentSelectedObject ~= nil then
        Events.BroadcastToServer('housing-system.delete-object', currentSelectedObject.uniqId, currentFloor.number, currentHouse.id)
        SOUND_DELETE_OBJECT:Play()
        resetAction()
    end
end

--[[
    Ask to teh serveur to close the housing
]]--
function askForClose()
    Events.BroadcastToServer(CLOSE_EVENT, PLAYER)
end

--[[
    Activate the housing
        idHouse : the od of the house
]]--
function activateHousing(idHouse)
    PLAYER.isVisibleToSelf = false
    currentHouse = _G.Housing_Data.getHouse(idHouse)
    PLAYER:SetOverrideCamera(CAMERA)
    UI.SetCursorVisible(true)
    UI.SetCanCursorInteractWithUI(true)
    activateGrid()

    initHouse()
    initFloor(1)

    _G.Housing_UI.activate()
    _G.Housing_UI.hideBinding()
end

--[[
    Close the housing
]]--
function closeHousing()
    if currentHouse == nil then return end
    PLAYER.isVisibleToSelf = true
    PLAYER:ClearOverrideCamera()
    UI.SetCursorVisible(false)
    UI.SetCanCursorInteractWithUI(false)

    currentFloor:Deactivate()

    _G.Housing_UI.deactivate()

    resetAction(true)
    currentHouse = nil
    currentFloor = nil
end

--[[
    Init the house before open the housing (not used yet)
]]--
function initHouse()

end

--[[
    Init the floor before open the housing
        floorNumber : the floor number
]]--
function initFloor(floorNumber)
    cleanFloorObjects()

    currentFloor = currentHouse:GetFloor(floorNumber)
    currentFloor:Activate()

    local cameraPosition = currentFloor.gridFolder:GetWorldPosition() + Vector3.UP * 700
    CAMERA:SetWorldPosition(cameraPosition)
    CAMERA.currentYaw = currentFloor.gridFolder:GetWorldRotation().z
    CAMERA.currentDistance = 1000
    CAMERA.currentPitch = -50

    CAMERA_MIN_X = cameraPosition.x - 50 * TILE_SIZE / 2
    CAMERA_MAX_X = cameraPosition.x + 50 * TILE_SIZE / 2
    CAMERA_MIN_Y = cameraPosition.y - 50 * TILE_SIZE / 2
    CAMERA_MAX_Y = cameraPosition.y + 50 * TILE_SIZE / 2
end

--[[
    Toggle the Grid
]]--
function toggleGrid()
    isGridActivate = not isGridActivate
end

--[[
    Activate the grid
]]--
function activateGrid()
    isGridActivate = true
end

--[[
    Is the grid is activated?
]]--
function isGridActivated()
    return isGridActivate
end

--[[
    Select an object to add it
        idItem : id of the item
]]--
function clickItemInList(idItem)
    cleanObjects()
    currentAction = 'add'
    _G.Housing_UI.showAddBinding()

    currentSelectedObject = CLASS_HOUSE_OBJECT.HouseObject:New(idItem, currentFloor,{temporary = true})
    currentSelectedObject:CreateMesh()
end

--[[
    Select an existing item in the house
        object : the selected object
]]--
function selectExistingObject(object)
    cleanObjects()
    currentAction = 'move'
    _G.Housing_UI.showMoveBinding()

    object:Hide()
    currentSelectedObject = object:CopyTemporary()
    currentSelectedObject:CreateMesh()
end

--[[
    Clear temporary objects
]]--
function cleanObjects()
    OUTLINE_OBJECT:SetSmartProperty('Enabled', false)
    if currentSelectedObject ~= nil then
        currentSelectedObject:Destroy()
        currentSelectedObject = nil
    end
end

--[[
    Clear temporary objects of the floor (like the grid and the forbidden floors)
]]--
function cleanFloorObjects()
    if currentFloor ~= nil then
        currentFloor:Clean()
        currentFloor = nil
    end
end

--[[
    Reset action
        cancel : If we want cancel the currentAction
]]--
function resetAction(cancel)
    if cancel == nil then cancel = false end
    if currentAction == 'move' and currentSelectedObject ~= nil and cancel == true then
        currentSelectedObject:Show() -- Le show permet de simplement rafraichir la maison en réalité
    end
    currentAction = nil
    cleanObjects()
    _G.Housing_UI.hideBinding()
end

--[[
    When player press the cancel button
]]--
function playerPressAbilitySecondary()
    resetAction(true)
end

function onActionPress(player, actionName, actionValue)
    if currentHouse == nil then return nil end
    if actionName == 'Rotate object' and currentSelectedObject ~= nil then
        SOUND_ROTATE_OBJECT:Play()
        currentSelectedObject:NextRotation(false)
    elseif actionName == 'Put object' then
        if currentAction == 'add' then
            putCurrentObject()
        elseif currentAction == 'move' then
            moveCurrentObject()
        elseif currentAction == nil and currentHoveredObject ~= nil then
            selectExistingObject(currentHoveredObject)
        end
    elseif actionName == 'Delete object' then
        if currentAction == 'move' then
            deleteCurrentObject()
        end
    end
end

Events.Connect('housing-system.activate', activateHousing)
Events.Connect('housing-system.deactivate', closeHousing)

local Module = {}

Module.clickItemInList = clickItemInList
Module.toggleGrid = toggleGrid
Module.activateGrid = activateGrid
Module.isGridActivated = isGridActivated
Module.askForClose = askForClose

_G.Housing_Manager = Module

Input.actionPressedEvent:Connect(onActionPress)