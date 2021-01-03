local data = {}
local INVENTORY_MANAGER = script.parent:GetCustomProperty("InventoryManager"):WaitForObject().context

local logs = {}
function GetLogs()
    return logs
end

local function AddLogEntry(entry)
    table.insert(logs, entry)
    while #logs > 100 do
        table.remove(logs, 1)
    end
end

function Update(player)
	print(tostring(player) .. ":")
	for i = 1, 27 do
		if data[player][i] then
			print(i, tostring(data[player][i]))
		end
	end
end

function CountItem(player, muid)
	for _,item in pairs(data[player]) do
		if item.muid == muid then return item.qty end
	end
	return item.qty
end

function Add(player, d)
	local muid = d.muid
	local qty = d.qty or 1
	local ii
	for i = 1, 27 do
		if data[player] and data[player][i] and data[player][i].muid == muid and data[player][i].qty > 0 then
			ii = i
			break
		end
	end
	if ii == nil then
		for i = 1, 27 do
			if player:IsValid() and data[player] and (data[player][i] == nil or data[player][i].qty == 0) then
				ii = i
				break
			end
		end
	end
	if ii ~= nil then
		data[player][ii] = { muid=muid, qty=qty + (data[player][ii] and data[player][ii].qty or 0) }
		while Events.BroadcastToPlayer(player, "requestInventoryAddEvent", data[player][ii], ii) ~= BroadcastEventResultCode.SUCCESS do
			Task.Wait(0.25)
		end
		Save(player)
	else
		warn("No free slots!")
	end

	local storage = Storage.GetPlayerData(player) or {}
	local story = storage.story or {}
	if story.step == 4 and CountItem(player, "51D4970917797698") >= 30 and CountItem(player, "D1EC52C0B5D654EA") >= 5 then
		Events.Broadcast("STEP_COMPLETED", player)
	end
end

function OnInventoryReady(player)
	local d = Storage.GetPlayerData(player)
	local inventory = d.inventory or ""
	data[player] = INVENTORY_MANAGER.DeserializeInventory(inventory)
	local finalInventory = INVENTORY_MANAGER.SerializeInventory(data[player])
	local k = 1
	AddLogEntry("final Inventory:\n"..finalInventory)
	AddLogEntry("Start sending inventory:")
	for i=1,#finalInventory,64 do
		AddLogEntry(string.sub(finalInventory, i, (i + 63 < #finalInventory) and i + 63 or #finalInventory), k, (i + 63 >= #finalInventory))
		while Events.BroadcastToPlayer(player, "inventoryPLoadEvent", string.sub(finalInventory, i, (i + 63 < #finalInventory) and i + 63 or #finalInventory), k, (i + 63 >= #finalInventory)) ~= BroadcastEventResultCode.SUCCESS do
			Task.Wait(0.25)
		end
		k = k + 1
		Task.Wait(0.2)
	end
	AddLogEntry("Finished sending inventory")
	Events.Broadcast("SInventoryReady", player)
	GiveMandatoryItems(player)
end

function GiveMandatoryItems(player)
	local axeFound = false
	local hoeFound = false
	local pickaxeFound = false
	Task.Wait(1)
	for _,item in pairs(data[player]) do
		if item.muid == "1214EEEF9701EE9A" then axeFound = true end
		if item.muid == "E2428B216BD2D34B" then hoeFound = true end
		if item.muid == "AECB1226211DC37C" then pickaxeFound = true end
	end
	if not axeFound then
		Events.Broadcast("inventoryAddEvent", player, { muid="1214EEEF9701EE9A", qty = 1 })
		Task.Wait(0.2)
	else
		for _,item in pairs(data[player]) do
			if item.muid == "1214EEEF9701EE9A" and item.qty > 1 then
				PlayerRemoveItems(player, item.muid, item.qty - 1)
			end
		end			
	end
	if not hoeFound then
		Events.Broadcast("inventoryAddEvent", player, { muid="E2428B216BD2D34B", qty = 1 })
		Task.Wait(0.2)
	else
		for _,item in pairs(data[player]) do
			if item.muid == "E2428B216BD2D34B" and item.qty > 1 then
				PlayerRemoveItems(player, item.muid, item.qty - 1)
			end
		end			
	end
	if not pickaxeFound then
		Events.Broadcast("inventoryAddEvent", player, { muid="AECB1226211DC37C", qty = 1 })
		Task.Wait(0.2)
	else
		for _,item in pairs(data[player]) do
			if item.muid == "AECB1226211DC37C" and item.qty > 1 then
				PlayerRemoveItems(player, item.muid, item.qty - 1)
			end
		end			
	end
	Task.Spawn(function()
		Task.Wait(1)
		Save(player)		
	end)
end

function Save(player)
	Events.Broadcast("inventorySaveEvent", player, data[player])
end

function Delete(player, i)
	data[player][i] = nil
	if i >= 1 or i <= 9 then
		EquipItem(player, i, 0)
	end
	Save(player)
end

function Move(player, iDrag, dest)
	local a = data[player][iDrag]
	local b = data[player][dest] or nil
	data[player][dest] = a
	data[player][iDrag] = b
end

local playersLatestSlot = {}

function EquipItem(player, slot, toolMuid)
	playersLatestSlot[player] = slot
	if toolMuid == nil then toolMuid = 0 end

	if toolMuid == 0 then
		local list = player:GetEquipment()
		for _,obj in pairs(list) do
			if obj:IsValid() then
				obj:Destroy()
			end
		end
	elseif toolMuid then
		local list = player:GetEquipment()
		for _,obj in pairs(list) do
			if obj:IsValid() then
				obj:Destroy()
			end
		end
		local tool = World.SpawnAsset(toolMuid, { parent=World.GetRootObject() })
		tool:Equip(player)
	end
end

local SOIL_MUID = "1B5A92562B0F84C3"

function PlayerHasItems(player, muid, qty)
	if muid == SOIL_MUID then
		return true
	end
	qty = qty or 1
	for i = 1, 27 do
		if data[player][i] and data[player][i].muid == muid then
			return data[player][i].qty >= qty
		end
	end
	return false
end

function PlayerRemoveItems(player, muid, qty)
	if muid == SOIL_MUID then
		return true
	end
	qty = qty or 1
	for i = 1, 27 do
		if data[player][i] and data[player][i].muid == muid then
			if data[player][i].qty < qty then
				return false
			end
			data[player][i].qty = data[player][i].qty - qty
			while Events.BroadcastToPlayer(player, "requestInventoryRemoveEvent", data[player][i], i) ~= BroadcastEventResultCode.SUCCESS do
				Task.Wait(0.25)
			end
			if qty == 0 then
				data[player][i] = nil
			end
			return true
		end
	end
	return false
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

local propInventories = script:GetCustomProperty("Inventories")

function OnPlayerLeft(player)
	playersLatestSlot[player] = nil
	data[player] = nil
end

function GetCurrentItem(player)
	return (playersLatestSlot[player] ~= nil and data[player][playersLatestSlot[player]]) and data[player][playersLatestSlot[player]].muid or nil
end

function Craft(player, craftMuid)
	if craftMuid == "905D3C58A6D70B6A" then -- Dough
		if not PlayerHasItems(player, "828D307143518252", 2) then
			return
		end
		PlayerRemoveItems(player, "828D307143518252", 2)
		Add(player, { muid=craftMuid, qty = 1 })
	end

	if craftMuid == "849D4C1B02464AC5" then -- Berry Dough
		if not (PlayerHasItems(player, "905D3C58A6D70B6A", 1) and 
				PlayerHasItems(player, "7D3C73A40F261843", 2)) then
			return
		end
		PlayerRemoveItems(player, "905D3C58A6D70B6A", 1) 
		PlayerRemoveItems(player, "7D3C73A40F261843", 2)
		Add(player, { muid=craftMuid, qty = 1 })
	end

	if craftMuid == "0B66793FF08195AC" then -- Furnace
		if not PlayerHasItems(player, "51D4970917797698", 30) then
			return
		end
		PlayerRemoveItems(player, "51D4970917797698", 30)
		Add(player, { muid=craftMuid, qty = 1 })
		local storage = Storage.GetPlayerData(player) or {}
		local story = storage.story or {}
		if story.step == 5 then
			Events.Broadcast("STEP_COMPLETED", player)
		end
	end

	if craftMuid == "1F4C8911AF77BAFA" or
		craftMuid == "D4469C4FF621DC7D" or
		craftMuid == "8C5509CCAC1C750E" or
		craftMuid == "2B56C1E3C138F542" or
		craftMuid == "178FF62EF3246BE7" or
		craftMuid == "60BA6C27C1F3EA75" then -- Wood Structure
		if not PlayerHasItems(player, "4153F13DBF7563A6", 2) then
			return
		end
		PlayerRemoveItems(player, "4153F13DBF7563A6", 2)
		Add(player, { muid=craftMuid, qty = 3 })
	end
end

Game.playerLeftEvent:Connect(OnPlayerLeft)

Events.Connect("requestInventorySaveEvent", Save)
Events.Connect("inventoryAddEvent", Add)
Events.Connect("inventoryDeleteEvent", Delete)
Events.Connect("inventoryMoveEvent", Move)
Events.Connect("inventoryEquipEvent", EquipItem)
Events.Connect("requestInventoryFullEvent", FreeSlots)
Events.Connect("inventoryCraftEvent", Craft)

Events.ConnectForPlayer("removeItemFromMuid", PlayerRemoveItems)

Events.Connect("inventoryReady", OnInventoryReady)
