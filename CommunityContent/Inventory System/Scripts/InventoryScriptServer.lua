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
	for i = 1, 31 do
		if equipped[player][i] then
			print(equipped[player][i])
			print(i)
		end
	end
end

function Add(player, muid)
	local ii
	for i = 1, 30 do
		if data[player][i] == nil then
			ii = i
			break
		end
	end
	if ii ~= nil then
		data[player][ii] = muid
		Events.BroadcastToPlayer(player, "requestInventoryAddEvent", muid, ii)
		Save(player)
	else
		warn("No free slots!")
	end
end

function OnConnect(player)
	if playerStorage then
		local d = Storage.GetPlayerData(player)
		data[player] = d.inventory or {}
		equipped[player] = {}
		for i = 1, 32 do
			if data[player][i] == nil then
			else
				local result = Events.BroadcastToPlayer(player, "inventoryLoadEvent", data[player][i], i)
				if result == BroadcastEventResultCode.SUCCESS then
					Task.Wait(0.15)
				else
					warn("[LOADING PROCEDURE] FAILED TO BROADCAST - Retrying in 0.25s")
					Task.Wait(0.25)
					i = i - 1;
				end
			end
		end
	else
		data[player] = {}
		equipped[player] = {}
	end
end

function Save(player)
	if playerStorage then
		Events.Broadcast("inventorySaveEvent", player, data[player])
	end
end

function Delete(player, i)
	data[player][i] = nil
	if i == 31 or i == 32 then
		EquipItem(player, i-30, 0)
	end
end

function Move(player, iDrag, dest)
	local a = data[player][iDrag]
	data[player][dest] = a
	data[player][iDrag] = nil
end

function EquipItem(player, slot, muid)
	if muid == nil then muid = 0 end
	if muid == 0 then
		if equipped[player][slot] then
			equipped[player][slot]:Unequip()
			equipped[player][slot]:Destroy()
			equipped[player][slot] = nil
		end
	elseif muid then
		if equipped[player][slot] ~= nil then
			equipped[player][slot]:Unequip()
			equipped[player][slot]:Destroy()
			equipped[player][slot] = nil
		end
		equipped[player][slot] = World.SpawnAsset(muid)
		equipped[player][slot]:Equip(player)
	end
end

function FreeSlots(player, string)
	local ii
	for i = 1, 30 do
		if data[player][i] == nil then
			ii = i
			break
		end
	end

	Events.Broadcast("returnInventoryFullEvent", string, (ii == nil))
end

Events.Connect("requestInventorySaveEvent", Save)
Events.Connect("inventoryAddEvent", Add)
Events.Connect("inventoryDeleteEvent", Delete)
Events.Connect("inventoryMoveEvent", Move)
Events.Connect("inventoryEquipEvent", EquipItem)
Events.Connect("requestInventoryFullEvent", FreeSlots)
Game.playerJoinedEvent:Connect(OnConnect)