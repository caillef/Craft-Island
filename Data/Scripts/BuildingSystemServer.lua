local placedObjects = {}

local propBuildingSystemList = script:GetCustomProperty("BuildingSystemList"):WaitForObject()
local BLOCK_SERIALIZER = script:GetCustomProperty("BlockSerializer"):WaitForObject().context
local INVENTORY = script:GetCustomProperty("InventoryScriptServer"):WaitForObject().context

local rawObjectsList = propBuildingSystemList:GetChildren()

local playersSpawns = {}

local WALL_SIZE = 200
local WALL_HEIGHT = 150

local logs = {}
function GetLogs()
    return logs
end

local function AddLogEntry(entry)
    table.insert(logs, entry)
    while #logs > 100 do
        table.remove(logs, 1)
    end
end

function ClearLogs()
    logs = {}
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

function getAlignedAngle(a)
    a = math.floor(a)
    if a == 0 and a == 180 and a == 90 and a == 270 then return angle end
    while a < 0 do a = a + 360 end
    while a > 360 do a = a - 360 end
    if a > 80 and a < 100 then return 90 end
    if a > 170 and a < 190 then return 180 end
    if a > 260 and a < 280 then return 270 end
    return 0
end

function GetInventoryMuidFromType(type)
    return mysplit(rawObjectsList[type]:GetCustomProperty(rawObjectsList[type] and rawObjectsList[type]:GetCustomProperty("InventoryIconMuid") and "InventoryIconMuid" or "Built"), ":")[1]
end

function GetTypeFromMuid(muid)
    for key,obj in pairs(rawObjectsList) do
        local objid = obj:GetCustomProperty("Built")
        local objmuid = mysplit(objid, ":")[1]
        if objmuid == muid then
            return key
        end
    end
    return nil
end

function AssignPlayerToObject(obj, player)
    local growingScript = obj:FindDescendantByName("GrowingAsset")
    if not growingScript then
        return
    end
    growingScript.context.SetOwner(player)
end

function BuildingSystem_OnPlaceStructure(player, serializedBlock)
    local data = BLOCK_SERIALIZER.Block_Deserialize(serializedBlock, playersSpawns[player].pos)
    local muid = GetInventoryMuidFromType(data.type)
    if not INVENTORY.PlayerHasItems(player, muid) or
       not PlaceObject(player, data.pos, data.angle, data.type) then
        return
    end
    INVENTORY.PlayerRemoveItems(player, muid) 
end

function GetStructureOnCellFromList(list, pos, player)
    if not list or not pos or not player then
        print("Error entering GetStructureOnCellFromList")
        print(list, pos, player)
        return nil
    end
    local viewRotation = player:GetViewWorldRotation()
    local angle = viewRotation.z + 135 -- Bring angle from 0 to 270
    local a = 90 * (math.floor(angle / 90) % 4) -- Orientation between 0 and 3 times 90
    local x,y,z = math.floor(pos.x), math.floor(pos.y), math.floor(pos.z)
    if a == 90 or a == 180 then
        y = y + 200
    end
    if a == 270 or a == 180 then
        x = x - 200
    end
    if list and list[z] and list[z][y] and list[z][y][x] and list[z][y][x][0] then
        return list[z][y][x][0]
    end
    y = y - WALL_SIZE
    if list and list[z] and list[z][y] and list[z][y][x] and list[z][y][x][90] then
        return list[z][y][x][90]
    end
    x = x + WALL_SIZE
    if list and list[z] and list[z][y] and list[z][y][x] and list[z][y][x][180] then
        return list[z][y][x][180]
    end
    y = y + WALL_SIZE
    if list and list[z] and list[z][y] and list[z][y][x] and list[z][y][x][270] then
        return list[z][y][x][270]
    end
    return nil
end

function Grow(objReplaced, muid, player)
    if not objReplaced or not objReplaced:IsValid() then
        print("Error: objReplaced has already been destroyed")
        return
    end
    local type = GetTypeFromMuid(objReplaced.sourceTemplateId)
    placedObjects[player] = placedObjects[player] or {}
    local placedTypedObjects = placedObjects[player][type] or {}
    local pos = objReplaced:GetPosition()
    if placedTypedObjects and placedTypedObjects[pos.z] and placedTypedObjects[pos.z][pos.y] and placedTypedObjects[pos.z][pos.y][pos.x] then
        for angle,obj in pairs(placedTypedObjects[pos.z][pos.y][pos.x]) do
            if not obj.obj or not obj.obj:IsValid() then
                placedTypedObjects[pos.z][pos.y][pos.x][angle] = nil
                return
            end
            if obj.obj.id == objReplaced.id then
                local player = obj.player
                local parent = objReplaced.parent
                local rotation = objReplaced:GetRotation()
                RemoveStructure(objReplaced, player)
                local newType = GetTypeFromMuid(mysplit(muid, ":")[1])
                local obj = World.SpawnAsset(muid, { parent=parent , position = pos, rotation = rotation })
                AssignPlayerToObject(obj, player)
                local newPlacedTypedObjects = placedObjects[player][newType] or {}
                newPlacedTypedObjects[pos.z] = newPlacedTypedObjects[pos.z] or {}
                newPlacedTypedObjects[pos.z][pos.y] = newPlacedTypedObjects[pos.z][pos.y] or {}
                newPlacedTypedObjects[pos.z][pos.y][pos.x] = newPlacedTypedObjects[pos.z][pos.y][pos.x] or {}
                newPlacedTypedObjects[pos.z][pos.y][pos.x][angle] = { obj=obj, player=player }
                placedObjects[player][newType] = newPlacedTypedObjects
                return
            end
        end
    end
    print("Error while growing "..objReplaced.name)
    print(placedTypedObjects, placedTypedObjects[pos.z], placedTypedObjects[pos.z][pos.y], placedTypedObjects[pos.z][pos.y][pos.x])
end

local SAPLING_INDEX = 5
function PlaceObject(player, position, angle, type)
    angle = getAlignedAngle(angle)
    placedObjects[player] = placedObjects[player] or {}
    local placedTypedObjects = placedObjects[player][type] or {}
    position = position - playersSpawns[player].island:FindChildByName("Structures"):GetWorldPosition()
    if placedTypedObjects[position.z] ~= nil and
       placedTypedObjects[position.z][position.y] ~= nil and
       placedTypedObjects[position.z][position.y][position.x] ~= nil and
       placedTypedObjects[position.z][position.y][position.x][angle] ~= nil then
        return false
    end

    while rawObjectsList == nil do
        rawObjectsList = propBuildingSystemList:GetChildren()
        Task.Wait(0.2)
    end
    local mandatorySurface = rawObjectsList[type]:GetCustomProperty("MustBeBuiltOn")
    if not playersSpawns[player].isLoading and mandatorySurface then
        local surfaceType
        for k,obj in pairs(rawObjectsList) do
            if obj and obj:GetCustomProperty("Built") == mandatorySurface then
                surfaceType = k
            end
        end
        if not surfaceType then
            print("Error: can't find that surface in blocks")
            return
        end
        local surfaceObjects = placedObjects[player][surfaceType]
        local block = GetStructureOnCellFromList(surfaceObjects, position, player)
        if not block or block.player ~= player then
            --TODO: send player message saying that he can't build on this type of block
            print("Error: need block at that position to place this structure")
            return
        end
        RemoveStructure(block.obj, player)        
    end

    AddLogEntry("PLACE "..tostring(position))

    local obj = World.SpawnAsset(rawObjectsList[type]:GetCustomProperty("Built"), { position = position, rotation = Rotation.New(0, 0, angle), parent = playersSpawns[player].island:FindChildByName("Structures") })
    AssignPlayerToObject(obj, player)
    placedTypedObjects[position.z] = placedTypedObjects[position.z] or {}
    placedTypedObjects[position.z][position.y] = placedTypedObjects[position.z][position.y] or {}
    placedTypedObjects[position.z][position.y][position.x] = placedTypedObjects[position.z][position.y][position.x] or {}
    placedTypedObjects[position.z][position.y][position.x][angle] = { obj=obj, player=player }
    placedObjects[player][type] = placedTypedObjects

    if type == SAPLING_INDEX then
        local storage = Storage.GetPlayerData(player) or {}
        local story = storage.story or {}
        if story.step == 2 then
            Events.Broadcast("STEP_COMPLETED", player)
        end    
    end    
    if type == 1 then -- WALL
        local storage = Storage.GetPlayerData(player) or {}
        local story = storage.story or {}
        if story.step == 8 then
            Events.Broadcast("STEP_COMPLETED", player)
        end    
    end

    return true
end


function LoadPreviousBlocks(player)
    playersSpawns[player].isLoading = true
    local storage = Storage.GetPlayerData(player) or {}
    storage.pBlocks = storage.pBlocks or ""
    AddLogEntry(storage.pBlocks)
    local blocks = BLOCK_SERIALIZER.Block_DeserializeStructures(storage.pBlocks, playersSpawns[player].pos)
    local i = 0
    for _,data in pairs(blocks) do
        PlaceObject(player, data.pos, data.angle, data.type)
        i = i + 1
    end
    AddLogEntry(tostring(i).." blocks placed")
    playersSpawns[player].isLoading = false
end

function RemoveStructure(obj, player)
    if not obj or not obj:IsValid() then
        print("Warning: Tried to removed nil object")
        return
    end
    if obj.sourceTemplateId == "2C9DA5AC47D87B71" then -- tree for vfx
        Task.Wait(2)
    end

    local type = GetTypeFromMuid(obj.sourceTemplateId)
    if not type then
        return false
    end
    local pos = obj:GetPosition()
    local placedTypedObjects = placedObjects[player] and placedObjects[player][type] or nil
    local angle = getAlignedAngle(obj:GetRotation().z)
    if placedTypedObjects and placedTypedObjects[pos.z] and placedTypedObjects[pos.z][pos.y] and placedTypedObjects[pos.z][pos.y][pos.x] then
        placedTypedObjects[pos.z][pos.y][pos.x][angle] = nil
    end
    obj:Destroy()
    return true
end

function LoadIsland(slot)
    if slot == nil then
        AddLogEntry("Tried loading slot but got nil")
        return
    end
    AddLogEntry("Loading "..slot.player.name.." island...")
    local player = slot.player
    playersSpawns[player] = slot
    AddLogEntry("Loading Previous Blocks...")
    LoadPreviousBlocks(player)
    AddLogEntry("Previous Blocks loaded.")
end

function UnloadIsland(slot)
    if slot == nil then
        return
    end
    local player = slot.player
    local storage = Storage.GetPlayerData(player)
    storage.pBlocks = BLOCK_SERIALIZER.Block_SerializeStructures(slot.island:FindChildByName("Structures"):GetChildren(), slot.pos, rawObjectsList)
    Storage.SetPlayerData(player, storage)
    slot.island:Destroy()
    placedObjects[player] = nil 
    playersSpawns[player] = nil
end

function OnInventoryReady(player)
    while playersSpawns[player] == nil do
        Task.Wait(0.1)
    end
    Task.Wait(0.1)
    while Events.BroadcastToPlayer(player, "OnPlayerInitialized", {islandPos = playersSpawns[player].pos}) ~= BroadcastEventResultCode.SUCCESS do
        Task.Wait(0.25)
    end
end

Events.Connect("SInventoryReady", OnInventoryReady)
Events.ConnectForPlayer("BSPS", BuildingSystem_OnPlaceStructure)

print("Building Mode Activated for the server (need the same message for players)")