local trigger = script.parent

local eventName = "OpenUI"..script:GetCustomProperty("UIName")

local currentPlayer

local events = {}

function OnInteract(trigger, player)
	if not trigger:IsValid() then 
		for _,e in pairs(events) do
			e:Disconnect()
		end
		return
	end
	while player:IsValid() and Events.BroadcastToPlayer(player, eventName, trigger.id) ~= BroadcastEventResultCode.SUCCESS do
		Task.Wait(1)
	end
	if trigger:IsValid() then
		currentPlayer = player
		trigger.isInteractable = true
	end
end

function OnEnableTrigger(id)
	if not trigger:IsValid() then 
		for _,e in pairs(events) do
			e:Disconnect()
		end
		return
	end
	if id == trigger.id then
		currentPlayer = nil
		trigger.isInteractable = true
	end
end

table.insert(events, Events.Connect("EnableTrigger", OnEnableTrigger))
table.insert(events, trigger.interactedEvent:Connect(OnInteract))

Game.playerLeftEvent:Connect(function(player)
	if player == currentPlayer then
		currentPlayer = nil
		if trigger and trigger:IsValid() then
			trigger.isInteractable = true
		end
	end
end)
