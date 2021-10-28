local CONSTANTS = require(script:GetCustomProperty("Constants"))
local APIB = require(script:GetCustomProperty("APIBuildingSystem"))
local APIO = require(script:GetCustomProperty("APIObjects"))
local APIBSerializer = require(script:GetCustomProperty("APIBlockSerializer"))

local propUIPanel = script:GetCustomProperty("UIPanel"):WaitForObject()
local PREVIEW_MATERIAL = script:GetCustomProperty("PreviewMaterial")
local PREVIEW_COLOR = script:GetCustomProperty("PreviewColor")

local ACTION_PLACE = "ability_primary" -- left click
local ACTION_ROTATE = "ability_secondary" -- right click

local PLAYER = Game.GetLocalPlayer()
local buildmodeActivated = false

local rotateAngle = 0

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
    if currentPreview then
        if currentPreview:IsValid() then currentPreview:Destroy() end
        currentPreview = nil
    end
end

function rotateObjectWithClick(pos, o)
    if o == 0 then
        if rotateAngle == 1 then
            pos.y = pos.y - APIB.WALL_SIZE
        end
        if rotateAngle == 2 then
            pos.x = pos.x + APIB.WALL_SIZE
            pos.y = pos.y - APIB.WALL_SIZE
        end
        if rotateAngle == 3 then
            pos.x = pos.x + APIB.WALL_SIZE
        end
    end

    if o == 1 then
        if rotateAngle == 1 then
            pos.x = pos.x + APIB.WALL_SIZE
        end
        if rotateAngle == 2 then
            pos.x = pos.x + APIB.WALL_SIZE
            pos.y = pos.y + APIB.WALL_SIZE
        end
        if rotateAngle == 3 then
            pos.y = pos.y + APIB.WALL_SIZE
        end
    end

    if o == 2 then
        if rotateAngle == 1 then
            pos.y = pos.y + APIB.WALL_SIZE
        end
        if rotateAngle == 2 then
            pos.x = pos.x - APIB.WALL_SIZE
            pos.y = pos.y + APIB.WALL_SIZE
        end
        if rotateAngle == 3 then
            pos.x = pos.x - APIB.WALL_SIZE
        end
    end

    if o == 3 then
        if rotateAngle == 1 then
            pos.x = pos.x - APIB.WALL_SIZE
        end
        if rotateAngle == 2 then
            pos.x = pos.x - APIB.WALL_SIZE
            pos.y = pos.y - APIB.WALL_SIZE
        end
        if rotateAngle == 3 then
            pos.y = pos.y - APIB.WALL_SIZE
        end
    end
    return pos
end

function PlayerIsOnIsland()
	while not PLAYER.clientUserData.islandType do Task.Wait() end
    local limits = CONSTANTS.ISLAND_SIZES[PLAYER.clientUserData.islandType]
    local pos = PLAYER:GetWorldPosition()
    local minLimit = islandPos + limits[1]
    local maxLimit = islandPos + limits[2] + Vector3.ONE * APIB.WALL_SIZE

    return not (pos.x < minLimit.x or pos.x > maxLimit.x or pos.y < minLimit.y or pos.y > maxLimit.y)
end

local lastPos
function Tick()
    if not objectIndex or not PlayerIsOnIsland() then
        return BuildSystem_Close()
    end
    if objectIndex then
        BuildSystem_Open()
    end

    local playerPos, viewRotation = PLAYER:GetWorldPosition(), PLAYER:GetViewWorldRotation()
    local vertAngle = viewRotation.y
    local angle = viewRotation.z + 135 -- Bring angle from 0 to 270
    local o = math.floor(angle / 90) % 4 -- Orientation between 0 and 3

    objPos = Vector3.New(
        math.floor(playerPos.x / APIB.WALL_SIZE) * APIB.WALL_SIZE, -- Get grid aligned X
        math.floor(playerPos.y / APIB.WALL_SIZE) * APIB.WALL_SIZE, -- Get grid aligned Y
        math.floor(playerPos.z / APIB.WALL_HEIGHT) * APIB.WALL_HEIGHT -- Get grid aligned Z    
    )
    if lastPos ~= objPos then rotateAngle = 0 end
    lastPos = objPos
    -- Look up
    objPos.z = objPos.z + (vertAngle > ANGLE_SHOW_ABOVE and 1 or (vertAngle < ANGLE_SHOW_UNDER and 0 or 0)) * APIB.WALL_HEIGHT
    objPos = objPos + TRANSFORM_TABLE[o + 1 + ((vertAngle > -ANGLE_SHOW_CURRENT_POS and vertAngle < ANGLE_SHOW_CURRENT_POS) and 0 or (o == 0  and 3 or -1))]

    -- TODO: Fix issue when placing crops, sometimes not right cell
    -- objPos = rotateObjectWithClick(objPos, o)

    local obj = APIO.OBJECTS[objectIndex]
    if obj.idName == "SOIL" or obj.idName == "SAPLING" or obj.idName == "WHEAT_SEEDS" or obj.idName == "BERRY_SPROUT" then -- only on ground
        currentPreview.visibility = objPos.z ~= islandPos.z and Visibility.FORCE_OFF or Visibility.FORCE_ON 
    end

    local angle = APIB.GetAlignedAngle(o * 90 + rotateAngle * 90)
	if currentPreview then
        local islandLimit = CONSTANTS.ISLAND_SIZES[PLAYER.clientUserData.islandType]
        if not APIB.IsValidPlaceToBuild(objPos, angle, islandPos, islandLimit) then
            currentPreview.visibility = Visibility.FORCE_OFF
            return
        end
        currentPreview.visibility = Visibility.FORCE_ON
    	currentPreview:SetPosition(objPos)
    	currentPreview:SetRotation(Rotation.New(0, 0, angle))
    end
end

function OnBindingReleased(_, actionName)
    if buildmodeActivated and actionName == ACTION_PLACE then
        local zPos = currentPreview:GetWorldPosition().z
        if zPos >= 0 then
            local obj = APIO.OBJECTS[objectIndex]
            if (obj.idName == "SOIL" or obj.idName == "SAPLING" or obj.idName == "BERRY_SPROUT") and zPos ~= islandPos.z then -- only on ground
                return
            end
            local data = APIBSerializer.Serialize(currentPreview:GetWorldPosition() - islandPos, currentPreview:GetRotation().z, obj.id)
            SpawnFakeObject(currentPreview.sourceTemplateId) -- fix to spawn object instantly
            while Events.BroadcastToServer("BSPS", data) ~= BroadcastEventResultCode.SUCCESS do -- BuildingSystemPlaceStructure (BuildingSystemServer.lua)
                Task.Wait(1)
            end
        end
    end

    if buildmodeActivated and actionName == ACTION_ROTATE then
        -- rotateAngle = (rotateAngle or 0) + 1
        -- if rotateAngle >= 4 then
        --     rotateAngle = 0
        -- end
    end
end
PLAYER.bindingReleasedEvent:Connect(OnBindingReleased)

function SpawnPreview(template)
    local previsu = World.SpawnAsset(template)
    previsu.collision = Collision.FORCE_OFF
    previsu.cameraCollision = Collision.FORCE_OFF
    for _,prop in ipairs(previsu:FindDescendantsByType("StaticMesh")) do
        prop.collision = Collision.FORCE_OFF
        prop.cameraCollision = Collision.FORCE_OFF
        for _, materialSlot in ipairs(prop:GetMaterialSlots()) do
            prop:SetMaterialForSlot(PREVIEW_MATERIAL, materialSlot.slotName)
            materialSlot:SetColor(PREVIEW_COLOR)
        end
    end
    for _,vfx in ipairs(previsu:FindDescendantsByType("Vfx")) do
        vfx:Destroy()
    end
    for _,trigger in ipairs(previsu:FindDescendantsByType("Trigger")) do
        trigger:Destroy()
    end
    for _,script in ipairs(previsu:FindDescendantsByType("Script")) do
        script:Destroy()
    end
    return previsu
end

function SpawnFakeObject(template)
    local fakeObject = World.SpawnAsset(template)
    fakeObject.lifeSpan = 0.25
    fakeObject.collision = Collision.FORCE_OFF
    fakeObject.cameraCollision = Collision.FORCE_OFF
    for _,prop in ipairs(fakeObject:FindDescendantsByType("StaticMesh")) do
        prop.collision = Collision.FORCE_ON
        prop.cameraCollision = Collision.FORCE_OFF
    end
    for _,vfx in ipairs(fakeObject:FindDescendantsByType("Vfx")) do
        vfx:Destroy()
    end
    for _,trigger in ipairs(fakeObject:FindDescendantsByType("Trigger")) do
        trigger:Destroy()
    end
    for _,script in ipairs(fakeObject:FindDescendantsByType("Script")) do
        script:Destroy()
    end
    fakeObject:SetPosition(currentPreview:GetWorldPosition())
    fakeObject:SetRotation(currentPreview:GetWorldRotation())
end

local triggerOverlapEvent
function SelectStructure(id)
    if currentPreview and currentPreview:IsValid() then
        currentPreview:Destroy()
    end
    currentPreview = nil
    if id == nil or not APIO.OBJECTS[id].canBeBuilt or not PlayerIsOnIsland() then
        objectIndex = nil
        return BuildSystem_Close()
    end
    objectIndex = id
    currentPreview = SpawnPreview(APIO.OBJECTS[id].templateMuid)
    if triggerOverlapEvent then
        triggerOverlapEvent:Disconnect()
    end
    currentPreview.collision = Collision.FORCE_OFF
    BuildSystem_Open()
end
Events.Connect("SelectStructure", function(id)
    SelectStructure(id)
end)

function OnPlayerInitialized(data)
    islandPos = data.islandPos
    PLAYER.clientUserData.islandType = data.iType
end

Events.Connect("OnPlayerInitialized", OnPlayerInitialized)

Events.Connect("BSLimit", function()
	World.SpawnAsset("7CF45E787CD10A68:LimitBuildingNotif", { parent= propUIPanel })
end)

Events.Connect("NeedSoil", function()
    local obj = World.SpawnAsset("7CF45E787CD10A68:LimitBuildingNotif", { parent= propUIPanel })
    obj.text = "Use your Hoe before planting seeds."
end)

print("Building Mode Activated for players (need the same message for the server)")