local STATIC_CONTEXT = script.parent
local APIB = require(script:GetCustomProperty("APIBuildingSystem"))
local APIO = require(script:GetCustomProperty("APIObjects"))
local STRUCTURES = STATIC_CONTEXT:FindChildByName("Structures")

local objList = {}

local function PlaceObject(position, angle, type, id)
	if objList[id] then return end
    local parent = STRUCTURES
    local muid = APIO.OBJECTS[type].templateMuid
    local obj = World.SpawnAsset(muid, { position = position, rotation = Rotation.New(0, 0, angle), parent = parent })
	Events.Broadcast("SetObjMetadata", obj, id)
    objList[id] = obj
end

local function HandleAddObjects(value)
	local blocks = { CoreString.Split(value, { delimiters={" "}, removeEmptyResults = true }) }
	for _,b in ipairs(blocks) do
		local data = APIB.DeserializeObjectToPlace(b)
		if not objList[data.id] then
			local pos = Vector3.New(data.x, data.y, data.z)
			PlaceObject(pos, data.angle, data.type, data.id)
		end
	end
end

local function RemoveObject(id)
    local obj = objList[id]
    if Object.IsValid(obj) then
		obj:Destroy()
   	end
	objList[id] = nil
end

function HandleRemoveObjects(value)
	local ids = { CoreString.Split(value, { delimiters={" "}, removeEmptyResults = true }) }
	for _,id in ipairs(ids) do
		Task.Spawn(function()
			RemoveObject(tonumber(id))
		end)
	end
end

local HANDLERS = {
	SerializedObjects = HandleAddObjects,
	ToRemoveObjectIds = HandleRemoveObjects
}

local function OnChangeProperty(obj, name)
	local func = HANDLERS[name]
	if not func then return end
	local value = obj:GetCustomProperty(name)
	func(value)
end
STATIC_CONTEXT.customPropertyChangedEvent:Connect(OnChangeProperty)