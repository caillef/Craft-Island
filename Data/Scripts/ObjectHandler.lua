local APIO = require(script:GetCustomProperty("APIObjects"))

local objList = {}

local function PlaceObject(position, angle, type, id, islandPos, parent)
    local muid = APIO.OBJECTS[type].templateMuid
    islandPos = islandPos or Vector3.ZERO
	position = position + islandPos

    local obj = parent:SpawnSharedAsset(muid, { position = position, rotation = Rotation.New(0, 0, angle) })
	Events.Broadcast("SetObjMetadata", obj, id)
	objList[parent.id] = objList[parent.id] or {}
    objList[parent.id][id] = obj
end
Events.Connect("PlaceObject", PlaceObject)

local function RemoveObject(id)
    local obj = objList[id]
    if Object.IsValid(obj) then
		obj.parent:DestroySharedAsset(obj)
   	end
	objList[id] = nil
end
Events.Connect("RemoveObject", RemoveObject)

function Clear(parentId)
	if not objList[parentId] then return end
	for id,_ in pairs(objList[parentId]) do
		RemoveObject(id)
	end
end
Events.Connect("ClearIsland", Clear)