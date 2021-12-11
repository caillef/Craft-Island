local CAMERA_CAPTURE_GENERIC = script:GetCustomProperty("CameraCaptureGeneric")
local CAMERA_CAPTURE_ICON = script:GetCustomProperty("CameraCaptureIcon")

local CAMERA_CAPTURE_FOLDER = nil

local SIZE = 2500
local currentCameraCapture = {}

function setFolder(folder)
    CAMERA_CAPTURE_FOLDER = folder
end

function removeCameraCapture(index)
    if currentCameraCapture[index] ~= nil and currentCameraCapture[index] ~= false then
        currentCameraCapture[index].asset:Destroy()
        if currentCameraCapture[index].task ~= nil then
            currentCameraCapture[index].task:Cancel()
        end
        currentCameraCapture[index] = false
    end
end

function isCameraCaptureValid(index)
    if currentCameraCapture[index] == nil or currentCameraCapture[index] == false then return false end
    return currentCameraCapture[index].capture:IsValid()
end

function findAvailableIndex()
    local currentIndex = 1
    for index,cameraCapture in pairs(currentCameraCapture) do
        if not isCameraCaptureValid(index) then
            removeCameraCapture(index)
            return index
        end
        currentIndex = currentIndex + 1
    end
    return currentIndex
end

function refreshCameraCapture(index)
    if not isCameraCaptureValid(index) then
        removeCameraCapture(index)
        return
    end
    currentCameraCapture[index].capture:Refresh()
end

function createCameraCapture(asset, resolution, transformationParam, mustRefresh, rotateTarget)
    resolution = resolution or CameraCaptureResolution.SMALL
    rotateTarget = false
    if rotateTarget ~= nil then
        rotateTarget = rotateTarget
    end
    transformationParam = transformationParam or {}
    local index = findAvailableIndex()
    local cameraCaptureType = CAMERA_CAPTURE_GENERIC
    local cameraCaptureTemplate = World.SpawnAsset(cameraCaptureType, {parent = CAMERA_CAPTURE_FOLDER, position = (Vector3.FORWARD * SIZE * index)})
    local target = cameraCaptureTemplate:GetCustomProperty('Target'):WaitForObject()
    local camera =  cameraCaptureTemplate:GetCustomProperty('Camera'):WaitForObject()
    local outline =  cameraCaptureTemplate:GetCustomProperty('Outline'):WaitForObject()

    local targetAsset = World.SpawnAsset(asset, {parent = target, position = transformationParam.position, scale = transformationParam.scale, rotation = transformationParam.rotation})
    if rotateTarget then
        targetAsset:RotateContinuous(Rotation.New(0, 0, 40))
    end
    outline:SetSmartProperty('Object To Outline', targetAsset)
    local cameraCapture = camera:Capture(resolution)

    local task = nil
    if mustRefresh == true then
        task = Task.Spawn(function() refreshCameraCapture(index) end)
        task.repeatCount = -1
        task.repeatInterval = 0
    else
        Task.Spawn(
            function()
                refreshCameraCapture(index)
            end,
            0.5
        )
    end

    local cameraCaptureData = {
        index = index,
        capture = cameraCapture,
        asset = cameraCaptureTemplate,
        task = task
    }

    currentCameraCapture[index] = cameraCaptureData
    return cameraCapture
end

function createBuildingCameraCapture(asset, transormParams, mustRefresh)
    transormParams = transormParams or {position = -Vector3.UP * 60, scale = Vector3.ONE * 0.5}
    local resolution = CameraCaptureResolution.SMALL
    if mustRefresh then
        resolution = CameraCaptureResolution.MEDIUM
    end
    return createCameraCapture(asset, resolution, transormParams, mustRefresh, mustRefresh)
end

function createIcon(asset, transformationParam)
    local cameraCapture = createCameraCapture(asset, CameraCaptureResolution.SMALL, transformationParam)
    local icon = World.SpawnAsset(CAMERA_CAPTURE_ICON)
    icon:SetCameraCapture(cameraCapture)
    icon.destroyEvent:Connect(function()
        cameraCapture:Release()
    end)
    return icon
end

local Module = {}

Module.setFolder = setFolder
Module.createCameraCapture = createCameraCapture
Module.createBuildingCameraCapture = createBuildingCameraCapture
Module.createIcon = createIcon

return Module