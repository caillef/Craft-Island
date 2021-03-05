local propNbSeconds = script:GetCustomProperty("NbSeconds")
local propYesButton = script:GetCustomProperty("YesButton"):WaitForObject()
local propNoButton = script:GetCustomProperty("NoButton"):WaitForObject()

--UI.SetCursorVisible(true)
--UI.SetCanCursorInteractWithUI(true)

propYesButton.clickedEvent:Connect(function(button)
	Events.BroadcastToServer("inventoryReady", Game.GetLocalPlayer())
	UI.SetCursorVisible(false)
	UI.SetCanCursorInteractWithUI(false)
	script.parent:Destroy()
end)

propNoButton.clickedEvent:Connect(function(button)
	Events.BroadcastToServer("inventoryReady", Game.GetLocalPlayer())
	UI.SetCursorVisible(false)
	UI.SetCanCursorInteractWithUI(false)
	script.parent:Destroy()
end)

--Task.Wait(propNbSeconds)
--script.parent:Destroy()