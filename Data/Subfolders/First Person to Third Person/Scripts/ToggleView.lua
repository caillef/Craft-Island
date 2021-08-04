local FP = script:GetCustomProperty("FirstCam"):WaitForObject(1)
local TP = script:GetCustomProperty("ThirdCam"):WaitForObject(1)
local player = Game.GetLocalPlayer()
local binding = script.parent.parent:GetCustomProperty("KeyBind")

function Pressed(_, key)
	local activeCam = player:GetActiveCamera()
	if key == binding then
		if activeCam == TP then
			player:SetOverrideCamera(FP, 0.3)
		elseif activeCam == FP then
			player:SetOverrideCamera(TP, 0.3)
		end
	end
end

player.bindingPressedEvent:Connect(Pressed)