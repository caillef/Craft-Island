local tilt = script:GetCustomProperty("Tilt"):WaitForObject()
local height = script:GetCustomProperty("Height"):WaitForObject()

local axleTargetFA = script:GetCustomProperty("AxleTargetFA"):WaitForObject()
local axleTargetFB = script:GetCustomProperty("AxleTargetFB"):WaitForObject()
local axleTargetBA = script:GetCustomProperty("AxleTargetBA"):WaitForObject()
local axleTargetBB = script:GetCustomProperty("AxleTargetBB"):WaitForObject()

local suspension = {
	script:GetCustomProperty("MovingSuspensionFA"):WaitForObject(), -- front left
	script:GetCustomProperty("MovingSuspensionFB"):WaitForObject(), -- front right
	script:GetCustomProperty("MovingSuspensionBA"):WaitForObject(), -- back right
	script:GetCustomProperty("MovingSuspensionBB"):WaitForObject() -- back left
}

local sampleMaxLimit = script:GetCustomProperty("SampleMaxLimit"):WaitForObject()
local sampleMinLimit = script:GetCustomProperty("SampleMinLimit"):WaitForObject()

local maxLimit = sampleMaxLimit:GetPosition().z
local minLimit = sampleMinLimit:GetPosition().z

local suspensionHeight = {}

local averageYRotation = 0
local averageXRotation = 0
local averageHeight = 0

local OverrideCount = 0

local heightOverride = 150
local rotationOverride = 1.4

function Initialize()

	axleTargetFB:LookAtContinuous(axleTargetBA, false)
	axleTargetBB:LookAtContinuous(axleTargetFA, false)
	
end

function SetOverride()

	OverrideCount = 0
	
	for i = 1, 4 do
	
		if suspensionHeight[i] <= minLimit + 0.1 then
		
			OverrideCount = OverrideCount - 1
			
		elseif suspensionHeight[i] >= maxLimit - 0.1 then
		
			OverrideCount = OverrideCount + 1
			
		end
		
	end

	if OverrideCount > 1 or OverrideCount == -1 then
	
		rotationOverride = 1.8
		
	else
	
		rotationOverride = 1.4
		
	end

end

function Tick()

	for i = 1, 4 do
	
		suspensionHeight[i] = suspension[i]:GetPosition().z
		
	end

	SetOverride()

	averageYRotation = rotationOverride * (axleTargetFB:GetRotation().y - axleTargetBB:GetRotation().y) / 2
	averageXRotation = rotationOverride * (axleTargetFA:GetRotation().y - axleTargetBA:GetRotation().y) / 2
	
	averageHeight = heightOverride + (suspensionHeight[1] + suspensionHeight[2] + suspensionHeight[3] + suspensionHeight[4]) / 4

	--print("avY: " .. averageYRotation)
	--print("avX: " .. averageXRotation)
	
	--print(averageHeight)
	
	--print(OverrideCount)
	
	if OverrideCount > -2 then
	
		tilt:RotateTo(tilt:GetRotation() + Rotation.New(averageXRotation, -averageYRotation, 0), 0.15, true)
		
	else
	
		tilt:RotateTo(tilt:GetRotation() * 0.95, 0.15, true)
		
	end

	
	height:MoveTo(Vector3.UP * averageHeight, 0.15, true)
	
end

Initialize()