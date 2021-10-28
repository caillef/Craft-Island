local STATIC_CONTEXT = script.parent
local APIB = require(script:GetCustomProperty("APIBuildingSystem"))
local APIO = require(script:GetCustomProperty("APIObjects"))
local STRUCTURES = STATIC_CONTEXT:FindChildByName("Structures")

local objList = {}

local function PlaceObject(position, angle, type, id)
    local parent = STRUCTURES
    local muid = APIO.OBJECTS[type].templateMuid
    local obj = World.SpawnAsset(muid, { position = position, rotation = Rotation.New(0, 0, angle), parent = parent })
	Events.Broadcast("SetObjMetadata", obj, id)
    objList[id] = obj
end

function RemoveObject(id)
    local obj = objList[id]
    if obj and obj:IsValid() then
		obj:Destroy()
   	end
	objList[id] = nil
end

function OnChangeProperty(obj, name)
	local value = obj:GetCustomProperty(name)
	if name == "SerializedObjects" then
		local blocks = { CoreString.Split(value, { delimiters={" "}, removeEmptyResults = true }) }
		for _,b in ipairs(blocks) do
			local data = APIB.DeserializeObjectToPlace(b)
			if not objList[data.id] then
				local pos = Vector3.New(data.x, data.y, data.z)
				PlaceObject(pos, data.angle, data.type, data.id)
			end
		end
		return
	end
	if name == "ToRemoveObjectIds" then
		local ids = { CoreString.Split(value, { delimiters={" "}, removeEmptyResults = true }) }
		for _,id in ipairs(ids) do
			RemoveObject(tonumber(id))
		end
		return
	end
end

STATIC_CONTEXT.customPropertyChangedEvent:Connect(OnChangeProperty)