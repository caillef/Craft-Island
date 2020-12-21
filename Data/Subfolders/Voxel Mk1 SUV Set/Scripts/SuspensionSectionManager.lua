local movingSuspension = script:GetCustomProperty("MovingSuspension"):WaitForObject()

local controlArm = script:GetCustomProperty("ControlArm"):WaitForObject()
local controlArmUpper = script:GetCustomProperty("ControlArmUpper"):WaitForObject()

local controlArmTarget = script:GetCustomProperty("ControlArmTarget"):WaitForObject()
local controlArmUpperTarget = script:GetCustomProperty("ControlArmUpperTarget"):WaitForObject()

local highestMarker01 = script:GetCustomProperty("HighestMarker01"):WaitForObject()
local highestMarker02 = script:GetCustomProperty("HighestMarker02"):WaitForObject()

local lowestMarker01 = script:GetCustomProperty("LowestMarker01"):WaitForObject()
local lowestMarker02 = script:GetCustomProperty("LowestMarker02"):WaitForObject()

local maxCompressMarker = script:GetCustomProperty("MaxCompressMarker"):WaitForObject()

local vehicleSet = script:GetCustomProperty("VehicleSet"):WaitForObject()

local enableFX = vehicleSet:GetCustomProperty("AddTrackTrailVFX")

local trailVFX = movingSuspension:FindDescendantByName("TrailVFX")
local trailState = false

local maxHeight = maxCompressMarker:GetPosition().z

local raycastResult01 = nil
local raycastResult02 = nil

local highestPoint = 0
local nullCount = 0

function Initialize()

	controlArm:LookAtContinuous(controlArmTarget, false)
	controlArmUpper:LookAtContinuous(controlArmUpperTarget, false)
		
	trailVFX:Stop()
	trailState = false

end

function Tick(dt)

	Task.Wait()

	raycastResult01 = World.Raycast(highestMarker01:GetWorldPosition(), lowestMarker01:GetWorldPosition())
	raycastResult02 = World.Raycast(highestMarker02:GetWorldPosition(), lowestMarker02:GetWorldPosition())
	
	highestPoint = 0

	if raycastResult01 then
	
		highestPoint = highestMarker01:GetPosition().z - (highestMarker01:GetWorldPosition() - raycastResult01:GetImpactPosition()).size
			
	end
	
	if raycastResult02 then
	
		if highestMarker02:GetPosition().z - (highestMarker02:GetWorldPosition() - raycastResult02:GetImpactPosition()).size < highestPoint then
			
				highestPoint = highestMarker02:GetPosition().z - (highestMarker02:GetWorldPosition() - raycastResult02:GetImpactPosition()).size
				
		end
		
	end
	
	--print(highestPoint)
	
	if highestPoint > 1.2 * lowestMarker01:GetPosition().z and highestPoint <= maxHeight then -- collision in between markers
		
		movingSuspension:MoveTo(Vector3.UP * highestPoint, 0.05, true)
		
		if trailState == false and enableFX then
		
			trailVFX:Play()
			trailState = true
			
		end
		
	elseif highestPoint ~= 0 and highestPoint > maxHeight then -- max height exceeded
	
		movingSuspension:MoveTo(Vector3.UP * maxHeight, 0.05, true)

		if trailState == false and enableFX then
		
			trailVFX:Play()
			trailState = true
			
		end
		
	else -- suspension is hanging (no collision)

		movingSuspension:MoveTo(Vector3.UP * lowestMarker01:GetPosition().z, 0.05, true)

		if trailState == true and enableFX then
		
			trailVFX:Stop()
			trailState = false
			
		end
		
	end
		
			

end

Initialize()

