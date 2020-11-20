local data = {}
local equipped = {}
local playerStorage = script.parent:GetCustomProperty("PlayerStorage")

function Update(player)
	print(tostring(player) .. ":")
	for i = 1, 32 do
		if data[player][i] then
			print(i, tostring(data[player][i]))
		end
	end
	for i = 1, 9 do
		if equipped[player][i] then
			print(equipped[player][i])
			print(i)
		end
	end
end

function Add(player, d)
	local muid = d.muid
	local qty = d.qty
	local ii
	for i = 1, 30 do
		if data[player] and data[player][i] == nil or data[player][i].muid == muid then
			ii = i
			break
		end
	end
	if ii ~= nil then
		if data[player][ii] then
			data[player][ii].qty = data[player][ii].qty + qty 
		else
			data[player][ii] = { muid=muid, qty=qty }
		end
		Events.BroadcastToPlayer(player, "requestInventoryAddEvent", data[player][ii], ii)
		Save(player)
	else
		warn("No free slots!")
	end
end

function OnInventoryReady(player)
	if playerStorage then
		local d = Storage.GetPlayerData(player)
		data[player] = d.inventory or {}
		equipped[player] = {}
		for i = 1, 27 do
			if data[player][i] then
				while Events.BroadcastToPlayer(player, "inventoryLoadEvent", data[player][i], i, i == #data[player]) ~= BroadcastEventResultCode.SUCCESS do
					Task.Wait(0.25)
				end
				Task.Wait(0.05)
			end
		end
	else
		data[player] = {}
		equipped[player] = {}
	end

	local foundAxe = false
	local foundWalls = false
	local foundSapling = false
	local foundStairs = false
	local foundFloors = false
	local hoeFound = false
	local seedsFound = false
	for _,item in pairs(data[player]) do
		local id = item.muid
		if id == "1214EEEF9701EE9A:Item UI Basic Axe" then
			foundAxe = true
		end
		if id == "A19DF3F7881592F3:Item UI Wheat Seeds" then
			seedsFound = true
		end
		if id == "D48610A224F25A9E:Item UI Sapling" then
			foundSapling = true
		end
		if id == "178FF62EF3246BE7:Item UI Wall Wood" then
			foundWalls = true
		end
		if id == "D4469C4FF621DC7D:Item UI Stairs Wood" then
			foundStairs = true
		end
		if id == "60BA6C27C1F3EA75:Item UI Floor Wood" then
			foundFloors = true
		end
		if id == "E2428B216BD2D34B:Item UI Basic Hoe" then
			hoeFound = true
		end
	end
	Task.Wait(0.1)
	if not foundAxe then
		Events.Broadcast("inventoryAddEvent", player, { muid="1214EEEF9701EE9A:Item UI Basic Axe", qty = 1 })
		Task.Wait(0.1)
	end
	if not foundSapling then
		Events.Broadcast("inventoryAddEvent", player, { muid="D48610A224F25A9E:Item UI Sapling", qty = 1 })
		Task.Wait(0.1)
	end
	if not foundWalls then
		Events.Broadcast("inventoryAddEvent", player, { muid="178FF62EF3246BE7:Item UI Wall Wood", qty = 10 })
		Task.Wait(0.1)
	end
	if not foundStairs then
		Events.Broadcast("inventoryAddEvent", player, { muid="D4469C4FF621DC7D:Item UI Stairs Wood", qty = 10 })
		Task.Wait(0.1)
	end
	if not foundFloors then
		Events.Broadcast("inventoryAddEvent", player, { muid="60BA6C27C1F3EA75:Item UI Floor Wood", qty = 10 })
		Task.Wait(0.1)
	end
	if not hoeFound then
		Events.Broadcast("inventoryAddEvent", player, { muid="E2428B216BD2D34B:Item UI Basic Hoe", qty = 1 })
		Task.Wait(0.1)
	end
	if not seedsFound then
		Events.Broadcast("inventoryAddEvent", player, { muid="A19DF3F7881592F3:Item UI Wheat Seeds", qty = 6 })
		Task.Wait(0.1)
	end
	Events.Broadcast("SInventoryReady", player)
end

function Save(player)
	if playerStorage then
		Events.Broadcast("inventorySaveEvent", player, data[player])
	end
end

function Delete(player, i)
	data[player][i] = nil
	if i >= 1 or i <= 9 then
		EquipItem(player, i, 0)
	end
end

function Move(player, iDrag, dest)
	local a = data[player][iDrag]
	data[player][dest] = a
	data[player][iDrag] = nil
end

local loadedTools = {}

function EquipItem(player, slot, toolMuid)
	if toolMuid == nil then toolMuid = 0 end
	equipped[player] = equipped[player] or {}
	loadedTools[player] = loadedTools[player] or {}
	if toolMuid == 0 then
		for _,tool in pairs(loadedTools[player]) do
			if tool:IsValid() then
				tool:Unequip()
			end
		end
	elseif toolMuid then
		loadedTools[player][toolMuid] = (loadedTools[player][toolMuid] and loadedTools[player][toolMuid]:IsValid()) and loadedTools[player][toolMuid] or World.SpawnAsset(toolMuid)
		loadedTools[player][toolMuid].visibility = Visibility.FORCE_ON
		loadedTools[player][toolMuid]:Equip(player)
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
			Events.BroadcastToPlayer(player, "requestInventoryRemoveEvent", data[player][i], i)
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

Events.Connect("requestInventorySaveEvent", Save)
Events.Connect("inventoryAddEvent", Add)
Events.Connect("inventoryDeleteEvent", Delete)
Events.Connect("inventoryMoveEvent", Move)
Events.Connect("inventoryEquipEvent", EquipItem)
Events.Connect("requestInventoryFullEvent", FreeSlots)

Events.ConnectForPlayer("inventoryReady", OnInventoryReady)
