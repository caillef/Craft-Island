local STATIC_CONTEXT = script.parent
local APIO = require(script:GetCustomProperty("APIObjects"))
local STRUCTURES = STATIC_CONTEXT:FindChildByName("Structures")

local objList = {}

local ISLAND_ID = STRUCTURES.id

local function PlaceObject(islandId, position, angle, type, id, islandPos)
	if ISLAND_ID ~= islandId then return end
	islandPos = islandPos or Vector3.ZERO
	position = position + islandPos
    local muid = APIO.OBJECTS[type].templateMuid
    local obj = World.SpawnAsset(muid, { position = position, rotation = Rotation.New(0, 0, angle), parent = STRUCTURES })
	Events.Broadcast("SetObjMetadata", obj, id)
    objList[id] = obj
end
Events.Connect("PlaceObject", PlaceObject)

local function RemoveObject(id)
    local obj = objList[id]
    if Object.IsValid(obj) then
		obj:Destroy()
   	end
	objList[id] = nil
end
Events.Broadcast("RemoveObject", RemoveObject)

function Clear()
	for id,_ in pairs(objList) do
		RemoveObject(id)
	end
end