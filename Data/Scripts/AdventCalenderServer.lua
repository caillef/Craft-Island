local TRIGGER = script:GetCustomProperty("Trigger"):WaitForObject()

function GetCurrentDay()
	local date = os.date("*t")
	return date.day
end

TRIGGER.interactedEvent:Connect(function(trigger, player)
	local data = Storage.GetPlayerData(player)
	data.adventCalendar = data.adventCalendar or {}
	local currentDay = GetCurrentDay()
	-- After christmas
	if currentDay > 24 then return end
	-- Already unlocked
	if data.adventCalendar[currentDay] then	 
		Events.BroadcastToPlayer(player, "AdventCalendarAlreadyOpened")
		return
	end
	player:GrantRewardPoints(500, "AdventCalendar"..currentDay)
	data.adventCalendar[currentDay] = true
	if currentDay == 1 then
	    Events.Broadcast("inventoryAddEvent", player, { idName="PLANT", qty=5 })	
	elseif currentDay == 2 then
		Events.Broadcast("SGemAddForPlayer", player, 500)
	elseif currentDay == 3 then
	    Events.Broadcast("inventoryAddEvent", player, { idName="SOFA", qty=1 })	
	end
	Storage.SetPlayerData(player, data)
	Events.BroadcastToPlayer(player, "OpenBox", currentDay)
end)

Game.playerJoinedEvent:Connect(function(p)
	local data = Storage.GetPlayerData(p)
	local adventCalendar = data.adventCalendar
	p:SetPrivateNetworkedData("AdventCalendar", adventCalendar)
end)