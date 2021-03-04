local trigger = script.parent

local eventName = "OpenUI"..script:GetCustomProperty("UIName")

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
		trigger.isInteractable = false
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
		trigger.isInteractable = true
	end
end

table.insert(events, Events.Connect("EnableTrigger", OnEnableTrigger))
table.insert(events, trigger.interactedEvent:Connect(OnInteract))