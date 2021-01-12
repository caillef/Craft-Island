local trigger = script.parent

local events = {}

function OnInteract(trigger, player)
	if not trigger:IsValid() then 
		for _,e in pairs(events) do
			e:Disconnect()
		end
		return
	end
	while Events.BroadcastToPlayer(player, "OpenUIFurnace", trigger.id) ~= BroadcastEventResultCode.SUCCESS do
		Task.Wait(0.25)
	end
	trigger.isInteractable = false
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