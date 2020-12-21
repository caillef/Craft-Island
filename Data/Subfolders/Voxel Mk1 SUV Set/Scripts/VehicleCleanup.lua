local vehicleClientAnchor = script:GetCustomProperty("VehicleClientAnchor"):WaitForObject()
local vehicleSet = script:GetCustomProperty("VehicleSet"):WaitForObject()

function DestroyVehicle(player)
	
	if not vehicleSet:IsValid() and vehicleClientAnchor:IsValid() then
			
		vehicleClientAnchor:Destroy()
		
	end

end

Game.playerLeftEvent:Connect(DestroyVehicle)