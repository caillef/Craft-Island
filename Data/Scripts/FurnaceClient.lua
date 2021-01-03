local propUI = script:GetCustomProperty("UI"):WaitForObject()
local propCoalSlot = script:GetCustomProperty("CoalSlot"):WaitForObject()
local propSlots = script:GetCustomProperty("Slots"):WaitForObject():GetChildren()
local propFlame = script:GetCustomProperty("Flame"):WaitForObject()

local player = Game.GetLocalPlayer()
local trigger
local hoveredSlotIndex

local COAL_INDEX = -1
local COAL_DURATION = 20
local DOUGH_MUID = "905D3C58A6D70B6A"

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
	f.slotsMuid = f.slotsMuid or {}
	furnaces[currentFurnace] = f
	propFlame.visibility = f.burningTimeLeft > 0 and Visibility.FORCE_ON or Visibility.FORCE_OFF
	SetupUI(f)
end)
Events.Connect("CloseUIFurnace", function()
	if not currentFurnace then return end
	propUI.visibility = Visibility.FORCE_OFF
	currentFurnace = nil
	Events.BroadcastToServer("EnableTrigger", triggerId)
end)

function TransformItem(furnace, muid, index, updateUI)
	if furnace.slotsMuid[index] then
		if updateUI then
			propSlots[index]:GetChildren()[2]:Destroy()
			World.SpawnAsset(muid, { parent = propSlots[index] })
		end
		furnace.slotsMuid[index] = mysplit(muid, ":")[1]
		return true
	end
	return false
end

function SetItemEmptySlot(muid)
	local f = furnaces[currentFurnace]
	for i=1,3 do
		if not f.slotsMuid[i] then
			World.SpawnAsset(muid, { parent = propSlots[i] })
			f.slotsMuid[i] = mysplit(muid, ":")[1]
			f.slotsTimer[i] = 7
			furnaces[currentFurnace] = f
			return true
		end
	end
	return false
end

function HasRawItemInside(f)
	return (f.slotsMuid[1] == DOUGH_MUID) or (f.slotsMuid[2] == DOUGH_MUID) or (f.slotsMuid[3] == DOUGH_MUID)
end

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
					if f.slotsMuid[i] then
						if f.slotsTimer[i] == nil then f.slotsTimer[i] = 7 end
						if f.slotsTimer[i] <= 0 then
							TransformItem(f, "58CF2E553C1958F0:Item UI Bread", i, updateUI)
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
Events.Connect("InventoryFastMove", function(buttonIndex, item)
	if nextFastMove and nextFastMove >= time() then return end
	nextFastMove = time() + 0.5
	if not item or not item:IsValid() or propUI.visibility == Visibility.FORCE_OFF then return end
	if item.sourceTemplateId == "D1EC52C0B5D654EA" then
		local qtyText
		if #propCoalSlot:GetChildren() == 1 then
			local prop = World.SpawnAsset(item.sourceTemplateId, { parent = propCoalSlot })
			qtyText = World.SpawnAsset("173D841514156696:InventoryQuantity", { parent = prop })
		else
			qtyText = propCoalSlot:GetChildren()[2]:FindChildByType("UIText")
		end
		furnaces[currentFurnace].nbCoals = furnaces[currentFurnace].nbCoals + 1
		qtyText.text = furnaces[currentFurnace].nbCoals > 1 and tostring(furnaces[currentFurnace].nbCoals) or ""
		Events.BroadcastToServer("removeItemFromMuid", item.sourceTemplateId, 1)
		return
	end
	if item.sourceTemplateId == DOUGH_MUID then
		if SetItemEmptySlot(DOUGH_MUID) then
			Events.BroadcastToServer("removeItemFromMuid", DOUGH_MUID, 1)
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
			Events.BroadcastToServer("inventoryAddEvent", player, { muid="D1EC52C0B5D654EA", qty = 1 })
			RemoveOneCoal(f, true)
			return
		end
		if not #propSlots[hoveredSlotIndex]:GetChildren() == 2 then
			return
		end
		Events.BroadcastToServer("inventoryAddEvent", player, { muid=f.slotsMuid[hoveredSlotIndex], qty = 1 })
		f.slotsTimer[hoveredSlotIndex] = nil
		f.slotsMuid[hoveredSlotIndex] = nil
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
		if f.slotsMuid[i] then
			World.SpawnAsset(f.slotsMuid[i], { parent = propSlots[i] })
		end
	end
end

for i=1,3 do
	propSlots[i].hoveredEvent:Connect(OnHover)
end
propCoalSlot.hoveredEvent:Connect(OnHover)
player.bindingPressedEvent:Connect(OnPress)