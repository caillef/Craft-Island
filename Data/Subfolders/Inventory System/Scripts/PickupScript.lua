local root = script.parent.parent
local icon = root:GetCustomProperty("ItemUITemplate")

local picked = false
local listenID = "pickup" .. math.random()*30
local player = nil

local function mysplit(inputstr, sep)
    if sep == nil then
            sep = "%s"
    end
    local t={}
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
            table.insert(t, str)
    end
    return t
end

function OnInteracted(_, other)
	if not picked then
		picked = true
		player = other
		Events.Broadcast("requestInventoryFullEvent", other, { muid=mysplit(icon, ":")[1], string=listenID })
	end
end

function PickUp(id, bool)
	if id == listenID then
		if bool then
			picked = false
			Events.BroadcastToPlayer(player, "inventoryFullEvent")
		else
			Events.Broadcast("inventoryAddEvent", player, { muid=mysplit(icon, ":")[1], qty = 1 })
			root:Destroy()
		end
	end
end

script.parent.interactedEvent:Connect(OnInteracted)
Events.Connect("returnInventoryFullEvent", PickUp)