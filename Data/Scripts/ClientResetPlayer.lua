local debugConsole = script:GetCustomProperty("DebugConsoleClient"):WaitForObject().context
local propUIPanel = script:GetCustomProperty("UIPanel"):WaitForObject()
local propErase = script:GetCustomProperty("Erase"):WaitForObject()
local propCancel = script:GetCustomProperty("Cancel"):WaitForObject()

local needConfirmation

function OnPress(_, key)
	if debugConsole.IsCommandLineOpen() then
		return
	end

	if key == "ability_extra_44" then
		needConfirmation = true
		propUIPanel.visibility = Visibility.FORCE_ON
		UI.SetCursorVisible(true)
        UI.SetCanCursorInteractWithUI(true)
		return
	end
end

propErase.clickedEvent:Connect(function()
	if needConfirmation then
		propUIPanel.visibility = Visibility.FORCE_OFF
		Events.BroadcastToServer("HARDRESET")
		needConfirmation = false
		UI.SetCursorVisible(false)
        UI.SetCanCursorInteractWithUI(false)
		return
	end
end)

propCancel.clickedEvent:Connect(function()
	if needConfirmation then
		needConfirmation = false
		propUIPanel.visibility = Visibility.FORCE_OFF
		UI.SetCursorVisible(false)
        UI.SetCanCursorInteractWithUI(false)
		return
	end
end)

Game.GetLocalPlayer().bindingPressedEvent:Connect(OnPress)
