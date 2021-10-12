local FP = script:GetCustomProperty("FirstCam"):WaitForObject(1)
local TP = script:GetCustomProperty("ThirdCam"):WaitForObject(1)
local player = Game.GetLocalPlayer()

Input.actionPressedEvent:Connect(function(p, action, value)
	if action ~= "ToggleView" then return end
	local activeCam = player:GetActiveCamera()
	if activeCam == TP then
		player:SetOverrideCamera(FP, 0.3)
	elseif activeCam == FP then
		player:SetOverrideCamera(TP, 0.3)
	end
end)