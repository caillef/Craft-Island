local STATIC_CONTEXT = script.parent
local APIO = require(script:GetCustomProperty("APIObjects"))
local STRUCTURES = STATIC_CONTEXT:FindChildByName("Structures")
local APIBSerializer = require(script:GetCustomProperty("APIBlockSerializer"))

local objList = {}
local islandPos

local function PlaceObject(position, angle, type, id)
    local muid = APIO.OBJECTS[type].templateMuid
    local obj = World.SpawnAsset(muid, { position = position, rotation = Rotation.New(0, 0, angle), parent = STRUCTURES })
	Events.Broadcast("SetObjMetadata", obj, id)
    objList[id] = obj
end

local function HandleAddObjects(value)
	if STRUCTURES.parent:GetCustomProperty("Owner") and not islandPos then
		Task.Wait(0.1)
	end
	islandPos = islandPos or Vector3.ZERO
	for i=1,#value,15 do
		local b = value:sub(i, i + 14)
		local data = APIBSerializer.DeserializeWithId(b, islandPos)
		if not objList[data.id] then -- do nothing if already spawned
			local pos = Vector3.New(data.pos.x, data.pos.y, data.pos.z)
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

function Clear()
	for id,_ in pairs(objList) do
		RemoveObject(id)
	end
end

function SetIslandPos(pos)
	islandPos = pos
end

local HANDLERS = {
	SerializedObjects = HandleAddObjects,
	ToRemoveObjectIds = HandleRemoveObjects,
	Clear = Clear,
	IslandPos = SetIslandPos
}

local function OnChangeProperty(obj, name)
	local func = HANDLERS[name]
	if not func then return end
	local value = obj:GetCustomProperty(name)
	func(value)
end
STATIC_CONTEXT.customPropertyChangedEvent:Connect(OnChangeProperty)

islandPos = STATIC_CONTEXT:GetCustomProperty("IslandPos")