local open = false
local p = Game.GetLocalPlayer()
local frame = script.parent:FindChildByName("Frame")
local bg = script.parent:FindChildByName("BG")
local full = script.parent:FindChildByName("Full")
local fullSFX = script.parent.parent.parent:GetCustomProperty("FullSFX"):GetObject()
local pickupSFX = script.parent.parent.parent:GetCustomProperty("PickupSFX"):GetObject()
local fullTime = 0
local scroll = script.parent:FindDescendantByName("Scroll")
local buttons = scroll:GetChildren()
local info = frame:FindChildByName("Info")
local stats = info:FindChildByName("Stats")
local name = info:FindChildByName("Name")
local delete = frame:FindDescendantByName("Delete")
local del = delete:FindDescendantByName("Slot")
local iDrag = nil
local levelString = script.parent.parent.parent:GetCustomProperty("LevelResource")
local levelRequirement = script.parent.parent.parent:GetCustomProperty("LevelRequirement")
local playerStorage = script.parent.parent.parent:GetCustomProperty("PlayerStorage")

local startupMessage = script.parent.parent.parent:GetCustomProperty("StartupMessage")
local fullMessage = script.parent.parent.parent:GetCustomProperty("FullMessage")

local ability = script.parent.parent.parent:GetCustomProperty("BindingOpen")

local slots = {frame:FindDescendantByName("Type1"), frame:FindDescendantByName("Type2")}
local slotText = {frame:FindDescendantByName("T1"), frame:FindDescendantByName("T2")}
local types = {script.parent.parent.parent:GetCustomProperty("Type1"), script.parent.parent.parent:GetCustomProperty("Type2")}
buttons[31] = slots[1]
buttons[32] = slots[2]

do
	fullTime = 400
	local c = full:GetColor()
	c.a = 1
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
	frame.x = -500
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
	if #ch == 2 then
		if string.match(ch[1].name, "Item") then
			ch = ch[1]
		else
			ch = ch[2]
		end
	else ch = nil end
	return ch or nil
end

function Save()
	if not playerStorage then return end
	Events.BroadcastToServer("requestInventorySaveEvent", p)
end

function OnLoad(item, i)
	OnAdd(item, i)
	if i == 31 or i == 32 then
		Events.BroadcastToServer("inventoryEquipEvent", p, i-30, GetItem(buttons[i]):GetCustomProperty("Equipment"))
	end
end

function Tick(_)
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
	if hover then
		local prop = hover:GetCustomProperties()
		local n = 0
		for key, value in pairs(prop) do
			n = n + 1
		end
		ih = n * 26 + 50
	end

	-- approach
	frame.x = Approach(frame.x, open and 25 or -300, math.abs(frame.x - (open and 25 or -300))/5)
	local c = slotText[1]:GetColor()
	c.a = Approach(c.a, open and 1 or 0, 0.1)
	slotText[1]:SetColor(c)
	slotText[2]:SetColor(c)
	local oo = open
	if frame.x < -299.9 then
		oo = false
	else
		oo = true
	end
	delete.x = Approach(delete.x, oo and 310 or 190, math.abs(delete.x - (oo and 310 or 190))/3)
	c = bg:GetColor()
	c.a = Approach(c.a, open and 0.5 or 0, 0.1)
	bg:SetColor(c)
	info.height = math.ceil(Approach(info.height, ih, math.abs(info.height - ih)/3))-2
end

function OnHover(button)
	local it = GetItem(button)
	if it then
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
	if it then
		if drag == nil then
			drag = it
			iDrag = iList[drag.parent]
			drag.parent = script.parent
			button.isInteractable = false
			if button.name == "Type1" or button.name == "Type2" then
				drag.x = button.parent.parent.x + button.parent.parent.parent.parent.x + button.x - screen.x/2
				drag.y = button.parent.parent.y + button.parent.parent.parent.parent.y + button.y - screen.y/2
			else
				drag.x = button.parent.x + button.parent.parent.parent.x + button.x - screen.x/2
				drag.y = button.parent.y + button.parent.parent.parent.y + button.y - screen.y/2
			end
		end
	elseif drag ~= nil and iList[button] ~= iDrag then
		local pass = nil
		if iList[button] == 31 or iList[button] == 32 then
			if drag:GetCustomProperty("Type") == types[iList[button]-30] then
				pass = 2
				if levelRequirement then
					if drag:GetCustomProperty("Level") <= (p:GetResource(levelString) or 0) then
						Events.BroadcastToServer("inventoryEquipEvent", p, iList[button]-30, drag:GetCustomProperty("Equipment"))
					else
						pass = -1
					end
				else
					Events.BroadcastToServer("inventoryEquipEvent", p, iList[button]-30, drag:GetCustomProperty("Equipment"))
				end
			end
		else
			pass = 1
			if iDrag == 31 or iDrag == 32 then
				Events.BroadcastToServer("inventoryEquipEvent", p, iDrag-30, 0)
			end
		end

		if pass == 1 or pass == 2 then
			drag.parent = button
			drag.x = 0
			drag.y = 0

			buttons[iDrag].isInteractable = true
			OnMove(iDrag, iList[button])

			drag = nil
			iDrag = nil

			OnHover(button)

			if pass == 2 then
				Save()
			end
		end
	end
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

function OnAdd(muid, ii)		-- ii - the button
	pickupSFX:Play()
	World.SpawnAsset(muid, {parent = buttons[ii]})
end

function OnMove(id, dest)
	Events.BroadcastToServer("inventoryMoveEvent", p, id, dest)
end

function OnPress(_, key)
	if key == ability then
		if full.text == startupMessage then
			fullTime = 60
		end
		open = not open
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

p.bindingPressedEvent:Connect(OnPress)
Events.Connect("inventoryLoadEvent", OnLoad)
Events.Connect("inventoryFullEvent", OnFull)
Events.Connect("requestInventoryAddEvent", OnAdd)
for i = 1, #buttons do
	iList[buttons[i]] = i
	buttons[i].hoveredEvent:Connect(OnHover)
	buttons[i].unhoveredEvent:Connect(OnUnhover)
	buttons[i].clickedEvent:Connect(OnClick)
end

del.clickedEvent:Connect(OnDelete)