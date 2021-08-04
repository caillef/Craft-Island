local trigger = script.parent

local eventName = "OpenUI"..script:GetCustomProperty("UIName")

local PLAYER = Game.GetLocalPlayer()

local events = {}

function OnInteract(trigger, player)
	if not trigger:IsValid() then 
		for _,e in pairs(events) do
			e:Disconnect()
		end
		return
	end
	if player ~= PLAYER then return end
	Events.Broadcast(eventName, trigger.id)
	trigger.isInteractable = false
end

function OnEnableTrigger(id)
	if not trigger:IsValid() then 
		for _,e in pairs(events) do
			e:Disconnect()
		end
		return
	end
	trigger.isInteractable = true
end

table.insert(events, Events.Connect("EnableTrigger", OnEnableTrigger))
table.insert(events, trigger.interactedEvent:Connect(OnInteract))