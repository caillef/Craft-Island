local vehicleSet = script:GetCustomProperty("VehicleSet"):WaitForObject()

local driverSettings = script:GetCustomProperty("DriverSettings"):WaitForObject()

local vehicleClientAnchor = script:GetCustomProperty("VehicleClientAnchor"):WaitForObject()

local pickupTrigger = script:GetCustomProperty("PickupTrigger"):WaitForObject()

local allowExitingVehicle = vehicleSet:GetCustomProperty("AllowExitingVehicle")
local exitingPosition = vehicleSet:GetCustomProperty("ExitingPosition")

local turnRatePerTick = vehicleSet:GetCustomProperty("TurnRate")
local topSpeed = vehicleSet:GetCustomProperty("TopSpeed")
local acceleration = vehicleSet:GetCustomProperty("Acceleration")

local friction = vehicleSet:GetCustomProperty("Friction")
local maxClimbAngle = vehicleSet:GetCustomProperty("MaxClimbAngle")
local gravity = vehicleSet:GetCustomProperty("Gravity")

local dock = World.FindObjectByName("VehicleAnchorDock")
local defaultSettings = dock:GetCustomProperty("DefaultSettings"):WaitForObject()

local hornSFX = script:GetCustomProperty("Horn")

local xMovement = 0.0
local zRotation = 0.0

local turnLeft = "ability_extra_30"
local turnRight = "ability_extra_32"

local leave = "ability_extra_33"

local lights = "ability_extra_38"

local signalLeft = "ability_extra_20"
local signalRight = "ability_extra_22"
local hazard = "ability_extra_40"
local horn = "ability_extra_35"

local leftToggle = false
local rightToggle = false
local hazardToggle = false

local difference = nil

local pressedBefore = false
local pressedListener = nil
local releasedListener = nil

local accumulatedDt = 0

local oldVisiblity = true

local lightToggle = false

local driver = nil

local parkPosition = vehicleSet:GetWorldPosition()
local parkRotation = vehicleSet:GetWorldRotation()
--[[

		Vehicle Controls

		Forward, Turn Left, Backward, Turn Right:
	 	ability_extra_21 = W
	 	ability_extra_30 = A
	 	ability_extra_31 = S
	 	ability_extra_32 = D
	 	
	 	Exit Vehicle:
	 	ability_extra_33 = F
	 	
	 	Toggle Lights:
	 	ability_extra_38 = L
	 	
	 	Left Turn Signal, Right Turn Signal, Hazard Lights:
	 	ability_extra_20 = Q
	 	ability_extra_22 = E
	 	ability_extra_40 = X
	 	
	 	Horn
	 	ability_extra_35 = H
	 	
]]

function StartVehicle(vehicleEquipment, player)
	oldVisiblity = player:GetVisibility()
	player:SetVisibility(false, true)
	
	player.movementControlMode = MovementControlMode.NONE
	
	Task.Wait()
	
	player:SetVelocity(Vector3.ZERO)
	
	Task.Wait()
	
	player:SetWorldPosition(parkPosition)
	player:SetWorldRotation(parkRotation)
	
	Task.Wait()

	if vehicleClientAnchor.parent ~= dock then

		vehicleClientAnchor:Detach()
		vehicleClientAnchor.parent = dock
		
	end
	
	Task.Wait(0.5)
	
	driverSettings:ApplyToPlayer(player)
	
	player.animationStance = "unarmed_sit_car_low"
	player.maxWalkSpeed = topSpeed
	player.maxAcceleration = acceleration
	player.groundFriction = friction
	player.walkableFloorAngle = maxClimbAngle
	player.gravityScale = gravity
	
	pressedListener = player.bindingPressedEvent:Connect(BindingPressed)
	releasedListener = player.bindingReleasedEvent:Connect(BindingReleased)
	
	driver = player

end

function LeaveVehicle(vehicleEquipment, player)
	
	player:SetVisibility(oldVisiblity, true)
	
	vehicleSet.visibility = Visibility.INHERIT
	player:SetWorldPosition(vehicleSet:GetWorldRotation() * exitingPosition + vehicleSet:GetWorldPosition())
	player:SetWorldRotation(vehicleSet:GetWorldRotation())
	
	vehicleClientAnchor.parent = vehicleSet
	vehicleClientAnchor:SetPosition(Vector3.ZERO)
	vehicleClientAnchor:SetRotation(Rotation.New(0, 0, 0))
	
	driver.animationStance = "unarmed_stance"
	defaultSettings:ApplyToPlayer(driver)
	
	driver = nil
	
	pressedListener:Disconnect()
	releasedListener:Disconnect()
	
	parkPosition = vehicleSet:GetWorldPosition()
	parkRotation = vehicleSet:GetWorldRotation()
	
	xMovement = 0
	zRotation = 0
	
	if not hazardToggle then
	
		script:SetNetworkedCustomProperty("TurnSignals", 0)
		
	end
	
	pressedBefore = false
	leftToggle = false
	rightToggle = false
			
	Task.Wait(1)
		
	if pickupTrigger:IsValid() then
	
		pickupTrigger.collision = Collision.INHERIT
		
	end

end

function DestroyVehicle(player)
	
	if driver then
	
		if player ~= driver then
		
			return
			
		end
		
		vehicleSet:Destroy()
		
	end

end

function BindingPressed(player, binding)

	if binding == turnLeft then
	
		zRotation = zRotation - 1
		pressedBefore = true
	
	elseif binding == turnRight then
	
		zRotation = zRotation + 1
		pressedBefore = true
		
	elseif binding == leave and allowExitingVehicle and driver.isGrounded then
	
		vehicleSet:Unequip()
		
	elseif binding == horn then
	
		local hornNoise = World.SpawnAsset(hornSFX, {position = driver:GetWorldPosition()})
		hornNoise.lifeSpan = 1
		
	elseif binding == lights then
		
		if lightToggle then
		
			lightToggle = false
			
		else
		
			lightToggle = true
			
		end
		
		script:SetNetworkedCustomProperty("Lights", lightToggle)
		
	elseif binding == signalLeft then
	
		if not leftToggle then
	
			script:SetNetworkedCustomProperty("TurnSignals", 1)
			
			leftToggle = true
			
		else
		
			script:SetNetworkedCustomProperty("TurnSignals", 0)
			
			leftToggle = false
			
		end
		
	elseif binding == signalRight then
	
		if not rightToggle then
		
			script:SetNetworkedCustomProperty("TurnSignals", 2)
			
			rightToggle = true
			
		else
		
			script:SetNetworkedCustomProperty("TurnSignals", 0)
			
			rightToggle = false
			
		end
		
	elseif binding == hazard then
	
		if not hazardToggle then
	
			script:SetNetworkedCustomProperty("TurnSignals", 3)
			
			hazardToggle = true
			
		else
		
			script:SetNetworkedCustomProperty("TurnSignals", 0)
			
			hazardToggle = false
			
		end	
			
	end

end

function BindingReleased(player, binding)

	if not pressedBefore then
	
		return
		
	end

	if binding == turnLeft then
	
		zRotation = zRotation + 1
		
		if leftToggle then
		
			script:SetNetworkedCustomProperty("TurnSignals", 0)
			
			leftToggle = false
			
		end
	
	elseif binding == turnRight then
	
		zRotation = zRotation - 1
		
		if rightToggle then
		
			script:SetNetworkedCustomProperty("TurnSignals", 0)
			
			rightToggle = false
			
		end
					
	end

end

function Tick(dt)

	
	script:SetNetworkedCustomProperty("zRotation", zRotation)

	accumulatedDt = accumulatedDt + dt

	if not driver or accumulatedDt < 0.02 then
		
		return
		
	elseif not driver.isGrounded then
	
		return
		
	end
	
	accumulatedDt = 0
	
	difference = (driver:GetWorldRotation() * Vector3.FORWARD * driver:GetVelocity().size * 1.1) - driver:GetVelocity()
	
	--print(difference.size)
	
	if difference.size < driver:GetVelocity().size and difference.size > 0 then
	
		xMovement = 1
		
	elseif difference.size > driver:GetVelocity().size then
	
		xMovement = -1
		
	else
	
		xMovement = 0
		
	end
	
	if xMovement > 0 then
	
		driver:SetWorldRotation(Rotation.New(0, 0, zRotation * turnRatePerTick * (driver:GetVelocity().size/topSpeed)) + driver:GetWorldRotation())
	
	elseif xMovement < 0 then
	
		driver:SetWorldRotation(Rotation.New(0, 0, -zRotation * turnRatePerTick * (driver:GetVelocity().size/topSpeed)) + driver:GetWorldRotation())
	
	end

end

Game.playerLeftEvent:Connect(DestroyVehicle)

vehicleSet.unequippedEvent:Connect(LeaveVehicle)
vehicleSet.equippedEvent:Connect(StartVehicle)