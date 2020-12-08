﻿local data = {}
local INVENTORY_MANAGER = script.parent:GetCustomProperty("InventoryManager"):WaitForObject().context

function Update(player)
	print(tostring(player) .. ":")
	for i = 1, 27 do
		if data[player][i] then
			print(i, tostring(data[player][i]))
		end
	end
end

function Add(player, d)
	local muid = d.muid
	local qty = d.qty
	local ii
	for i = 1, 27 do
		if data[player] and data[player][i] and data[player][i].muid == muid and data[player][i].qty > 0 then
			ii = i
			break
		end
	end
	if ii == nil then
		for i = 1, 27 do
			if data[player] and data[player][i] == nil  or data[player][i].qty == 0 then
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
end

function OnInventoryReady(player)
	local d = Storage.GetPlayerData(player)
	local inventory = d.inventory or ""
	data[player] = INVENTORY_MANAGER.DeserializeInventory(inventory)
	while Events.BroadcastToPlayer(player, "inventoryLoadEvent", INVENTORY_MANAGER.SerializeInventory(data[player])) ~= BroadcastEventResultCode.SUCCESS do
		Task.Wait(0.25)
	end
	GiveMandatoryItems(player)
	Events.Broadcast("SInventoryReady", player)
end

function GiveMandatoryItems(player)
	local foundAxe = false
	local hoeFound = false
	for _,item in pairs(data[player]) do
		local id = item.muid
		if id == "1214EEEF9701EE9A" then
			foundAxe = true
		end
		if id == "E2428B216BD2D34B" then
			hoeFound = true
		end
	end
	if not foundAxe then
		Events.Broadcast("inventoryAddEvent", player, { muid="1214EEEF9701EE9A", qty = 1 })
		Task.Wait(0.25)
	end
	if not hoeFound then
		Events.Broadcast("inventoryAddEvent", player, { muid="E2428B216BD2D34B", qty = 1 })
		Task.Wait(0.25)
	end
end

function Save(player)
	Events.Broadcast("inventorySaveEvent", player, data[player])
end

function Delete(player, i)
	data[player][i] = nil
	if i >= 1 or i <= 9 then
		EquipItem(player, i, 0)
	end
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

function OnPlayerLeft(player)
	playersLatestSlot[player] = nil
end

function GetCurrentItem(player)
	return (playersLatestSlot[player] ~= nil and data[player][playersLatestSlot[player]]) and data[player][playersLatestSlot[player]].muid or nil
end

function Craft(player, craftMuid)
	if craftMuid == "905D3C58A6D70B6A" then
		if not PlayerHasItems(player, "828D307143518252", 2) then
			return
		end
		PlayerRemoveItems(player, "828D307143518252", 2)
		Add(player, { muid="905D3C58A6D70B6A", qty = 1 })
		local storage = Storage.GetPlayerData(player) or {}
		local story = storage.story or {}
		if story.step == 4 then
			Events.Broadcast("STEP_COMPLETED", player)
		end
	end

	if craftMuid == "849D4C1B02464AC5" then
		if not (PlayerHasItems(player, "905D3C58A6D70B6A", 1) and 
				PlayerHasItems(player, "7D3C73A40F261843", 2)) then
			return
		end
		PlayerRemoveItems(player, "905D3C58A6D70B6A", 1) 
		PlayerRemoveItems(player, "7D3C73A40F261843", 2)
		Add(player, { muid="905D3C58A6D70B6A", qty = 1 })
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

Events.ConnectForPlayer("inventoryReady", OnInventoryReady)
