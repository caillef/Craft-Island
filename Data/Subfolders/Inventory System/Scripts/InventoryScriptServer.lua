local APIO = require(script:GetCustomProperty("APIObjects"))
local APIInvSerializer = require(script:GetCustomProperty("APIInventorySerializer"))
local SHARED_KEY_INVENTORY = script:GetCustomProperty("Inventory")

local data = {}

function Update(player)
	print(tostring(player) .. ":")
	for i = 1, 27 do
		if data[player][i] then
			print(i, tostring(data[player][i]))
		end
	end
end

function CountItem(player, id)
	for _,item in pairs(data[player]) do
		if item.id == id then return item.qty end
	end
	return 0
end

local nextAddEvent = {}
function Add(player, d)
	if not player or not player:IsValid() then return end

	if not nextAddEvent[player] then
		nextAddEvent[player] = time()
	end
	while time() < nextAddEvent[player] do
		Task.Wait(nextAddEvent[player] - time())
	end
	nextAddEvent[player] = time() + 0.2

	local item =  APIO.QueryObject(d.id)
	if item == nil and d.idName then
		item = APIO.QueryObject(d.idName)
	end
	if not item then return end
	local qty = d.qty or 1
	local ii
	for i = 1, 27 do
		if data[player] and data[player][i] and data[player][i].id == item.id and data[player][i].qty > 0 and data[player][i].qty < 63 then
			ii = i
			break
		end
	end
	if ii == nil then
		for i = 1, 27 do
			if data[player] and (data[player][i] == nil or (data[player][i].qty and data[player][i].qty == 0)) then
				ii = i
				break
			end
		end
	end
	if ii == nil then
		warn("No free slots!")
		return
	end

	data[player][ii] = data[player][ii] or { qty = 0 }
	qty = qty + data[player][ii].qty
	if qty <= 0 then
		return
	end

	local excess = qty - 63
	if excess > 0 then
		qty = 63
	end

	data[player][ii] = { id=item.id, qty=qty }
	player:SetPrivateNetworkedData("requestInventoryAddEvent", { data[player][ii], ii })

	if excess and excess > 0 then
		d.qty = excess
		Add(player, d)
	end

	Save(player)
end

function OnInventoryReady(player)
	local d = Storage.GetSharedPlayerData(SHARED_KEY_INVENTORY, player)
	local inventory = d.inventory or ""

	data[player] = APIInvSerializer.Deserialize(inventory)
	inventory = APIInvSerializer.Serialize(data[player])
	data[player] = APIInvSerializer.Deserialize(inventory)
	player:SetPrivateNetworkedData("Inv", inventory)
	GiveMandatoryItems(player)
end

function GetInventory(player)
	if player == nil or not player:IsValid() then return end
	return APIInvSerializer.Serialize(data[player])
end

function GiveMandatoryItems(player)
	local list = {APIO.QueryObject("BASIC_AXE").id, APIO.QueryObject("BASIC_HOE").id, APIO.QueryObject("BASIC_PICKAXE").id}
	for _,item in pairs(data[player]) do
		for k,v in pairs(list) do
			if item.id == v then
				if item.qty > 1 then
					PlayerRemoveItems(player, { id=item.id }, item.qty - 1)
				end
				table.remove(list, k)
			end
		end
	end

	for _,v in pairs(list) do
		Add(player, { id=v, qty=1 })
		Task.Wait(0.2)
	end
end

function Save(player)
	local d = data[player]
    if not Object.IsValid(player) or not d then return end
    local data = Storage.GetSharedPlayerData(SHARED_KEY_INVENTORY, player)
    data.inventory = APIInvSerializer.Serialize(d)
    Storage.SetSharedPlayerData(SHARED_KEY_INVENTORY, player, data)
end

function Delete(player, i)
	if not data[player] or not data[player][i] then return end
	local id = data[player][i].id
	data[player][i] = nil
	if i >= 1 or i <= 9 then
		EquipItem(player, i, 0)
	end

	if id == 1 or id == 2 or id == 21 then
		Add(player, { id=id, qty=1 })
	end

	Save(player)
end

function Move(player, iDrag, dest)
	local b = data[player][dest] or nil
	data[player][dest] = data[player][iDrag]
	data[player][iDrag] = b
end

local playersLatestSlot = {}

function EquipItem(player, slot, toolMuid)
	playersLatestSlot[player] = slot
	if toolMuid == nil then toolMuid = 0 end
	player.serverUserData.tools = player.serverUserData.tools or {}

	local list = player:GetEquipment()
	for _,obj in pairs(list) do
		if obj:IsValid() and obj.socket == "right_prop" then
			obj:Destroy()
		end
	end
	if toolMuid ~= 0 then
		local tool = World.SpawnAsset(toolMuid, { parent=World.GetRootObject() })
		tool:Equip(player)
	end
end

function PlayerHasItems(player, d, qty)
	local id = d.id or APIO.QueryObject(d.idName).id
	if not player or not player:IsValid() or not id then return false end
	if id == APIO.QueryObject("SOIL").id then return true end
	qty = qty or 1
	local currentQty = 0
	for i = 1,27 do
		if data[player][i] and data[player][i].id == id then
			currentQty = currentQty + data[player][i].qty
		end
	end
	return currentQty >= qty
end

function PlayerRemoveItems(player, d, qty)
	if not PlayerHasItems(player, d, qty) then return false end
	local id = d.id or APIO.QueryObject(d.idName).id
	if not player or not player:IsValid() or not id then return false end
	if id == APIO.QueryObject("SOIL").id then return true end
	qty = qty or 1
	for i = 1, 27 do
		if data[player][i] and data[player][i].id == id then
			local excess = data[player][i].qty - qty
			if excess >= 0 then
				data[player][i].qty = excess
				qty = 0
			else
				data[player][i].qty = 0
				qty = excess * -1
			end
			while player:IsValid() and Events.BroadcastToPlayer(player, "requestInventoryRemoveEvent", data[player][i], i) ~= BroadcastEventResultCode.SUCCESS do
				Task.Wait(3)
			end
			if data[player][i] and data[player][i].qty == 0 then data[player][i] = nil end
			if qty == 0 then return true end
		end
	end
	return qty == 0
end

function FreeSlots(player, d)
	local ii
	for i = 1, 27 do
		if data[player][i] == nil or data[player][i].muid == d.muid then
			ii = i
			break
		end
	end
	Events.Broadcast("returnInventoryFullEvent", d.string, (ii == nil))
end

function OnPlayerLeft(player)
	playersLatestSlot[player] = nil
	data[player] = nil
end

function GetCurrentItem(player)
	if not playersLatestSlot[player] then return nil end
	local item = data[player][playersLatestSlot[player]]
	return (item and item.id or nil)
end

function Craft(player, craftIdName, qty)
	qty = qty or 1
	for craftkey,craft in pairs(APIO.GetCrafts()) do
		local recipe = craft[2]
		for i=1,#recipe,2 do
			if recipe[i] == craftIdName then
				local ingredients = craft[1]
				for j=1,#ingredients,2 do
					if not PlayerHasItems(player, { idName=ingredients[j] }, ingredients[j + 1] * qty) then return end
				end
				for j=1,#ingredients,2 do
					PlayerRemoveItems(player, { idName=ingredients[j] }, ingredients[j + 1] * qty)
				end
				Add(player, { idName=craftIdName, qty = recipe[i + 1] * qty })
				if craftkey >= 7 and craftkey <= 10 then
					Events.Broadcast("TrackAction", {p=player, t=9, qty=recipe[i + 1] * qty })
				end
				if craftIdName == "CRAFTING_TABLE" then
					Events.Broadcast("TrackAction", {p=player, t=10, qty=recipe[i + 1] * qty })
				end
				if craftIdName == "FURNACE" then
					Events.Broadcast("TrackAction", {p=player, t=11, qty=recipe[i + 1] * qty })
				end
				if craftIdName == "COOKING_TABLE" then
					Events.Broadcast("TrackAction", {p=player, t=16, qty=recipe[i + 1] * qty })
				end
				return
			end
		end
	end
end

Game.playerLeftEvent:Connect(OnPlayerLeft)

Events.Connect("inventoryReady", OnInventoryReady)
Events.Connect("requestInventorySaveEvent", Save)
Events.Connect("inventoryAddEvent", Add)
Events.Connect("inventoryDeleteEvent", Delete)
Events.Connect("inventoryMoveEvent", Move)
Events.Connect("inventoryEquipEvent", EquipItem)
Events.Connect("reqInvFullEv", FreeSlots)
Events.Connect("inventoryCraftEvent", Craft)

Events.ConnectForPlayer("removeItem", PlayerRemoveItems)

Events.ConnectForPlayer("ReqCraft", function(player, ingredients)
	local resp = {}
	for _,i in pairs(data[player]) do
		for _,igId in pairs(ingredients) do
			if i.id == igId then
				resp[igId] = (resp[igId] or 0) + i.qty
			end
		end
	end
	Events.BroadcastToPlayer(player, "RespCraft", resp)
end)