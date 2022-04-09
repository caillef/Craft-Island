local APIO = require(script:GetCustomProperty("APIObjects"))
local SOUNDS = require(script:GetCustomProperty("SOUNDS"))
local propUI = script:GetCustomProperty("UI"):WaitForObject()
local propCoalSlot = script:GetCustomProperty("CoalSlot"):WaitForObject()
local propSlots = script:GetCustomProperty("Slots"):WaitForObject():GetChildren()
local propFlame = script:GetCustomProperty("Flame"):WaitForObject()
local player = Game.GetLocalPlayer()
local hoveredSlotIndex

local COAL_INDEX = -1
local COAL_DURATION = 20

propFlame.visibility = Visibility.FORCE_OFF
propUI.visibility =  Visibility.FORCE_OFF

local furnaces = {}
local currentFurnace

Events.Connect("OpenUIFurnace", function(id)
	Events.Broadcast("openInventory")
	propUI.visibility = Visibility.FORCE_ON
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
end)

function TransformItem(furnace, item, index, updateUI)
	if furnace.slots[index] then
		if updateUI then
			propSlots[index]:GetChildren()[2]:Destroy()
			local prop = World.SpawnAsset("3B81D9EBD0B175C3:Item UI", { parent = propSlots[index] })
			local img = prop:FindChildByType("UIImage")
			_G.ThumbnailGenerator.SetupImage(img, item.idName)
			prop:SetCustomProperty("Name", item.name)
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
			local prop = World.SpawnAsset("3B81D9EBD0B175C3:Item UI", { parent = propSlots[i] })
			local img = prop:FindChildByType("UIImage")
			_G.ThumbnailGenerator.SetupImage(img, item.idName)
			prop:SetCustomProperty("Name", item.name)
			f.slots[i] = item
			f.slotsTimer[i] = 7
			furnaces[currentFurnace] = f
			return true
		end
	end
	return false
end

local raw_item_list = { "DOUGH", "BERRY_PIE_DOUGH", "CARROT_CAKE_DOUGH", "FISH" }

function word_in_list(list, word)
	if not word then return false end
	for _,v in pairs(list) do
		if word == v then return true end
	end
	return false
end

function HasRawItemInside(f)
	return (f.slots[1] and word_in_list(raw_item_list, f.slots[1].idName)) or
		(f.slots[2] and word_in_list(raw_item_list, f.slots[2].idName)) or
		(f.slots[3] and word_in_list(raw_item_list, f.slots[3].idName))
end

function Tick()
	if Input.GetCursorPosition().x < UI.GetScreenSize().x/2 + 400  then hoveredSlotIndex = nil end

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
							if f.slots[i].idName == "BERRY_PIE_DOUGH" then
								TransformItem(f, APIO.QueryObject("BERRY_PIE"), i, updateUI)
							elseif f.slots[i].idName == "DOUGH" then
								TransformItem(f, APIO.QueryObject("BREAD"), i, updateUI)
							elseif f.slots[i].idName == "FISH" then
								TransformItem(f, APIO.QueryObject("COOKED_FISH"), i, updateUI)
							elseif f.slots[i].idName == "CARROT_CAKE_DOUGH" then
								TransformItem(f, APIO.QueryObject("CARROT_CAKE"), i, updateUI)
							end
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

	local item = APIO.QueryObjectByName(icon:GetCustomProperty("Name"))
	if not item then return end

	nextFastMove = time() + 0.5
	if item.idName == "COAL" then
		local qtyText
		if #propCoalSlot:GetChildren() == 1 then
			local prop = World.SpawnAsset("3B81D9EBD0B175C3:Item UI", { parent = propCoalSlot })
			local img = prop:FindChildByType("UIImage")
			_G.ThumbnailGenerator.SetupImage(img, item.idName)
			prop:SetCustomProperty("Name", item.name)
			qtyText = World.SpawnAsset("173D841514156696:InventoryQuantity", { parent = prop })
		else
			qtyText = propCoalSlot:GetChildren()[2]:FindChildByType("UIText")
		end
		furnaces[currentFurnace].nbCoals = furnaces[currentFurnace].nbCoals + 1
		qtyText.text = furnaces[currentFurnace].nbCoals > 1 and tostring(furnaces[currentFurnace].nbCoals) or ""
		while Events.BroadcastToServer("removeItem", { idName=item.idName }, 1) ~= BroadcastEventResultCode.SUCCESS do
			Task.Wait(1)
		end
		return
	end
	if (item.idName == "DOUGH" and SetItemEmptySlot(APIO.QueryObject("DOUGH"))) or
		(item.idName == "BERRY_PIE_DOUGH" and SetItemEmptySlot(APIO.QueryObject("BERRY_PIE_DOUGH"))) or
		(item.idName == "FISH" and SetItemEmptySlot(APIO.QueryObject("FISH"))) or
		(item.idName == "CARROT_CAKE_DOUGH" and SetItemEmptySlot(APIO.QueryObject("CARROT_CAKE_DOUGH"))) then
		while Events.BroadcastToServer("removeItem", { idName=item.idName }, 1) ~= BroadcastEventResultCode.SUCCESS do
			Task.Wait(1)
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
	SOUNDS.PlaySound("BurningFurnace", Game.GetLocalPlayer():GetWorldPosition())
	-- Events.BroadcastToServer("PlaySFX", "BurningFurnace")
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
                Task.Wait(1)
			end
			RemoveOneCoal(f, true)
			return
		end
		if not #propSlots[hoveredSlotIndex]:GetChildren() == 2 then
			return
		end
		while Events.BroadcastToServer("inventoryAddEvent", player, { id=f.slots[hoveredSlotIndex].id, qty = 1 }) ~= BroadcastEventResultCode.SUCCESS do
			Task.Wait(1)
		end
		local idName = f.slots[hoveredSlotIndex].idName
		if idName == "BREAD" then
			Task.Wait(0.3)
			Events.BroadcastToServer("TrackAction", { p=Game.GetLocalPlayer(), t=6, qty=1 })
		end
		if idName == "BERRY_PIE" then
			Task.Wait(0.3)
			Events.BroadcastToServer("TrackAction", { p=Game.GetLocalPlayer(), t=7, qty=1 })
		end
		if idName == "CARROT_CAKE" then
			Task.Wait(0.3)
			Events.BroadcastToServer("TrackAction", { p=Game.GetLocalPlayer(), t=8, qty=1 })
		end
		if idName == "COOKED_FISH" then
			Task.Wait(0.3)
			Events.BroadcastToServer("TrackAction", { p=Game.GetLocalPlayer(), t=17, qty=1 })
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
			local prop = World.SpawnAsset("3B81D9EBD0B175C3:Item UI", { parent = propSlots[i] })
			local img = prop:FindChildByType("UIImage")
			_G.ThumbnailGenerator.SetupImage(img, f.slots[i].idName)
			prop:SetCustomProperty("Name", f.slots[i].name)
		end
	end
end

for i=1,3 do
	propSlots[i].hoveredEvent:Connect(OnHover)
end
propCoalSlot.hoveredEvent:Connect(OnHover)
player.bindingPressedEvent:Connect(OnPress)