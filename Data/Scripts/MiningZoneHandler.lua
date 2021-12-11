local APIO = require(script:GetCustomProperty("APIObjects"))
local MINING_DATA = script:GetCustomProperty("MINING_DATA"):WaitForObject()
local ROCK_STRUCTURES_GROUP = script:GetCustomProperty("RockStructures"):WaitForObject()
local SPAWN_DELAY = MINING_DATA:GetCustomProperty("SpawnDelay")
local SPAWNERS = script:GetCustomProperty("Spawners"):WaitForObject():GetChildren()
local SPAWNERS_DATA = {}

local objects = {}
for i=1,100 do
	if not MINING_DATA:GetCustomProperty("Prop"..tostring(i)) then
		break
	end
	table.insert(objects, tostring(MINING_DATA:GetCustomProperty("Prop"..tostring(i))))
end

function Array_GetRandomValue(list)
	return list[1 + math.floor(math.random() * #list)]
end

function SpawnObject(key)
	local pos = SPAWNERS_DATA[key].pos
	local rotation = SPAWNERS_DATA[key].rotation
	local rndIdname = Array_GetRandomValue(objects)
	Events.Broadcast("PlaceStructure", pos, rotation.z, APIO.QueryObject(rndIdname).id, ROCK_STRUCTURES_GROUP.id)
end

function SpawnObjectWithDelay(delay, pos, angle)
	Task.Wait(delay)
	local rndIdname = Array_GetRandomValue(objects)
	Events.Broadcast("PlaceStructure", pos, angle, APIO.QueryObject(rndIdname).id, ROCK_STRUCTURES_GROUP.id)
end

Events.Connect("RespawnRockBehaviour", function(pos, angle)
	local delay = SPAWN_DELAY.x + math.random() * (SPAWN_DELAY.y - SPAWN_DELAY.x)
	SpawnObjectWithDelay(delay, pos, angle)
end)

for key,spawner in ipairs(SPAWNERS) do
	SPAWNERS_DATA[key] = {
		pos = spawner:GetWorldPosition(),
		rotation = spawner:GetWorldRotation()
	}
	SpawnObject(key)
end

