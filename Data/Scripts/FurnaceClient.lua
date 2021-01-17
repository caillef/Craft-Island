﻿local propUI = script:GetCustomProperty("UI"):WaitForObject()
local propCoalSlot = script:GetCustomProperty("CoalSlot"):WaitForObject()
local propSlots = script:GetCustomProperty("Slots"):WaitForObject():GetChildren()
local propFlame = script:GetCustomProperty("Flame"):WaitForObject()

local player = Game.GetLocalPlayer()
local trigger
local hoveredSlotIndex

local COAL_INDEX = -1
local COAL_DURATION = 20

local _queryObjectFunction
function QueryObject(id)
    _queryObjectFunction = _G["caillef.craftisland.queryobject"]
    while _queryObjectFunction == nil do
        Task.Wait(0.1)
        _queryObjectFunction = _G["caillef.craftisland.queryobject"]
    end
    return _queryObjectFunction(id)
end

local objectsList
function GetObjectsList()
    objectsList = _G["caillef.craftisland.objects"]
    while objectsList == nil do
        Task.Wait(0.1)
        objectsList = _G["caillef.craftisland.objects"]
    end
    return objectsList    
end

propFlame.visibility = Visibility.FORCE_OFF
propUI.visibility =  Visibility.FORCE_OFF

local furnaces = {}
local currentFurnace

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

Events.Connect("OpenUIFurnace", function(id)
	if not id then return end
	Events.Broadcast("openInventory")
	propUI.visibility = Visibility.FORCE_ON
	triggerId = id
	currentFurnace = id
	f = furnaces[currentFurnace] or {}
	f.nbCoals = f.nbCoals or 0
	f.slotsTimer = f.slotsTimer or { nil, nil, nil }
	f.burningTimeLeft = f.burningTimeLeft or 0
	f.slots = f.slots or {}
	furnaces[currentFurnace] = f
	propFlame.visibility = f.burningTimeLeft > 0 and Visibility.FORCE_ON or Visibility.FORCE_OFF
	SetupUI(f)
end)
Events.Connect("CloseUIFurnace", function()
	if not currentFurnace then return end
	propUI.visibility = Visibility.FORCE_OFF
	currentFurnace = nil
	while Events.BroadcastToServer("EnableTrigger", triggerId) ~= BroadcastEventResultCode.SUCCESS do
		Task.Wait(0.25)
	end
end)

function TransformItem(furnace, item, index, updateUI)
	if furnace.slots[index] then
		if updateUI then
			propSlots[index]:GetChildren()[2]:Destroy()
			World.SpawnAsset(item.itemMuid, { parent = propSlots[index] })
		end
		furnace.slots[index] = item
		return true
	end
	return false
end

function SetItemEmptySlot(item)
	local f = furnaces[currentFurnace]
	for i=1,3 do
		if not f.slots[i] then
			World.SpawnAsset(item.itemMuid, { parent = propSlots[i] })
			f.slots[i] = item
			f.slotsTimer[i] = 7
			furnaces[currentFurnace] = f
			return true
		end
	end
	return false
end

function HasRawItemInside(f)
	return (f.slots[1] and f.slots[1].idName == "DOUGH") or (f.slots[2] and f.slots[2].idName == "DOUGH") or (f.slots[3] and f.slots[3].idName == "DOUGH")end

function Tick()
	if UI.GetCursorPosition().x < UI.GetScreenSize().x/2 + 400  then hoveredSlotIndex = nil end

	local updateUI
	for k,f in pairs(furnaces) do
		updateUI = k == currentFurnace
		if f.nbCoals <= 0 and f.burningTimeLeft <= 0 then
			f.slotsTimer[1] = nil
			f.slotsTimer[2] = nil
			f.slotsTimer[3] = nil
		else
			if f.nbCoals > 0 and f.burningTimeLeft <= 0 and HasRawItemInside(f) then
				f.burningTimeLeft = COAL_DURATION
				RemoveOneCoal(f, updateUI)
				-- Play sfx start fire
			end
			if f.burningTimeLeft > 0 then
				f.burningTimeLeft = f.burningTimeLeft - 1
				for i = 1,3 do
					if f.slots[i] then
						if f.slotsTimer[i] == nil then f.slotsTimer[i] = 7 end
						if f.slotsTimer[i] <= 0 then
							TransformItem(f, QueryObject("BREAD"), i, updateUI)
							f.slotsTimer[i] = nil
						else
							f.slotsTimer[i] = f.slotsTimer[i] - 1
						end
					end
				end
			end
		end
		if updateUI then
			propFlame.visibility = f.burningTimeLeft > 0 and Visibility.FORCE_ON or Visibility.FORCE_OFF
		end
	end
	if updateUI ~= nil then
		Task.Wait(1)
	end
end

local nextFastMove
Events.Connect("InventoryFastMove", function(buttonIndex, icon)
	if propUI.visibility == Visibility.FORCE_OFF then return end
	if nextFastMove and nextFastMove >= time() then return end

	local item
	for key,obj in pairs(GetObjectsList()) do
		if obj.itemMuid == icon.sourceTemplateId then
			item = obj
		end
	end
	if not item then return end

	nextFastMove = time() + 0.5
	if item.idName == "COAL" then
		local qtyText
		if #propCoalSlot:GetChildren() == 1 then
			local prop = World.SpawnAsset(item.itemMuid, { parent = propCoalSlot })
			qtyText = World.SpawnAsset("173D841514156696:InventoryQuantity", { parent = prop })
		else
			qtyText = propCoalSlot:GetChildren()[2]:FindChildByType("UIText")
		end
		furnaces[currentFurnace].nbCoals = furnaces[currentFurnace].nbCoals + 1
		qtyText.text = furnaces[currentFurnace].nbCoals > 1 and tostring(furnaces[currentFurnace].nbCoals) or ""
		while Events.BroadcastToServer("removeItem", { idName=item.idName }, 1) ~= BroadcastEventResultCode.SUCCESS do
			Task.Wait(0.25)
		end
		return
	end
	if item.idName == "DOUGH" and
	   SetItemEmptySlot(QueryObject("DOUGH")) then
		while Events.BroadcastToServer("removeItem", { idName=item.idName }, 1) ~= BroadcastEventResultCode.SUCCESS do
			Task.Wait(0.25)
		end
		return
	end
end)

function OnHover(button)
	for i=1,3 do
		if button == propSlots[i] then
			hoveredSlotIndex = i
		end
	end
	if button == propCoalSlot then
		hoveredSlotIndex = COAL_INDEX
	end
end

function RemoveOneCoal(f, updateUI)
	f.nbCoals = f.nbCoals - 1
	if not updateUI then return end
	if f.nbCoals <= 0 then
		propCoalSlot:GetChildren()[2]:Destroy()
	else
		local qtyText = propCoalSlot:GetChildren()[2]:FindChildByType("UIText")
		qtyText.text = f.nbCoals > 1 and tostring(f.nbCoals) or ""
	end
end

local nextRetrieve
function OnPress(_, key)
	if nextRetrieve and nextRetrieve >= time() then return end
	nextRetrieve = time() + 0.5
	local f = furnaces[currentFurnace]
	if propUI.visibility == Visibility.FORCE_ON and key == "ability_secondary" and hoveredSlotIndex and (hoveredSlotIndex == COAL_INDEX or #propSlots[hoveredSlotIndex]:GetChildren() > 1) then
		if hoveredSlotIndex == COAL_INDEX then -- coal
			if f.nbCoals <= 0 then return end
			while Events.BroadcastToServer("inventoryAddEvent", player, { idName="COAL", qty = 1 }) ~= BroadcastEventResultCode.SUCCESS do
				Task.Wait(0.25)
			end
			RemoveOneCoal(f, true)
			return
		end
		if not #propSlots[hoveredSlotIndex]:GetChildren() == 2 then
			return
		end
		while Events.BroadcastToServer("inventoryAddEvent", player, { id=f.slots[hoveredSlotIndex].id, qty = 1 }) ~= BroadcastEventResultCode.SUCCESS do
			Task.Wait(0.25)
		end
		f.slotsTimer[hoveredSlotIndex] = nil
		f.slots[hoveredSlotIndex] = nil
		propSlots[hoveredSlotIndex]:GetChildren()[2]:Destroy()
	end
end

function SetupUI(f)
	if #propCoalSlot:GetChildren() > 1 then
		propCoalSlot:GetChildren()[2]:Destroy()
	end
	if f.nbCoals > 0 then
		local prop = World.SpawnAsset("D1EC52C0B5D654EA", { parent = propCoalSlot })
		local qtyText = World.SpawnAsset("173D841514156696:InventoryQuantity", { parent = prop })
		qtyText.text = f.nbCoals > 1 and tostring(f.nbCoals) or ""
	end

	for i=1,3 do
		if #propSlots[i]:GetChildren() > 1 then
			propSlots[i]:GetChildren()[2]:Destroy()
		end
		if f.slots[i] then
			World.SpawnAsset(f.slots[i].itemMuid, { parent = propSlots[i] })
		end
	end
end

for i=1,3 do
	propSlots[i].hoveredEvent:Connect(OnHover)
end
propCoalSlot.hoveredEvent:Connect(OnHover)
player.bindingPressedEvent:Connect(OnPress)