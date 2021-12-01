local CONSTANTS = require(script:GetCustomProperty("Constants"))
local APIB = require(script:GetCustomProperty("APIBuildingSystem"))
local APIO = require(script:GetCustomProperty("APIObjects"))
local APIBSerializer = require(script:GetCustomProperty("APIBlockSerializer"))

local propUIPanel = script:GetCustomProperty("UIPanel"):WaitForObject()
local PREVIEW_MATERIAL = script:GetCustomProperty("PreviewMaterial")
local PREVIEW_COLOR = script:GetCustomProperty("PreviewColor")

local ACTION_PLACE = "ability_primary" -- left click

local PLAYER = Game.GetLocalPlayer()
local buildmodeActivated = false

local ANGLE_SHOW_CURRENT_POS = 50
local ANGLE_SHOW_ABOVE = -5
local ANGLE_SHOW_UNDER = -20

local TRANSFORM_TABLE = {
    Vector3.New(0, 0, 0),
    Vector3.New(APIB.WALL_SIZE, 0, 0),
    Vector3.New(APIB.WALL_SIZE, APIB.WALL_SIZE, 0),
    Vector3.New(0, APIB.WALL_SIZE, 0)
}

local currentPreview
local objectIndex
local islandPos

local islandLimit
local minLimit
local maxLimit

function BuildSystem_Open()
    if buildmodeActivated then return end
    buildmodeActivated = true
    if objectIndex and not currentPreview then
        SelectStructure(objectIndex)
    end
end

function BuildSystem_Close()
    if not buildmodeActivated then return end
    buildmodeActivated = false
    if Object.IsValid(currentPreview) then
        currentPreview:Destroy()
    end
    currentPreview = nil
end

function PlayerIsOnIsland()
	while not islandLimit do Task.Wait() end
    local pos = PLAYER:GetWorldPosition()
    return not (pos.x < minLimit.x or pos.x > maxLimit.x or pos.y < minLimit.y or pos.y > maxLimit.y)
end

function GetGridAlignedPos(pos)
    return Vector3.New(
        math.floor(pos.x / APIB.WALL_SIZE) * APIB.WALL_SIZE, -- Get grid aligned X
        math.floor(pos.y / APIB.WALL_SIZE) * APIB.WALL_SIZE, -- Get grid aligned Y
        math.floor(pos.z / APIB.WALL_HEIGHT) * APIB.WALL_HEIGHT -- Get grid aligned Z
    )
end

function Tick()
    if not objectIndex or not PlayerIsOnIsland() then
        return BuildSystem_Close()
    end
    if objectIndex then BuildSystem_Open() end
    if not currentPreview then return end

    local playerPos, viewRotation = PLAYER:GetWorldPosition(), PLAYER:GetViewWorldRotation()
    local vertAngle = viewRotation.y
    local angle = viewRotation.z + 135 -- Bring angle from 0 to 270
    local o = math.floor(angle / 90) % 4 -- Orientation between 0 and 3

    local objPos = GetGridAlignedPos(playerPos)
    -- Look up
    objPos.z = objPos.z + (vertAngle > ANGLE_SHOW_ABOVE and 1 or (vertAngle < ANGLE_SHOW_UNDER and 0 or 0)) * APIB.WALL_HEIGHT
    objPos = objPos + TRANSFORM_TABLE[o + 1 + ((vertAngle > -ANGLE_SHOW_CURRENT_POS and vertAngle < ANGLE_SHOW_CURRENT_POS) and 0 or (o == 0  and 3 or -1))]

    local obj = APIO.OBJECTS[objectIndex]
    local angle = APIB.GetAlignedAngle(o * 90)
    if not islandLimit or not APIB.IsPositionOnIsland(objPos, angle, islandPos, islandLimit)
        or (objPos.z ~= islandPos.z and obj.metadata.structureType == "ground") then
        currentPreview.visibility = Visibility.FORCE_OFF
        return
    end
    currentPreview.clientUserData.cellId = APIB.GetCellId(currentPreview:GetWorldPosition(), currentPreview:GetWorldRotation().z)
    if not APIB.IsSpotEmpty(objPos, angle, currentPreview.clientUserData.structureType) then
        currentPreview.visibility = Visibility.FORCE_OFF
        return
    end
    currentPreview.visibility = Visibility.FORCE_ON
    currentPreview:SetPosition(objPos)
    currentPreview:SetRotation(Rotation.New(0, 0, angle))
end

function OnBindingReleased(_, actionName)
    if buildmodeActivated and actionName == ACTION_PLACE then
        local zPos = currentPreview:GetWorldPosition().z
        if zPos >= 0 then
            local obj = APIO.OBJECTS[objectIndex]
            if obj.metadata.structureType == "ground" and zPos ~= islandPos.z then -- only on ground
                return
            end
            currentPreview.clientUserData.cellId = APIB.GetCellId(currentPreview:GetWorldPosition(), currentPreview:GetWorldRotation().z)
            if not APIB.IsSpotEmpty(currentPreview:GetWorldPosition(), currentPreview:GetWorldRotation().z, currentPreview.clientUserData.structureType) then
                return
            end
            local data = APIBSerializer.Serialize(currentPreview:GetWorldPosition() - islandPos, currentPreview:GetRotation().z, obj.id)
            SpawnFakeObject(currentPreview.sourceTemplateId) -- fix to spawn object instantly
            Events.BroadcastToServer("BSPS", data)
        end
    end
end
PLAYER.bindingReleasedEvent:Connect(OnBindingReleased)

function SpawnPreview(template)
    local preview = World.SpawnAsset(template)
    preview.collision = Collision.FORCE_OFF
    preview.cameraCollision = Collision.FORCE_OFF
    for _,prop in ipairs(preview:FindDescendantsByType("StaticMesh")) do
        prop.collision = Collision.FORCE_OFF
        prop.cameraCollision = Collision.FORCE_OFF
        for _, materialSlot in ipairs(prop:GetMaterialSlots()) do
            prop:SetMaterialForSlot(PREVIEW_MATERIAL, materialSlot.slotName)
            materialSlot:SetColor(PREVIEW_COLOR)
        end
    end
    local objectsTypeNotPreviewed = {"Vfx", "Trigger", "Script"}
    for _,typeName in ipairs(objectsTypeNotPreviewed) do
        for _,obj in ipairs(preview:FindDescendantsByType(typeName)) do
            obj:Destroy()
        end
    end
    preview.clientUserData.structureType = APIO.OBJECTS[APIO.GetTypeFromTemplate(template)].metadata.structureType
    return preview
end

function SpawnFakeObject(template)
    local fakeObject = World.SpawnAsset(template)
    fakeObject.lifeSpan = 0.5
    local objectsTypeNotPreviewed = {"Vfx", "Trigger", "Script"}
    for _,typeName in ipairs(objectsTypeNotPreviewed) do
        for _,obj in ipairs(fakeObject:FindDescendantsByType(typeName)) do
            obj:Destroy()
        end
    end
    fakeObject:SetWorldTransform(currentPreview:GetWorldTransform())
end

function DestroyCurrentPreview()
    if Object.IsValid(currentPreview) then currentPreview:Destroy() end
    currentPreview = nil
    objectIndex = nil
end

function SelectStructure(id)
    DestroyCurrentPreview()
    if id == nil or not APIO.OBJECTS[id].canBeBuilt or not PlayerIsOnIsland() then
        return BuildSystem_Close()
    end
    objectIndex = id
    currentPreview = SpawnPreview(APIO.OBJECTS[id].templateMuid)
    currentPreview.collision = Collision.FORCE_OFF
    BuildSystem_Open()
end

Events.Connect("SelectStructure", SelectStructure)

function OnPrivateNetworkedDataChanged(player, key)
    if key == "islandPos" then
        islandPos = player:GetPrivateNetworkedData(key)
        return
    end
    if key == "islandType" then
    	while not islandPos do Task.Wait(0.1) end
        local islandType = player:GetPrivateNetworkedData(key)
        islandLimit = CONSTANTS.ISLAND_SIZES[islandType]
        minLimit = islandPos + islandLimit[1]
        maxLimit = islandPos + islandLimit[2] + Vector3.ONE * APIB.WALL_SIZE
        return
    end
end
PLAYER.privateNetworkedDataChangedEvent:Connect(OnPrivateNetworkedDataChanged)
for _,key in ipairs(PLAYER:GetPrivateNetworkedDataKeys()) do
    Task.Spawn(function() OnPrivateNetworkedDataChanged(PLAYER, key) end)
end

Events.Connect("BSLimit", function()
	World.SpawnAsset("7CF45E787CD10A68:LimitBuildingNotif", { parent= propUIPanel })
end)

Events.Connect("NeedSoil", function()
    local obj = World.SpawnAsset("7CF45E787CD10A68:LimitBuildingNotif", { parent= propUIPanel })
    obj.text = "Use your Hoe before planting seeds."
end)

Events.Connect("SetObjMetadata", function(obj, id)
	obj.clientUserData.id = id
    obj.clientUserData.cellId = APIB.GetCellId(obj:GetWorldPosition(), obj:GetWorldRotation().z)
    obj.clientUserData.structureType = APIO.OBJECTS[APIO.GetTypeFromTemplate(obj.sourceTemplateId)].metadata.structureType
end)

print("Building Mode Activated for players (need the same message for the server)")