local loading = true

local propAddItemPanel = script:GetCustomProperty("AddItemPanel"):WaitForObject()
local propAddItemNotif = script:GetCustomProperty("AddItemNotif")

open = false
local p = Game.GetLocalPlayer()
local frame = script.parent:FindChildByName("Frame")
local bg = script.parent:FindChildByName("BG")
local full = script.parent:FindChildByName("Full")
local fullSFX = script.parent.parent.parent:GetCustomProperty("FullSFX"):GetObject()
local pickupSFX = script.parent.parent.parent:GetCustomProperty("PickupSFX"):GetObject()
local fullTime = 0
local scroll = script.parent:FindDescendantByName("Slots")
local buttons = scroll:GetChildren()
local info = frame:FindChildByName("Info")
local stats = info:FindChildByName("Stats")
local name = info:FindChildByName("Name")
local delete = frame:FindDescendantByName("Delete")
local del = delete:FindDescendantByName("Slot")
local iDrag = nil
local playerStorage = script.parent.parent.parent:GetCustomProperty("PlayerStorage")

local startupMessage = script.parent.parent.parent:GetCustomProperty("StartupMessage")
local fullMessage = script.parent.parent.parent:GetCustomProperty("FullMessage")

local ability = script.parent.parent.parent:GetCustomProperty("BindingOpen")
local hotbar_ability_prefix = "ability_extra_"

local slots = {frame:FindDescendantByName("Type1"), frame:FindDescendantByName("Type2")}
local slotText = {frame:FindDescendantByName("T1"), frame:FindDescendantByName("T2")}
local types = {script.parent.parent.parent:GetCustomProperty("Type1"), script.parent.parent.parent:GetCustomProperty("Type2")}
buttons[28] = slots[1]
buttons[29] = slots[2]

local lastSelection
local equippedTool
local hoveredSlotIndex

local notifications = {}
local nextNotification = time()

local _inventorySerializer
function GetInventorySerializer()
	_inventorySerializer = _G["caillef.craftisland.inventorySerializer"]
	while _inventorySerializer == nil do
		Task.Wait(0.1)
		_inventorySerializer = _G["caillef.craftisland.inventorySerializer"]
	end	
	return _inventorySerializer
end

local _objectsList
function GetObjectsList()
    _objectsList = _G["caillef.craftisland.objects"]
    while _objectsList == nil do
        Task.Wait(0.1)
        _objectsList = _G["caillef.craftisland.objects"]
    end
    return _objectsList    
end

scroll.visibility = Visibility.FORCE_OFF
Events.Connect("LoadingEnded", function()
	scroll.visibility = Visibility.FORCE_ON
	loading = false
end)

do
	fullTime = 400
	local c = full:GetColor()
	c.a = 0
	full:SetColor(c)
	full.width = 0
	full.text = startupMessage
end

local iList = {}

local hover = nil
local m = nil
local drag = nil
local screen = nil

do
	frame.visibility = Visibility.FORCE_OFF
	scroll.visibility = Visibility.FORCE_OFF

	bg:SetColor(Color.New(0, 0, 0, 0))
	local c = slotText[1]:GetColor()
	c.a = 0
	slotText[1]:SetColor(c)
	slotText[2]:SetColor(c)
	slotText[1].text = types[1]
	slotText[2].text = types[2]
end

function Approach(a, b, c)
	if a < b then
		a = a + c
	end
	if a > b then
		a = a - c
	end
	return a
end

function GetItem(from)
	local ch = from:GetChildren()
	if #ch >= 2 then
		ch = ch[2]
	else
		ch = nil
	end
	return ch
end

local lastSave = time()
function Save()
	if not playerStorage then return end

	if lastSave + 1 < time() then
		while Events.BroadcastToServer("requestInventorySaveEvent", p) ~= BroadcastEventResultCode.SUCCESS do
			Task.Wait(1)
		end
		lastSave = time()
	end
end

function OnLoad(str)
	local items = GetInventorySerializer().Deserialize(str)
	for i=1,27 do
		for k,c in pairs(buttons[i]:GetChildren()) do
			if k ~= 1 then -- Keep background
				c:Destroy()
			end
		end
	end

	for key,item in pairs(items) do
		if GetObjectsList()[item.id] and GetObjectsList()[item.id].itemMuid then
			local prop = World.SpawnAsset(GetObjectsList()[item.id].itemMuid, {parent = buttons[key]})
			local qtyText = World.SpawnAsset("173D841514156696", {parent = prop})
			qtyText.text = item.qty > 1 and tostring(item.qty) or ""
		end
	end
	Select(1)
end


function Tick(_)
	if loading then return end	
	if UI.GetCursorPosition().x > UI.GetScreenSize().x/2 + 400 then
		hoveredSlotIndex = nil
	end

	if #notifications > 0 and nextNotification <= time() then
		local notif = World.SpawnAsset(propAddItemNotif, { parent = propAddItemPanel })
		notif.text = "+"..tostring(notifications[1].qty).." "..notifications[1].name
		table.remove(notifications, 1)
		nextNotification = time() + 1
	end

	-- full
	if fullTime > 0 then
		fullTime = fullTime - 1
		if full.width < 500 then
			full.width = full.width + 50
		end
	else
		local c = full:GetColor()
		if c.a > 0 then
			c.a = c.a - 0.05
			full:SetColor(c)
		end
	end

	-- drag
	screen = UI.GetScreenSize()
	m = UI.GetCursorPosition() - screen/2
	if drag then
		if open then
			hover = nil
			drag.x = (drag.x + m.x)/2
			drag.y = (drag.y + m.y)/2
		else
			drag.parent = buttons[iDrag]
			drag.x = 0
			drag.y = 0
			buttons[iDrag].isInteractable = true
			drag = nil
		end
	end

	-- setup
	local ih = 0
	if hover and hover:IsValid() then
		local prop = hover:GetCustomProperties()
		local n = 0
		for key, value in pairs(prop) do
			n = n + 1
		end
		ih = n * 26 + 50
	end

	frame.visibility = open and Visibility.FORCE_ON or Visibility.FORCE_OFF
	scroll.y = open and 55 or 710
	local c = slotText[1]:GetColor()
	c.a = Approach(c.a, open and 1 or 0, 0.1)
	slotText[1]:SetColor(c)
	slotText[2]:SetColor(c)
	local oo = open
	c = bg:GetColor()
	c.a = Approach(c.a, open and 0.5 or 0, 0.1)
	bg:SetColor(c)
	info.height = math.ceil(Approach(info.height, ih, math.abs(info.height - ih)/3))-2

	if info.height == 0 then
		info.height = math.ceil(Approach(info.height, ih, math.abs(info.height - ih)/3))-2
	end
end

function OnHover(button)
	if button.parent.name == "Slots" then
		for i=1,30 do
			if buttons[i] == button then
				hoveredSlotIndex = i
			end
		end
	else
		hoveredSlotIndex = nil
	end
	local it = GetItem(button)
	if it and UI.GetCursorPosition().x < UI.GetScreenSize().x/2 + 400 then
		hover = it
		name.text = hover:GetCustomProperty("Name")
		local prop = hover:GetCustomProperties()
		stats.text = ""
		for key, value in pairs(prop) do
			if key ~= "Name" then
				if key ~= "Equipment" then
					stats.text = stats.text .. key .. ":  " .. tostring(value) .. "\n"
				end
			end
		end
	end
end

function OnClick(button)
	local it = GetItem(button)
	if it and drag == nil then
		drag = it
		iDrag = iList[drag.parent]
		drag.parent = script.parent
		button.isInteractable = true
		if button.name == "Type1" or button.name == "Type2" then
			drag.x = button.parent.parent.x + button.parent.parent.parent.parent.x + button.x - screen.x/2
			drag.y = button.parent.parent.y + button.parent.parent.parent.parent.y + button.y - screen.y/2
		else
			drag.x = button.parent.x + button.parent.parent.parent.x + button.x - screen.x/2
			drag.y = button.parent.y + button.parent.parent.parent.y + button.y - screen.y/2
		end
		return
	end

	if it then
		it.parent = buttons[iDrag]
	end

	drag.parent = button
	drag.x = 0
	drag.y = 0

	buttons[iDrag].isInteractable = true
	OnMove(iDrag, iList[button])

	drag = nil
	iDrag = nil

	OnHover(button)
	if iList[button] <= 9 then
		Select(iList[button])
	end
	Save()
end

function OnDelete(button)
	if drag then
		drag:Destroy()
		buttons[iDrag].isInteractable = true
		drag = nil
		Events.BroadcastToServer("inventoryDeleteEvent", p, iDrag)
		iDrag = nil
	end
end

function OnUnhover(button)
	hover = nil
end

function OnAdd(data, ii)		-- ii - the button
	pickupSFX:Play()
	local qtyText
	local oldQuantity

	local item = GetObjectsList()[data.id]
	if #buttons[ii]:GetChildren() == 1 then
		local prop = World.SpawnAsset(item.itemMuid, {parent = buttons[ii]})
		qtyText = World.SpawnAsset("173D841514156696:InventoryQuantity", {parent = prop})
		oldQuantity = 0
	else
		qtyText = GetItem(buttons[ii]):FindChildByType("UIText")
		oldQuantity = qtyText.text == "" and 1 or tonumber(qtyText.text)
	end
	qtyText.text = data.qty > 1 and tostring(data.qty) or ""
	if ii == lastSelection then
		lastSelection = -1
		Select(ii)
	end

	local isNew = true
	for k,v in pairs(notifications) do
		if v.name == item.name then
			v.qty = v.qty + data.qty - oldQuantity
			if v.qty > 0 then
				isNew = false
			else
				table.remove(notifications, k)
			end
		end
	end
	if isNew and data.qty - oldQuantity > 0 then
		table.insert(notifications, { qty=data.qty - oldQuantity, name=item.name })
	end
end

function OnRemove(data, ii)		-- ii - the button
	local qtyText
	if #buttons[ii]:GetChildren() == 2 then
		qtyText = GetItem(buttons[ii]):FindChildByType("UIText")
		if data.qty == 0 then
			GetItem(buttons[ii]):Destroy()
			Events.Broadcast("SelectStructure", nil)
		else
			qtyText.text = (data.qty == 1 and "" or tostring(data.qty))
		end
	end
	Save()
end

function Select(pickedIndex)
	if lastSelection == pickedIndex then
		return
	end
	local c
	for i=1, 9 do
		c = buttons[i]:GetButtonColor()
		c.a = i == pickedIndex and 0.8 or 0.4
		buttons[i]:SetButtonColor(c)
	end

	lastSelection = pickedIndex
	local it = GetItem(buttons[pickedIndex])
	while Events.BroadcastToServer("inventoryEquipEvent", p, pickedIndex, it and it:GetCustomProperty("Equipment") or nil) ~= BroadcastEventResultCode.SUCCESS do
		Task.Wait(1)
	end
	if it then
		while _G["caillef.craftisland.findstructure"] == nil do
			Task.Wait(0.1)
		end
		Events.Broadcast("SelectStructure", _G["caillef.craftisland.findstructure"](it.sourceTemplateId))
	end
end

function OnMove(id, dest)
	while Events.BroadcastToServer("inventoryMoveEvent", p, id, dest) ~= BroadcastEventResultCode.SUCCESS do
		Task.Wait(1)
    end
end

local debugConsole = script:GetCustomProperty("DebugConsoleClient"):WaitForObject().context
function OnPress(_, key)
	if open and debugConsole.IsCommandLineOpen() then
		open = false
		_G["caillef.craftisland.inventoryopen"] = open
		Events.Broadcast("CloseUIFurnace")
		Events.Broadcast("CloseUICraft")
		return
	end

	for i=1, 9 do
		if key == hotbar_ability_prefix..tostring(i) then
			Select(i)
			return
		end
	end

	if open and key == "ability_secondary" and hoveredSlotIndex and GetItem(buttons[hoveredSlotIndex]) then
		Events.Broadcast("InventoryFastMove", hoveredSlotIndex, GetItem(buttons[hoveredSlotIndex]))
	end

	if key == ability and not _G["caillef.craftisland.craftopen"] and not _G["caillef.craftisland.buysellopen"] then
		if full.text == startupMessage then
			fullTime = 60
		end
		open = not open
		_G["caillef.craftisland.inventoryopen"] = open
		if not open then
			Events.Broadcast("CloseUIFurnace")
			Events.Broadcast("CloseUICraft")
		end
		UI.SetCursorVisible(open)
		UI.SetCanCursorInteractWithUI(open)
	end
end

function OnFull()
	fullTime = 90
	local c = full:GetColor()
	c.a = 1
	full:SetColor(c)
	full.width = 0
	fullSFX:Play()
	full.text = fullMessage
end

function OnPrepareLoad(data)
	OnLoad(data)
end

p.bindingPressedEvent:Connect(OnPress)
Events.Connect("openInventory", function()
	if open then return end
	OnPress(nil, ability)
end)
Events.Connect("Inv", OnPrepareLoad)
Events.Connect("inventoryFullEvent", OnFull)
Events.Connect("requestInventoryAddEvent", OnAdd)
Events.Connect("requestInventoryRemoveEvent", OnRemove)
for i = 1, #buttons do
	iList[buttons[i]] = i
	buttons[i].hoveredEvent:Connect(OnHover)
	buttons[i].unhoveredEvent:Connect(OnUnhover)
	buttons[i].clickedEvent:Connect(OnClick)
end

Events.Connect("EnteringIsland", function()
	local tmp = lastSelection
	lastSelection = nil
	Select(tmp)
end)

local propCraftSlot = script:GetCustomProperty("CraftSlot"):WaitForObject()
propCraftSlot.hoveredEvent:Connect(OnHover)
propCraftSlot.unhoveredEvent:Connect(OnUnhover)
del.clickedEvent:Connect(OnDelete)

Task.Wait(1)
while Events.BroadcastToServer("inventoryReady", Game.GetLocalPlayer()) ~= BroadcastEventResultCode.SUCCESS do
	Task.Wait(1)
end
