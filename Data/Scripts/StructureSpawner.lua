local pos = script.parent:GetWorldPosition()
local rotation = script.parent:GetWorldRotation()

local objects = {}
for i=1,100 do
	if not script.parent.parent:GetCustomProperty("Prop"..tostring(i)) then
		break
	end
	table.insert(objects, tostring(script.parent.parent:GetCustomProperty("Prop"..tostring(i))))
end

local PARENT = script.parent.parent:GetCustomProperty("ParentProp"):WaitForObject()
local SpawnDelay = script.parent.parent:GetCustomProperty("SpawnDelay")

local obj

function Array_GetRandomValue(list)
	return list[1 + math.floor(math.random() * #list)]
end

function SpawnObject()
	obj = World.SpawnAsset(Array_GetRandomValue(objects), { position=pos, rotation=rotation, parent=PARENT })
	obj.destroyEvent:Connect(OnDestroyProp)
end

function OnDestroyProp(prop)
	local delay = SpawnDelay.x + math.random() * (SpawnDelay.y - SpawnDelay.x)
	Task.Wait(delay)
	SpawnObject()
end

SpawnObject()
