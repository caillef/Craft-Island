local propUIPanel = script:GetCustomProperty("UIPanel"):WaitForObject()

local ACTION_PLACE = "ability_primary" -- left click
local ACTION_ROTATE = "ability_secondary" -- right click

local player = Game.GetLocalPlayer()
local BUILDMODE_ACTIVATED = false
canBuild = false

local rotateAngle = 0
local ISLAND_RADIUS = 10000

local ANGLE_SHOW_CURRENT_POS = 50
local ANGLE_SHOW_ABOVE = -5
local ANGLE_SHOW_UNDER = -20
local WALL_SIZE = 200
local WALL_HEIGHT = 150

local TRANSFORM_TABLE = {
    Vector3.New(0, 0, 0),
    Vector3.New(WALL_SIZE, 0, 0),
    Vector3.New(WALL_SIZE, WALL_SIZE, 0),
    Vector3.New(0, WALL_SIZE, 0)
}

local _objectsList
function GetObjectsList()
    _objectsList = _G["caillef.craftisland.objects"]
    while _objectsList == nil do
        Task.Wait(0.1)
        _objectsList = _G["caillef.craftisland.objects"]
    end
    return _objectsList    
end

local _blockSerializer
function GetBlockSerializer()
    _blockSerializer = _G["caillef.craftisland.buildSerializer"]
    while _blockSerializer == nil do
        Task.Wait(0.1)
        _blockSerializer = _G["caillef.craftisland.buildSerializer"]
    end
    return _blockSerializer    
end

local currentPrevisu
local objectIndex
local minPos
local maxPos
local islandPos

function BuildSystem_Open()
    if BUILDMODE_ACTIVATED then return end
    BUILDMODE_ACTIVATED = true
end

function BuildSystem_Close()
    if not BUILDMODE_ACTIVATED then return end
    BUILDMODE_ACTIVATED = false
    if currentPrevisu then
        if currentPrevisu:IsValid() then currentPrevisu:Destroy() end
        currentPrevisu = nil
    end
end

function PlayerCanBuild()
    if not minPos then return false end
    return canBuild
end

function rotateObjectWithClick(pos, o)
    if o == 0 then
        if rotateAngle == 1 then
            pos.y = pos.y - WALL_SIZE
        end
        if rotateAngle == 2 then
            pos.x = pos.x + WALL_SIZE
            pos.y = pos.y - WALL_SIZE
        end
        if rotateAngle == 3 then
            pos.x = pos.x + WALL_SIZE
        end
    end

    if o == 1 then
        if rotateAngle == 1 then
            pos.x = pos.x + WALL_SIZE
        end
        if rotateAngle == 2 then
            pos.x = pos.x + WALL_SIZE
            pos.y = pos.y + WALL_SIZE
        end
        if rotateAngle == 3 then
            pos.y = pos.y + WALL_SIZE
        end
    end

    if o == 2 then
        if rotateAngle == 1 then
            pos.y = pos.y + WALL_SIZE
        end
        if rotateAngle == 2 then
            pos.x = pos.x - WALL_SIZE
            pos.y = pos.y + WALL_SIZE
        end
        if rotateAngle == 3 then
            pos.x = pos.x - WALL_SIZE
        end
    end

    if o == 3 then
        if rotateAngle == 1 then
            pos.x = pos.x - WALL_SIZE
        end
        if rotateAngle == 2 then
            pos.x = pos.x - WALL_SIZE
            pos.y = pos.y - WALL_SIZE
        end
        if rotateAngle == 3 then
            pos.y = pos.y - WALL_SIZE
        end
    end
    return pos
end

local lastPos
function Tick()
    if not objectIndex or not PlayerCanBuild() then
        return BuildSystem_Close()
    end
    if currentPrevisu then
        BuildSystem_Open()
    end

    local playerPos, viewRotation = player:GetWorldPosition(), player:GetViewWorldRotation()
    local vertAngle = viewRotation.y
    local angle = viewRotation.z + 135 -- Bring angle from 0 to 270
    local o = math.floor(angle / 90) % 4 -- Orientation between 0 and 3

    objPos = Vector3.New(
        math.floor(playerPos.x / WALL_SIZE) * WALL_SIZE, -- Get grid aligned X
        math.floor(playerPos.y / WALL_SIZE) * WALL_SIZE, -- Get grid aligned Y
        math.floor(playerPos.z / WALL_HEIGHT) * WALL_HEIGHT -- Get grid aligned Z    
    )
    if lastPos ~= objPos then rotateAngle = 0 end
    lastPos = objPos
    -- Look up
    objPos.z = objPos.z + (vertAngle > ANGLE_SHOW_ABOVE and 1 or (vertAngle < ANGLE_SHOW_UNDER and 0 or 0)) * WALL_HEIGHT
    objPos = objPos + TRANSFORM_TABLE[o + 1 + ((vertAngle > -ANGLE_SHOW_CURRENT_POS and vertAngle < ANGLE_SHOW_CURRENT_POS) and 0 or (o == 0  and 3 or -1))]

    -- TODO: Fix issue when placing crops, sometimes not right cell
    -- objPos = rotateObjectWithClick(objPos, o)

    local obj = GetObjectsList()[objectIndex]
    if obj.idName == "SOIL" or obj.idName == "SAPLING" or obj.idName == "WHEAT_SEEDS" then -- only on ground
        currentPrevisu.visibility = objPos.z ~= islandPos.z and Visibility.FORCE_OFF or Visibility.FORCE_ON 
    end

	if currentPrevisu then
    	currentPrevisu:SetPosition(objPos)
    	currentPrevisu:SetRotation(Rotation.New(0, 0, o * 90 + rotateAngle * 90))
    end
end

function OnBindingReleased(player, actionName)
    if BUILDMODE_ACTIVATED and actionName == ACTION_PLACE then
        local zPos = currentPrevisu:GetWorldPosition().z
        if zPos >= 0 then
            local obj = GetObjectsList()[objectIndex]
            if (obj.idName == "SOIL" or obj.idName == "SAPLING" or obj.idName == "WHEAT_SEEDS") and zPos ~= islandPos.z then -- only on ground
                return -- must be placed on ground
            end
            local data = GetBlockSerializer().Serialize(currentPrevisu:GetWorldPosition() - islandPos, currentPrevisu:GetRotation().z, obj.id)
            while Events.BroadcastToServer("BSPS", data) ~= BroadcastEventResultCode.SUCCESS do -- BuildingSystemPlaceStructure (BuildingSystemServer.lua)
                Task.Wait(1)
            end
        end
    end

    if BUILDMODE_ACTIVATED and actionName == ACTION_ROTATE then
        -- rotateAngle = (rotateAngle or 0) + 1
        -- if rotateAngle >= 4 then
        --     rotateAngle = 0
        -- end
    end
end

local triggerOverlapEvent
function SelectStructure(id)
    if currentPrevisu then
        if currentPrevisu:IsValid() then
            currentPrevisu:Destroy()
        end
        currentPrevisu = nil
    end
    if id == nil or not PlayerCanBuild() or not GetObjectsList()[id].canBeBuilt then
        objectIndex = nil
        return BuildSystem_Close()
    end
    objectIndex = id
    currentPrevisu = World.SpawnAsset(GetObjectsList()[id].templateMuid)
    currentPrevisu.collision = Collision.FORCE_OFF
    currentPrevisu.cameraCollision = Collision.FORCE_OFF
    for _,prop in ipairs(currentPrevisu:FindDescendantsByType("StaticMesh")) do
        prop.collision = Collision.FORCE_OFF
        prop.cameraCollision = Collision.FORCE_OFF
        for _, materialSlot in ipairs(prop:GetMaterialSlots()) do
            prop:SetMaterialForSlot(script:GetCustomProperty("PreviewMaterial"), materialSlot.slotName)
            prop:SetColor(script:GetCustomProperty("PreviewColor"))
        end            
    end
    if triggerOverlapEvent then
        triggerOverlapEvent:Disconnect()
    end
    currentPrevisu.collision = Collision.FORCE_OFF
    BuildSystem_Open()
end
Events.Connect("SelectStructure", function(id)
    SelectStructure(id)
end)

function OnPlayerInitialized(data)
    islandPos = data.islandPos
    minPos = data.islandPos - Vector3.ONE * ISLAND_RADIUS
    maxPos = data.islandPos + Vector3.ONE * ISLAND_RADIUS
    canBuild = true
end

function OnBuildPermission(canbuild)
    canBuild = canbuild
end

player.bindingReleasedEvent:Connect(OnBindingReleased)
Events.Connect("OnPlayerInitialized", OnPlayerInitialized)
Events.Connect("OnBuildPermission", OnBuildPermission)

Events.Connect("BSLimit", function()
	World.SpawnAsset("7CF45E787CD10A68:LimitBuildingNotif", { parent= propUIPanel })
end)

print("Building Mode Activated for players (need the same message for the server)")