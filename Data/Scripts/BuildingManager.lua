local propPrevisu = script:GetCustomProperty("BuildingSystemList"):WaitForObject()
local BLOCK_SERIALIZER = script:GetCustomProperty("BlockSerializer"):WaitForObject().context

local ACTION_PLACE = "ability_primary" -- left click

local player = Game.GetLocalPlayer()
local BUILDMODE_ACTIVATED = false

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

local objectsList = propPrevisu:GetChildren()
local objectIndex = 1
local minPos
local maxPos
local islandPos

function BuildSystem_Open()
    if BUILDMODE_ACTIVATED then return end
    BUILDMODE_ACTIVATED = true
    propPrevisu.visibility = Visibility.FORCE_ON
end

function BuildSystem_Close()
    if not BUILDMODE_ACTIVATED then return end
    BUILDMODE_ACTIVATED = false
    propPrevisu.visibility = Visibility.FORCE_OFF
end

function PlayerCanBuild()
    if not minPos then return false end
    local pos = player:GetWorldPosition()
    return pos.x >= minPos.x and pos.x <= maxPos.x and pos.y >= minPos.y and pos.y <= maxPos.y
end

function Tick()
    if not BUILDMODE_ACTIVATED or not PlayerCanBuild() then
        return BuildSystem_Close()
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
    -- Look up
    objPos.z = objPos.z + (vertAngle > ANGLE_SHOW_ABOVE and 1 or (vertAngle < ANGLE_SHOW_UNDER and 0 or 0)) * WALL_HEIGHT
    objPos = objPos + TRANSFORM_TABLE[o + 1 + ((vertAngle > -ANGLE_SHOW_CURRENT_POS and vertAngle < ANGLE_SHOW_CURRENT_POS) and 0 or (o == 0  and 3 or -1))]

    local obj = objectsList[objectIndex]
    obj:SetPosition(objPos)
    obj:SetRotation(Rotation.New(0, 0, o * 90))
end

function OnBindingReleased(player, actionName)
    if BUILDMODE_ACTIVATED and actionName == ACTION_PLACE then
        local obj = objectsList[objectIndex]
        if obj:GetWorldPosition().z >= 0 then
            local data = BLOCK_SERIALIZER.Block_Serialize(obj:GetWorldPosition(), math.ceil(obj:GetRotation().z), objectIndex, islandPos)
            Events.BroadcastToServer("BSPS", data) -- BuildingSystemPlaceStructure (BuildingSystemServer.lua)
        end
    end
    -- if actionName == ACTION_ACTIVATE_BUILDMODE then
    --     if not BUILDMODE_ACTIVATED then
    --         BuildSystem_Open()
    --     else
    --         BuildSystem_Close()
    --     end
    --     return
    -- end

    -- Switch from model to model
    -- if BUILDMODE_ACTIVATED and actionName == ACTION_SWITCH then
    --     objectsList[objectIndex].visibility = Visibility.FORCE_OFF -- Hide last previsu
    --     objectIndex = objectIndex + 1
    --     if objectIndex > #objectsList then
    --         objectIndex = 1
    --     end
    --     objectsList[objectIndex].visibility = Visibility.INHERIT -- Hide current previsu
    -- end

    -- Switch from build mode and normal mode
    -- if BUILDMODE_ACTIVATED and actionName == ACTION_REMOVE_LATEST_STRUCTURE then
    --     Events.BroadcastToServer("BSRLS") -- BuildingSystemRemoveLatestStructure (BuildingSystemServer.lua)
    -- end
end

local function mysplit(inputstr, sep)
    if sep == nil then
            sep = "%s"
    end
    local t={}
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
            table.insert(t, str)
    end
    return t
end

local propsListFromUIMuid = {}
for k,obj in pairs(objectsList) do
    local iconMuid = obj:GetCustomProperty("InventoryIconMuid")
    if not iconMuid then
        local id = mysplit(obj:GetCustomProperty("Built"), ":")[1]
        propsListFromUIMuid[id] = k
        if obj:GetCustomProperty("CanBeInInventory") ~= false then
            print("Missing InventoryIconMuid for "..obj.name)
        end
    else
        local id = mysplit(iconMuid, ":")[1]
        propsListFromUIMuid[id] = k
    end
end

function SelectStructure(muid)
    if muid == nil or not PlayerCanBuild() then
        return BuildSystem_Close()
    end
    objectsList[objectIndex].visibility = Visibility.FORCE_OFF -- Hide last previsu
    local id = propsListFromUIMuid[muid]
    if not id then return BuildSystem_Close() end
    BuildSystem_Open()
    objectIndex = id
    objectsList[objectIndex].visibility = Visibility.INHERIT -- Show current previsu
end

function OnPlayerInitialized(data)
    islandPos = data.islandPos
    minPos = data.islandPos - Vector3.ONE * ISLAND_RADIUS
    maxPos = data.islandPos + Vector3.ONE * ISLAND_RADIUS
end

player.bindingReleasedEvent:Connect(OnBindingReleased)
Events.Connect("OnPlayerInitialized", OnPlayerInitialized)

print("Building Mode Activated for players (need the same message for the server)")