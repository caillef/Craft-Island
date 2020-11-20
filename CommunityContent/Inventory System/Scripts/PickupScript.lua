local root = script.parent.parent
local icon = root:GetCustomProperty("ItemUITemplate")

local picked = false
local listenID = "pickup" .. math.random()*30
local player = nil

function OnInteracted(_, other)
	if not picked then
		picked = true
		player = other
		Events.Broadcast("requestInventoryFullEvent", other, listenID)
	end
end

function PickUp(id, bool)
	if id == listenID then
		if bool then
			picked = false
			Events.BroadcastToPlayer(player, "inventoryFullEvent")
		else
			Events.Broadcast("inventoryAddEvent", player, icon)
			root:Destroy()
		end
	end
end

script.parent.interactedEvent:Connect(OnInteracted)
Events.Connect("returnInventoryFullEvent", PickUp)