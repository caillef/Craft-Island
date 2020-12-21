local vehicleSet = script:GetCustomProperty("VehicleSet"):WaitForObject()

local suspension = script:GetCustomProperty("Suspension"):WaitForObject()

local tieRod = script:GetCustomProperty("TieRod"):WaitForObject()
local tieTarget = script:GetCustomProperty("TieTarget"):WaitForObject()

local dragLink = script:GetCustomProperty("DragLink"):WaitForObject()
local dragTarget = script:GetCustomProperty("DragTarget"):WaitForObject()

local damperTop = script:GetCustomProperty("DamperTop"):WaitForObject()
local damperBottom = script:GetCustomProperty("DamperBottom"):WaitForObject()

local damperTop2 = script:GetCustomProperty("DamperTop2"):WaitForObject()
local damperBottom2 = script:GetCustomProperty("DamperBottom2"):WaitForObject()

local shockAbsorberTopA = script:GetCustomProperty("ShockAbosorberTopA"):WaitForObject()
local shockAbsorberBottomA = script:GetCustomProperty("ShockAbsorberBottomA"):WaitForObject()

local shockAbsorberTopB = script:GetCustomProperty("ShockAbsorberTopB"):WaitForObject()
local shockAbsorberBottomB = script:GetCustomProperty("ShockAbsorberBottomB"):WaitForObject()

local steeringArm = script:GetCustomProperty("SteeringArm"):WaitForObject()
local steeringTarget = script:GetCustomProperty("SteeringTarget"):WaitForObject()

local wheel = suspension:FindDescendantsByName("Wheel")
local steeringJoint = suspension:FindDescendantsByName("SteeringJoint")

local vehicleControllerServer = script:GetCustomProperty("VehicleControllerServer"):WaitForObject()

local body = script:GetCustomProperty("Body"):WaitForObject()

local reverseLightsOff = body:FindDescendantsByName("ReverseLightOff")
local reverseLightOn = body:FindDescendantsByName("ReverseLightOn")

local tailLightsOff = body:FindDescendantsByName("TailLightOff")
local tailLightsOn = body:FindDescendantsByName("TailLightOn")

local headLightsOff = body:FindDescendantsByName("HeadlightOff")
local headLightsOn = body:FindDescendantsByName("HeadlightOn")

local leftTurnOn = body:FindDescendantsByName("TurnLightLeftOn")
local leftTurnOff = body:FindDescendantsByName("TurnLightLeftOff")

local rightTurnOn = body:FindDescendantsByName("TurnLightRightOn")
local rightTurnOff = body:FindDescendantsByName("TurnLightRightOff")

local dirtVFX = suspension:FindDescendantsByName("DirtVFX")
local rumbleSFX = suspension:FindDescendantByName("RumbleSFX")
local turnSFX = vehicleSet:FindDescendantByName("TurnSignalSFX")

local enableFX = vehicleSet:GetCustomProperty("AddDirtFX")

local turnSignalState = false

local turnTask = nil

local dirtState = false

local lightState = false

local xMovement = 0.0
local zRotation = 0.0

local currentRotation = 0.0

local turnLeft = "ability_extra_30"
local turnRight = "ability_extra_32"

local difference = 0.0

local pressedBefore = false
local pressedListener = nil
local releasedListener = nil

local MAX_STEERING_ANGLE = 25

local driver = nil

function Initialize()

	tieRod:LookAtContinuous(tieTarget, false)
	dragLink:LookAtContinuous(dragTarget, false)
	
	damperTop:LookAtContinuous(damperBottom, false)
	damperBottom:LookAtContinuous(damperTop, false)
	
	damperTop2:LookAtContinuous(damperBottom2, false)
	damperBottom2:LookAtContinuous(damperTop2, false)
	
	shockAbsorberTopA:LookAtContinuous(shockAbsorberBottomA, false)
	shockAbsorberBottomA:LookAtContinuous(shockAbsorberTopA, false)
	
	shockAbsorberTopB:LookAtContinuous(shockAbsorberBottomB, false)
	shockAbsorberBottomB:LookAtContinuous(shockAbsorberTopB, false)
	
	steeringArm:LookAtContinuous(steeringTarget, false)
	
	turnTask = Task.Spawn(TurnSignalsTask, 0)
	turnTask.repeatCount = -1
	
end

function TurnSignalsTask()

	turnSignalState = vehicleControllerServer:GetCustomProperty("TurnSignals")
	
	if turnSignalState == 0 then
	
		ToggleLights(leftTurnOff, leftTurnOn)
		ToggleLights(rightTurnOff, rightTurnOn)
		
	elseif turnSignalState == 1 then
	
		ToggleLights(leftTurnOn, leftTurnOff)
		ToggleLights(rightTurnOff, rightTurnOn)
		turnSFX:Play()
		
		Task.Wait(0.5)
		
		ToggleLights(leftTurnOff, leftTurnOn)
		
		Task.Wait(0.5)
		
	elseif turnSignalState == 2 then
	
		ToggleLights(rightTurnOn, rightTurnOff)
		ToggleLights(leftTurnOff, leftTurnOn)
		turnSFX:Play()
		
		Task.Wait(0.5)
		
		ToggleLights(rightTurnOff, rightTurnOn)
		
		Task.Wait(0.5)
		
	elseif turnSignalState == 3 then

		ToggleLights(leftTurnOn, leftTurnOff)	
		ToggleLights(rightTurnOn, rightTurnOff)
		turnSFX:Play()
		
		Task.Wait(0.5)
		
		ToggleLights(leftTurnOff, leftTurnOn)
		ToggleLights(rightTurnOff, rightTurnOn)
		
		Task.Wait(0.5)
		
	end
	
end

function EnterVehicle(vehicleEquipment, player)

	pressedListener = player.bindingPressedEvent:Connect(BindingPressed)
	releasedListener = player.bindingReleasedEvent:Connect(BindingReleased)
	
	driver = player

end

function LeaveVehicle(vehicleEquipment, player)
	
	driver = nil
	
	pressedListener:Disconnect()
	releasedListener:Disconnect()
	
	xMovement = 0
	zRotation = 0
	
	pressedBefore = false
	
	for _, j in ipairs(steeringJoint) do
		
		j:RotateTo(Rotation.New(0, 0 , 0), 1, true) 
			
	end

end

function AdjustSteeringAngle()

	if zRotation < 0 then
	
		for _, j in ipairs(steeringJoint) do
		
			j:RotateTo(Rotation.New(0, 0 , -MAX_STEERING_ANGLE), 0.5 * (MAX_STEERING_ANGLE + j:GetRotation().z) / MAX_STEERING_ANGLE, true)
			
		end
		
	elseif  zRotation > 0 then
	
		for _, j in ipairs(steeringJoint) do
		
			j:RotateTo(Rotation.New(0, 0 , MAX_STEERING_ANGLE), 0.5 * (MAX_STEERING_ANGLE - j:GetRotation().z) / MAX_STEERING_ANGLE, true) 
			
		end
		
	else
	
		for _, j in ipairs(steeringJoint) do
		
			j:RotateTo(Rotation.New(0, 0 , 0), 0.5, true) 
			
		end
		
	end

end

function BindingPressed(player, binding)

	if binding == turnLeft then
	
		zRotation = zRotation - 1
		pressedBefore = true
	
	elseif binding == turnRight then
	
		zRotation = zRotation + 1
		pressedBefore = true
					
	end
	
	AdjustSteeringAngle()

end

function BindingReleased(player, binding)

	if not pressedBefore then
	
		return
		
	end

	if binding == turnLeft then
	
		zRotation = zRotation + 1
	
	elseif binding == turnRight then
	
		zRotation = zRotation - 1
					
	end
	
	AdjustSteeringAngle()

end

function ToggleLights(onLights, offLights)

	for _, l in ipairs(onLights) do
		
		l.visibility = Visibility.INHERIT
			
	end
		
	for _, l in ipairs(offLights) do
		
		l.visibility = Visibility.FORCE_OFF
			
	end
	
end

function Tick(dt)

	if not driver then
	
		if dirtState then
	
			for _, d in ipairs(dirtVFX) do
			
				d:Stop()
				
			end
			
			rumbleSFX:Stop()
			
			dirtState = false
			
		end
	
		ToggleLights(headLightsOff, headLightsOn)
		ToggleLights(tailLightsOff, tailLightsOn)
		ToggleLights(reverseLightsOff, reverseLightOn)
	
		return
		
	end
	
	if driver ~= Game.GetLocalPlayer() then
	
		zRotation = vehicleControllerServer:GetCustomProperty("zRotation")
		AdjustSteeringAngle()
	
	end
	
	lightState = vehicleControllerServer:GetCustomProperty("Lights")
	
	if lightState then
	
		ToggleLights(headLightsOn, headLightsOff)

	else 
	
		ToggleLights(headLightsOff, headLightsOn)
			
	end
	
	difference = (driver:GetWorldRotation() * Vector3.FORWARD * driver:GetVelocity().size * 1.1) - driver:GetVelocity()
	
	xMovement = driver:GetVelocity().size/100 * 2
	
	rumbleSFX.pitch = driver:GetVelocity().size/2
	
	currentRotation = steeringJoint[1]:GetRotation().z
	
	if xMovement > 10 and driver.isGrounded and not dirtState and enableFX then
	
		for _, d in ipairs(dirtVFX) do
		
			d:Play()
			
		end
		
		rumbleSFX:Play()
		
		dirtState = true
	
	elseif xMovement < 10 or not driver.isGrounded then
	
		for _, d in ipairs(dirtVFX) do
		
			d:Stop()
			
		end
		
		rumbleSFX:Stop()
	
		dirtState = false
		
	end
	
	if difference.size > driver:GetVelocity().size then
	
		xMovement = -xMovement
		
		ToggleLights(reverseLightOn, reverseLightsOff)
		
	else
		
		ToggleLights(reverseLightsOff, reverseLightOn)
		
		if not lightState or xMovement > 5 then
			
			ToggleLights(tailLightsOff, tailLightsOn)
			
		elseif lightState then
		
			ToggleLights(tailLightsOn, tailLightsOff)
			
		end
		
	end
	
	for _, w in ipairs(wheel) do
	
		w:RotateTo(w:GetRotation() + Rotation.New(xMovement, 0 , 0), 0.05, true)
		
	end

end


vehicleSet.unequippedEvent:Connect(LeaveVehicle)
vehicleSet.equippedEvent:Connect(EnterVehicle)

Initialize()