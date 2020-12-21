local axle = script:GetCustomProperty("Axle"):WaitForObject()

local axleTargetA = script:GetCustomProperty("AxleTargetA"):WaitForObject()
local movingSuspensionA = script:GetCustomProperty("MovingSuspensionA"):WaitForObject()

local axleTargetB = script:GetCustomProperty("AxleTargetB"):WaitForObject()
local movingSuspensionB = script:GetCustomProperty("MovingSuspensionB"):WaitForObject()

local shaftTarget = script:GetCustomProperty("ShaftTarget"):WaitForObject()
local driveShaft = script:GetCustomProperty("DriveShaft"):WaitForObject()

local targetAngle = 0
local targetHeight = 0

local heightA = 0
local heightB = 0

function Initialize()

	driveShaft:LookAtContinuous(shaftTarget, false)
	axleTargetA:LookAtContinuous(axleTargetB, false)

end

function Tick(dt)

	targetAngle = axleTargetA:GetRotation().y
	
	heightA = movingSuspensionA:GetPosition().z + axleTargetA:GetPosition().z
	heightB = movingSuspensionB:GetPosition().z + axleTargetB:GetPosition().z
	
	targetHeight = (heightA + heightB)/2
	
	axle:RotateTo(Rotation.New(targetAngle, 0, 0), 0.05, true)
	
	axle:MoveTo(Vector3.UP * targetHeight, 0.05, true)


end


Initialize()