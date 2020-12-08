local debugConsole = script:GetCustomProperty("DebugConsoleClient"):WaitForObject().context

function OnPress(_, key)
	if debugConsole.IsCommandLineOpen() then
		return
	end
	if key == "ability_extra_44" then
		Events.BroadcastToServer("HARDRESET")
	end
end

Game.GetLocalPlayer().bindingPressedEvent:Connect(OnPress)
