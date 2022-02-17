local TWO_RANDOM_RESELLERS_ITEMS = script:GetCustomProperty("TwoRandomResellersItems")
local APIO = require(script:GetCustomProperty("APIObjects"))
local RESELLER_ID = 5

function GiveRandomResellerItems(player)
	local list = APIO.BuySellList(RESELLER_ID)
	
	for i=1,2 do
		local rnd = 1 + math.floor(math.random() * #list)
		local id = list[rnd][2]
	    Events.Broadcast("inventoryAddEvent", player, { id=id, qty = 1 })
	end
end

function OnPerkChanged(player, perkRef)
	if perkRef == TWO_RANDOM_RESELLERS_ITEMS then
		GiveRandomResellerItems(player)
	end
end

Game.playerJoinedEvent:Connect(function(player)
	player.perkChangedEvent:Connect(OnPerkChanged)
end)