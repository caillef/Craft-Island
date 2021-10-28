local MINING_DATA = script:GetCustomProperty("MINING_DATA"):WaitForObject()
local PARENT = script:GetCustomProperty("Parent"):WaitForObject()
local BS = script:GetCustomProperty("BuildingSystemServer"):WaitForObject().context
local APIO = require(script:GetCustomProperty("APIObjects"))

local objects = {}
for i=1,100 do
	if not MINING_DATA:GetCustomProperty("Prop"..tostring(i)) then
		break
	end
	table.insert(objects, tostring(MINING_DATA:GetCustomProperty("Prop"..tostring(i))))
end
local SpawnDelay = MINING_DATA:GetCustomProperty("SpawnDelay")

local SPAWNERS = script:GetCustomProperty("Spawners"):WaitForObject():GetChildren()
local SPAWNERS_DATA = {}

function Array_GetRandomValue(list)
	return list[1 + math.floor(math.random() * #list)]
end

function SpawnObject(key)
	local pos = SPAWNERS_DATA[key].pos
	local rotation = SPAWNERS_DATA[key].rotation
	local rndIdname = Array_GetRandomValue(objects)
	Events.Broadcast("PlaceStructure", pos, rotation.z, APIO.QueryObject(rndIdname).id, "5210DF209EBD7C7B:Rocks")
end

function OnDestroyProp(prop)
	local key = prop.serverUserData.key
	local delay = SpawnDelay.x + math.random() * (SpawnDelay.y - SpawnDelay.x)
	Task.Wait(delay)
	SPAWNERS_DATA[key].obj = SpawnObject(key)
end

for key,spawner in ipairs(SPAWNERS) do
	SPAWNERS_DATA[key] = {
		pos = spawner:GetWorldPosition(),
		rotation = spawner:GetWorldRotation()
	}
	SPAWNERS_DATA[key].obj = SpawnObject(key)
end

