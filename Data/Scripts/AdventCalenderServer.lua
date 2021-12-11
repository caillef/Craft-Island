local TRIGGER = script:GetCustomProperty("Trigger"):WaitForObject()

function GetCurrentDay()
	local date = os.date("!*t")
	return date.day
end

local TYPE_RESOURCE = 1
local TYPE_GOLD = 2
local TYPE_GEM = 3

local CALENDAR = {
  [1] = { type=TYPE_RESOURCE, resource="PLANT", qty=5, text="5 plants" },
  [2] = { type=TYPE_GEM, qty=500, text="500 gems" },
  [3] = { type=TYPE_RESOURCE, resource="ARMCHAIR", qty=2, text="2 armchairs" },
  [4] = { type=TYPE_RESOURCE, resource="IRON", qty=50, text="50 iron ingots" },
  [5] = { type=TYPE_RESOURCE, resource="WOODEN_FENCE", qty=20, text="20 wooden fences" },
  [6] = { type=TYPE_GOLD, qty=1000, text="1000 golds" },
  [7] = { type=TYPE_RESOURCE, resource="DRESSER", qty=3, text="3 dressers" },
  [8] = { type=TYPE_GEM, qty=500, text="500 gems" },
  [9] = { type=TYPE_RESOURCE, resource="BERRY_SPROUT", qty=5, text="5 berry sprouts" },
  [10] = { type=TYPE_RESOURCE, resource="BIRCH_SAPLING", qty=5, text="5 birch saplings" },
  [11] = { type=TYPE_GEM, qty=500, text="500 gems" },
  [12] = { type=TYPE_RESOURCE, resource="SPRUCE_SAPLING", qty=5, text="5 spruce saplings" },
  [13] = { type=TYPE_GOLD, qty=2500, text="2500 golds" },

  [14] = { type=TYPE_RESOURCE, resource="WARDROBE", qty=5, text="5 Wardrobes saplings" },
  [15] = { type=TYPE_GEM, qty=500, text="500 gems" },
  [16] = { type=TYPE_RESOURCE, resource="BOOKSHELF", qty=5, text="5 Bookshelves" },
  [17] = { type=TYPE_GOLD, qty=2500, text="2500 golds" },
  [18] = { type=TYPE_RESOURCE, resource="NIGHTSTAND", qty=2, text="2 Nightstands" },
  [19] = { type=TYPE_GEM, qty=500, text="500 gems" },
  [20] = { type=TYPE_RESOURCE, resource="DINING_TABLE", qty=4, text="4 Dining Tables" },
  [21] = { type=TYPE_GOLD, qty=2500, text="2500 golds" },
  [22] = { type=TYPE_RESOURCE, resource="COFFEE_TABLE", qty=2, text="2 Coffe Tables" },
  [23] = { type=TYPE_GEM, qty=500, text="1000 gems" },
  [24] = { type=TYPE_RESOURCE, resource="IRON_SWORD", qty=1, text="1 Iron Sword (important for January's update)" },
}

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
	local text = "Day "..GetCurrentDay()..": "
	local dataEvent = CALENDAR[currentDay]
	if not dataEvent then return end
	if dataEvent.type == TYPE_RESOURCE then
	    Events.Broadcast("inventoryAddEvent", player, { idName=dataEvent.resource, qty=dataEvent.qty })	
	elseif dataEvent.type == TYPE_GOLD then
		Events.Broadcast("SGoldAddForPlayer", player, dataEvent.qty)
	elseif dataEvent.type == TYPE_GEM then
		Events.Broadcast("SGemAddForPlayer", player, dataEvent.qty)
	end
    text = text..dataEvent.text	
	player:GrantRewardPoints(500, "AdventCalendar"..currentDay)
	data.adventCalendar[currentDay] = true
	Storage.SetPlayerData(player, data)
	Events.BroadcastToPlayer(player, "OpenBox", currentDay)
	Events.BroadcastToPlayer(player, "GiftContent", text)
end)

Game.playerJoinedEvent:Connect(function(p)
	local data = Storage.GetPlayerData(p)
	local adventCalendar = data.adventCalendar
	p:SetPrivateNetworkedData("AdventCalendar", adventCalendar)
end)