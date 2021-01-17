local debugConsole = script:GetCustomProperty("DebugConsoleClient"):WaitForObject().context
local propUIPanel = script:GetCustomProperty("UIPanel"):WaitForObject()

local needConfirmation

function OnPress(_, key)
	if debugConsole.IsCommandLineOpen() then
		return
	end

	if needConfirmation and key == "ability_extra_44" then
		needConfirmation = false
		propUIPanel.visibility = Visibility.FORCE_OFF
		return
	end

	if key == "ability_extra_44" then
		needConfirmation = true
		propUIPanel.visibility = Visibility.FORCE_ON
		return
	end

	if needConfirmation and key == "ability_extra_28" then
		propUIPanel.visibility = Visibility.FORCE_OFF
		Events.BroadcastToServer("HARDRESET")
		needConfirmation = false
		return
	end
end

Game.GetLocalPlayer().bindingPressedEvent:Connect(OnPress)
