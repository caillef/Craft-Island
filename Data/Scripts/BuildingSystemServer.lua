local placedObjects = {}

local propBuildingSystemList = script:GetCustomProperty("BuildingSystemList"):WaitForObject()
local BLOCK_SERIALIZER = script:GetCustomProperty("BlockSerializer"):WaitForObject().context
local INVENTORY = script:GetCustomProperty("InventoryScriptServer"):WaitForObject().context

local rawObjectsList = propBuildingSystemList:GetChildren()

local playersSpawns = {}

local WALL_SIZE = 200
local WALL_HEIGHT = 150

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

function GetInventoryMuidFromType(type)
    if rawObjectsList[type] and rawObjectsList[type]:GetCustomProperty("InventoryIconMuid") then
        return rawObjectsList[type]:GetCustomProperty("InventoryIconMuid")
    else
        return mysplit(rawObjectsList[type]:GetCustomProperty("Built"), ":")[1]
    end
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
        return
    end
    local viewRotation = player:GetViewWorldRotation()
    local angle = viewRotation.z + 135 -- Bring angle from 0 to 270
    local o = math.floor(angle / 90) % 4 -- Orientation between 0 and 3
    local a = o * 90
    local x,y,z = math.floor(pos.x), math.floor(pos.y), math.floor(pos.z)

    if a == 90 or a == 180 then
        y = y + 200
    end

    if a == 270 or a == 180 then
        x = x - 200
    end

    a = 0
    if list and list[z] and list[z][y] and list[z][y][x] and list[z][y][x][a] then
        return list[z][y][x][a].obj
    end
    
    a = 90
    y = y - WALL_SIZE
    if list and list[z] and list[z][y] and list[z][y][x] and list[z][y][x][a] then
        return list[z][y][x][a].obj
    end

    a = 180
    x = x + WALL_SIZE
    if list and list[z] and list[z][y] and list[z][y][x] and list[z][y][x][a] then
        return list[z][y][x][a].obj
    end

    a = 270
    y = y + WALL_SIZE
    if list and list[z] and list[z][y] and list[z][y][x] and list[z][y][x][a] then
        return list[z][y][x][a].obj
    end

    return nil
end

function Grow(objReplaced, muid)
    local type = GetTypeFromMuid(objReplaced.sourceTemplateId)
    local placedTypedObjects = placedObjects[type] or {}
    local pos = objReplaced:GetPosition()
    if placedTypedObjects and placedTypedObjects[pos.z] and placedTypedObjects[pos.z][pos.y] and placedTypedObjects[pos.z][pos.y][pos.x] then
        for angle,obj in pairs(placedTypedObjects[pos.z][pos.y][pos.x]) do
            if not (obj.obj or obj.obj:IsValid()) then
                placedTypedObjects[pos.z][pos.y][pos.x][angle] = nil
                return
            end
            if obj.obj.id == objReplaced.id then
                local player = obj.player
                local parent = objReplaced.parent
                local rotation = objReplaced:GetRotation()
                RemoveStructure(objReplaced)
                local newType = GetTypeFromMuid(mysplit(muid, ":")[1])
                local obj = World.SpawnAsset(muid, { parent=parent , position = pos, rotation = rotation })
                local newPlacedTypedObjects = placedObjects[newType] or {}
                newPlacedTypedObjects[pos.z] = newPlacedTypedObjects[pos.z] or {}
                newPlacedTypedObjects[pos.z][pos.y] = newPlacedTypedObjects[pos.z][pos.y] or {}
                newPlacedTypedObjects[pos.z][pos.y][pos.x] = newPlacedTypedObjects[pos.z][pos.y][pos.x] or {}
                newPlacedTypedObjects[pos.z][pos.y][pos.x][angle] = { obj=obj, player=player }
                placedObjects[newType] = newPlacedTypedObjects
            end
        end
        return
    end
    print("Error while growing "..objReplaced.name)
end

function PlaceObject(player, position, angle, type)
    local placedTypedObjects = placedObjects[type] or {}
    position = position - playersSpawns[player].island:FindChildByName("Structures"):GetWorldPosition()
    if placedTypedObjects[position.z] ~= nil and
       placedTypedObjects[position.z][position.y] ~= nil and
       placedTypedObjects[position.z][position.y][position.x] ~= nil and
       placedTypedObjects[position.z][position.y][position.x][angle] ~= nil then
        return false
    end

    local mandatorySurface = rawObjectsList[type]:GetCustomProperty("MustBeBuiltOn")
    if mandatorySurface then
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
        local surfaceObjects = placedObjects[surfaceType]
        local block = GetStructureOnCellFromList(surfaceObjects, position, player)
        if not block then
            --TODO: send player message saying that he can't build on this type of block
            print("Error: need block at that position to place this structure")
            return
        end
        RemoveStructure(block)        
    end

    local obj = World.SpawnAsset(rawObjectsList[type]:GetCustomProperty("Built"), { position = position, rotation = Rotation.New(0, 0, angle), parent = playersSpawns[player].island:FindChildByName("Structures") })

    placedTypedObjects[position.z] = placedTypedObjects[position.z] or {}
    placedTypedObjects[position.z][position.y] = placedTypedObjects[position.z][position.y] or {}
    placedTypedObjects[position.z][position.y][position.x] = placedTypedObjects[position.z][position.y][position.x] or {}
    placedTypedObjects[position.z][position.y][position.x][angle] = { obj=obj, player=player }
    placedObjects[type] = placedTypedObjects
    return true
end

function LoadPreviousBlocks(player)
    local storage = Storage.GetPlayerData(player) or {}
    storage.pBlocks = storage.pBlocks or ""
    local blocks = BLOCK_SERIALIZER.Block_DeserializeStructures(storage.pBlocks, playersSpawns[player].pos)
    for _,data in pairs(blocks) do
        PlaceObject(player, data.pos + playersSpawns[player].pos, data.angle, data.type)
    end
end

function RemoveStructure(obj)
    if not obj then
        print("Warning: Tried to removed nil object")
        return
    end

    local type = GetTypeFromMuid(obj.sourceTemplateId)
    if obj:IsValid() and type then
        local pos = obj:GetPosition()
        local placedTypedObjects = placedObjects[type]
        local angle = obj:GetRotation().z
        if placedTypedObjects and placedTypedObjects[pos.z] and placedTypedObjects[pos.z][pos.y] and placedTypedObjects[pos.z][pos.y][pos.x] and placedTypedObjects[pos.z][pos.y][pos.x][angle] then
            placedTypedObjects[pos.z][pos.y][pos.x][angle] = nil
        end
        obj:Destroy()
        return true
    end
    return false
end

-- local equippedItemsByPlayers = {}

-- function BuildingSystem_OnEquipInventory(player)
--     if equippedItemsByPlayers[player.name] == nil then
--         return
--     end
--     for _, equipment in ipairs(equippedItemsByPlayers[player.name]) do
--         if equipment:IsValid() then
--             equipment:SetPosition(Vector3.ZERO)
--             equipment:Equip(player)
--         end
--     end
-- end

-- function BuildingSystem_OnUnequipInventory(player)
--     equippedItemsByPlayers[player.name] = {}
--     for _, equipment in ipairs(player:GetEquipment()) do
--         if equipment:IsValid() then
--             table.insert(equippedItemsByPlayers[player.name], equipment)
--             equipment:Unequip()
--         end
--     end
-- end

function LoadIsland(slot)
    if slot == nil then
        return
    end
    local player = slot.player
    playersSpawns[player] = slot
    LoadPreviousBlocks(player)
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
    playersSpawns[player] = nil
end



function OnInventoryReady(player)
    while playersSpawns[player] == nil do
        Task.Wait(0.2)
    end
    while Events.BroadcastToPlayer(player, "OnPlayerInitialized", {islandPos = playersSpawns[player].pos}) ~= BroadcastEventResultCode.SUCCESS do
        Task.Wait(0.25)
    end
end

local SOIL_TYPE = 4
function OnItemDestroyed(data)
    if not data.harvest then
        return
    end
    for _,p in pairs(Game.GetPlayers()) do
        if p.id == data.p then
            PlaceObject(p, data.pos, data.angle, SOIL_TYPE)
        end
    end
end

Events.Connect("H", OnItemDestroyed)
Events.Connect("SInventoryReady", OnInventoryReady)
Events.ConnectForPlayer("BSPS", BuildingSystem_OnPlaceStructure)
-- Events.ConnectForPlayer("BSUI", BuildingSystem_OnUnequipInventory)
-- Events.ConnectForPlayer("BSEI", BuildingSystem_OnEquipInventory)

-- print("Building Mode Activated for the server (need the same message for players)")