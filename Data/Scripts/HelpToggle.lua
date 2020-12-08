local propHelp = script:GetCustomProperty("Help"):WaitForObject()

local debugConsole = script:GetCustomProperty("DebugConsoleClient"):WaitForObject().context

function OnBindingPressed(player, bindingPressed)
	if debugConsole.IsCommandLineOpen() then
		return
	end
    if bindingPressed == "ability_extra_35" then
        propHelp.visibility = propHelp.visibility == Visibility.FORCE_ON and Visibility.FORCE_OFF or Visibility.FORCE_ON
    end
end

Game.GetLocalPlayer().bindingPressedEvent:Connect(OnBindingPressed)