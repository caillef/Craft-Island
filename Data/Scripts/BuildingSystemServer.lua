
local INVENTORY = script:GetCustomProperty("InventoryScriptServer"):WaitForObject().context
local propSharedKeyIslands = script:GetCustomProperty("SharedKeyIslands")

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

local _queryObjectFunction
function QueryObject(id)
    _queryObjectFunction = _G["caillef.craftisland.queryobject"]
    while _queryObjectFunction == nil do
        Task.Wait(0.1)
        _queryObjectFunction = _G["caillef.craftisland.queryobject"]
    end
    return _queryObjectFunction(id)
end

local placedObjects = {}
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

function GetTypeFromMuid(muid)
    for key,obj in pairs(GetObjectsList()) do
        if obj.templateMuid == muid then
            return key
        end
    end
    return nil
end

function AssignPlayerToObject(obj, player)
    if not player or not player:IsValid() then return end
    local growingScript = obj:FindDescendantByName("GrowingAsset")
    if not growingScript then return end
    growingScript.context.SetOwner(player)
end

function SaveIsland(player)
    if not player or not player:IsValid() then print("Warning: tried to save island of not valid player") return end
    local island = playersSpawns[player]
    local storage = Storage.GetSharedPlayerData(propSharedKeyIslands, player)
    local objectsList = {}
    for _,obj in pairs(island:FindChildByName("Static Structures"):GetChildren()) do
        table.insert(objectsList, obj)
    end
    for _,obj in pairs(island:FindChildByName("Structures"):GetChildren()) do
        table.insert(objectsList, obj)
    end
    storage.pBlocks = GetBlockSerializer().SerializeList(objectsList, island:GetWorldPosition())
    if Storage.SizeOfData(storage) < 16000 then
        Storage.SetSharedPlayerData(propSharedKeyIslands, player, storage)
    else
        print("Warning: reached limit")
    end
end

function BuildingSystem_OnPlaceStructure(player, serializedBlock)
    local data = GetBlockSerializer().Deserialize(serializedBlock, playersSpawns[player]:GetWorldPosition())
    if not data then return end
    if not INVENTORY.PlayerHasItems(player, { id=data.type }) or
       not PlaceObject(player, data.pos, data.angle, data.type) then
        return
    end
    INVENTORY.PlayerRemoveItems(player, { id=data.type } )
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

function Grow(objReplaced, newIdName, player)
    if not player or not player:IsValid() then return end
    if not objReplaced or not objReplaced:IsValid() then
        print("Warning: objReplaced has already been destroyed")
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
                RemoveStructure(player, objReplaced)
                local newObj = QueryObject(newIdName)
                local obj = World.SpawnAsset(newObj.templateMuid, { parent=parent , position = pos, rotation = rotation })
                AssignPlayerToObject(obj, player)
                local newPlacedTypedObjects = placedObjects[player][newObj.id] or {}
                newPlacedTypedObjects[pos.z] = newPlacedTypedObjects[pos.z] or {}
                newPlacedTypedObjects[pos.z][pos.y] = newPlacedTypedObjects[pos.z][pos.y] or {}
                newPlacedTypedObjects[pos.z][pos.y][pos.x] = newPlacedTypedObjects[pos.z][pos.y][pos.x] or {}
                newPlacedTypedObjects[pos.z][pos.y][pos.x][angle] = { obj=obj, player=player }
                placedObjects[player][newObj.id] = newPlacedTypedObjects
                SaveIsland(player)
                return
            end
        end
    end
    print("Error while growing "..objReplaced.name)
    print(placedTypedObjects, placedTypedObjects[pos.z], placedTypedObjects[pos.z][pos.y], placedTypedObjects[pos.z][pos.y][pos.x])
end

Events.Connect("Grow", Grow)

function CountNbStructures(placedObjects)
    local sum = 0
    for _,type in pairs(placedObjects) do
        for _,z in pairs(type) do
            for _,y in pairs(z) do
                for _,x in pairs(y) do
                    for _,angle in pairs(x) do
                        sum = sum + 1
                    end
                end
            end    
        end
    end
    return sum
end

function PlaceObject(player, position, angle, type, isLoadingIsland)
    if not player or not player:IsValid() then return end
    angle = getAlignedAngle(angle)
    placedObjects[player] = placedObjects[player] or {}

    if not isLoadingIsland and CountNbStructures(placedObjects[player]) >= 2000 then
        while player and player:IsValid() and Events.BroadcastToPlayer(player, "BSLimit") ~= BroadcastEventResultCode.SUCCESS do
            Task.Wait(1)
        end
        return
    end

    local placedTypedObjects = placedObjects[player][type] or {}
    position = position - playersSpawns[player]:FindChildByName("Static Structures"):GetWorldPosition()
    if placedTypedObjects[position.z] ~= nil and
       placedTypedObjects[position.z][position.y] ~= nil and
       placedTypedObjects[position.z][position.y][position.x] ~= nil and
       placedTypedObjects[position.z][position.y][position.x][angle] ~= nil then
        return false
    end

    local mandatorySurface = GetObjectsList()[type].buildConditions and GetObjectsList()[type].buildConditions.mustBeBuiltOn or nil
    if not playersSpawns[player].serverUserData.isLoading and mandatorySurface then
        local surfaceObjects = placedObjects[player][mandatorySurface] or {}
        local block = GetStructureOnCellFromList(surfaceObjects, position, player)
        if not block or block.player ~= player then
            --TODO: send player message saying that he can't build on this type of block
            return
        end
        RemoveStructure(player, block.obj)        
    end

    local obj = World.SpawnAsset(GetObjectsList()[type].templateMuid, { position = position, rotation = Rotation.New(0, 0, angle), parent = playersSpawns[player]:FindChildByName(GetObjectsList()[type].isNetworked and "Structures" or "Static Structures") })
    AssignPlayerToObject(obj, player)
    placedTypedObjects[position.z] = placedTypedObjects[position.z] or {}
    placedTypedObjects[position.z][position.y] = placedTypedObjects[position.z][position.y] or {}
    placedTypedObjects[position.z][position.y][position.x] = placedTypedObjects[position.z][position.y][position.x] or {}
    placedTypedObjects[position.z][position.y][position.x][angle] = { obj=obj, player=player }
    placedObjects[player][type] = placedTypedObjects

    if not isLoadingIsland then
        SaveIsland(player)
    end
    return true
end


function LoadPreviousBlocks(player)
    local storage = Storage.GetSharedPlayerData(propSharedKeyIslands, player) or {}
    storage.pBlocks = storage.pBlocks or "v2*25|0=-5,-3,0|270=-7,6,0|90=0,2,0_12|0=-2,-1,0;-2,0,0;-2,-2,0"
    local blocks = GetBlockSerializer().DeserializeList(storage.pBlocks, playersSpawns[player]:GetWorldPosition())
    local i = 0
    for _,data in pairs(blocks) do
        PlaceObject(player, data.pos, data.angle, data.type, true)
        i = i + 1
    end
end

function RemoveStructure(player, obj)
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
Events.ConnectForPlayer("RemoveStructure", RemoveStructure)

function LoadIsland(island)
    if island == nil then AddLogEntry("Tried loading island but got nil") return end
    local player = island.serverUserData.player
    if not player or not player:IsValid() then return end
    playersSpawns[player] = island
    playersSpawns[player].serverUserData.isLoading = true
    LoadPreviousBlocks(player)
    playersSpawns[player].serverUserData.isLoading = false
end
Events.Connect("BSLI", LoadIsland)

function UnloadIsland(slot)
    if slot == nil then AddLogEntry("Tried unloading slot but got nil") return end
    local player = slot.player
    SaveIsland(player)
    for _,obj in ipairs(slot.island:FindDescendantByName("Static Structures"):GetChildren()) do
        obj:Destroy()
    end
    for _,obj in ipairs(slot.island:FindDescendantByName("Structures"):GetChildren()) do
        obj:Destroy()
    end
    placedObjects[player] = nil 
    playersSpawns[player] = nil
end
Events.Connect("BSULI", UnloadIsland)


function OnInventoryReady(player)
    while playersSpawns[player] == nil do
        Task.Wait(0.1)
    end
    Task.Wait(math.random())
    while player and player:IsValid() and Events.BroadcastToPlayer(player, "OnPlayerInitialized", {islandPos = playersSpawns[player]:GetWorldPosition() }) ~= BroadcastEventResultCode.SUCCESS do
        Task.Wait(1)
    end
end

Events.Connect("SInventoryReady", OnInventoryReady)
Events.ConnectForPlayer("BSPS", BuildingSystem_OnPlaceStructure)

print("Building Mode Activated for the server (need the same message for players)")