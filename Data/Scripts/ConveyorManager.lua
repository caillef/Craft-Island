local OUTPUTS = World.FindObjectsByName("Output")
local INPUTS = World.FindObjectsByName("Input")
local CONVEYORBELTS = World.FindObjectsByName("Conveyor Belt")
local OFFSETS = { Vector3.New(0, 100, 0), Vector3.New(-100, 0, 0), Vector3.New(0, -100, 0), Vector3.New(100, 0, 0) }

local function RemoveOre(ore)
	ore.visibility = Visibility.FORCE_OFF
end

local CONVEYOR_BELT_SPEED = 1

local ORES_MESHES = {}
for i=1,50 do
	local ore = World.SpawnAsset("6E86D4CEBA67C9F1:Ore", { position = Vector3.ONE * 10000 })
	RemoveOre(ore)
	ore.collision = Collision.FORCE_OFF
	table.insert(ORES_MESHES, ore)
end

for _,o in ipairs(OUTPUTS) do
	o.serverUserData.next = 0
end
for _,o in ipairs(INPUTS) do
	o.serverUserData.next = 0
end

print(#OUTPUTS, "outputs")
print(#INPUTS, "inputs")
print(#CONVEYORBELTS, "conveyor belts")

-- rotation   0 Y++
-- rotation  90 X--
-- rotation 180 Y--
-- rotation 270 X++

local props = {}

local function GetNextOreMesh()
	for _,obj in pairs(ORES_MESHES) do
		if obj.visibility == Visibility.FORCE_OFF then
			obj.visibility = Visibility.INHERIT
			return obj
		end
	end
	return nil
end

local function AddPropTo(target, nb)
	target.serverUserData.props = target.serverUserData.props or 0
	target.serverUserData.props = target.serverUserData.props + (nb or 1)
end

function FindBeltAtPos(pos)
	for _,belt in ipairs(CONVEYORBELTS) do
		if belt:GetWorldPosition() == pos then return belt end
	end
	return nil
end

function GetAvailableBelt(t)
	local r = math.floor(math.ceil((t:GetWorldRotation().z + 3600) % 360) / 90)
	local offset = OFFSETS[r + 1]	
	local belt = FindBeltAtPos(t:GetWorldPosition() + offset)
	if not belt then print("Warning: can't find connected belt.") return end
	return belt
end

function Tick()
	elapsed = time()
	
	for _,input in ipairs(INPUTS) do
		if elapsed >= input.serverUserData.next then
			local belt = GetAvailableBelt(input)
			if belt and belt.serverUserData.prop then
				local ore = belt.serverUserData.prop
				RemoveOre(ore)
				belt.serverUserData.prop = nil
				input.serverUserData.props = input.serverUserData.props or 0
				input.serverUserData.props = input.serverUserData.props + 1
				input.serverUserData.next = elapsed + 1
				input:FindChildByType("WorldText").text = tostring(input.serverUserData.props)
			end
		end
	end
	
	for _,belt1 in ipairs(CONVEYORBELTS) do
		if belt1.serverUserData.elapsed ~= elapsed and belt1.serverUserData.prop then
			local belt2 = GetAvailableBelt(belt1)
			if belt2 and not belt2.serverUserData.prop and belt2.serverUserData.elapsed ~= elapsed then
				local ore = belt1.serverUserData.prop
				ore:MoveTo(belt2:GetWorldPosition(), CONVEYOR_BELT_SPEED + 0.05)
				belt2.serverUserData.prop = belt1.serverUserData.prop
				belt2.serverUserData.elapsed = elapsed
				belt1.serverUserData.prop = nil
			end
		end
	end

	for _,output in ipairs(OUTPUTS) do
		if elapsed >= output.serverUserData.next and output.serverUserData.props and output.serverUserData.props >= 1 then
			local belt = GetAvailableBelt(output)
			if belt and not belt.serverUserData.prop then
				local ore = GetNextOreMesh()
				ore:SetWorldPosition(belt:GetWorldPosition())
				belt.serverUserData.prop = ore
				belt.serverUserData.elapsed = elapsed
				output.serverUserData.props = output.serverUserData.props - 1
				output.serverUserData.next = elapsed + 1
				output:FindChildByType("WorldText").text = tostring(output.serverUserData.props)
			end
		end
	end
	Task.Wait(CONVEYOR_BELT_SPEED)
end

--AddPropTo(OUTPUTS[1], 20)