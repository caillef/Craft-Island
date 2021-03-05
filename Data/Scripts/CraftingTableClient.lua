local propUI = script:GetCustomProperty("UI"):WaitForObject()
local propCloseButton = script:GetCustomProperty("CloseButton"):WaitForObject()
local propCraftList = script:GetCustomProperty("CraftList"):WaitForObject()
local propCraftInfo = script:GetCustomProperty("CraftInfo"):WaitForObject()
local propQuantityController = script:GetCustomProperty("QuantityController"):WaitForObject()

local isSetup = false
local firstButton
open = false
_G["caillef.craftisland.craftopen"] = open

local player = Game.GetLocalPlayer()
local triggerId

local tableType = 0

propUI.visibility =  Visibility.FORCE_OFF

Events.Connect("OpenUICraft", function(id)
	if not id then return end
	if tableType ~= 0 then
		tableType = 0
		isSetup = false
	end
	_G["caillef.craftisland.craftopen"] = true
	propUI.visibility = Visibility.FORCE_ON
	triggerId = id
	UI.SetCursorVisible(true)
	UI.SetCanCursorInteractWithUI(true)
	SetupUI()
end)

Events.Connect("OpenUICooking", function(id)
	if not id then return end
	if tableType ~= 1 then
		tableType = 1
		isSetup = false
	end
	tableType = 1
	_G["caillef.craftisland.craftopen"] = true
	propUI.visibility = Visibility.FORCE_ON
	triggerId = id
	UI.SetCursorVisible(true)
	UI.SetCanCursorInteractWithUI(true)
	SetupUI()
end)

local ingrIds = {}
local nextCall = time()
function Tick()
	if #ingrIds > 0 and time() >= nextCall then
		while Events.BroadcastToServer("ReqCraft", ingrIds) ~= BroadcastEventResultCode.SUCCESS do
			Task.Wait(0.5)
		end
		nextCall = time() + 1
	end
end

local currentCraft
local craftItems = {}
function SelectCraftItem(button)
	local craft
	for k,b in pairs(propCraftList:GetChildren()) do
		if b.id == button.id then
			craft = craftItems[k]
		end
	end
	if not craft then return end
	currentCraft = craft
	local iconbg = propCraftInfo:FindChildByName("IconBg")
	for _,c in pairs(iconbg:GetChildren()) do
		c:Destroy()
	end
	World.SpawnAsset(craft.item.itemMuid, { parent = iconbg })
	propCraftInfo:FindChildByName("Name").text = craft.item.name..(craft.qty > 1 and " x"..tostring(craft.qty) or "")
	local ingredients = propCraftInfo:FindChildByName("Ingredients"):GetChildren()
	local rawIngredients = craft.ingredients
	ingrIds = {}
	for i=1,3 do
		local ig = ingredients[i]
		ig.text = ""
		ig:GetChildren()[1].text = ""
		if (i * 2) - 1 <= #rawIngredients then
			local fullIngredient = _G["caillef.craftisland.queryobject"](rawIngredients[(i * 2) - 1])
			table.insert(ingrIds, fullIngredient.id)
		end
	end
	nextCall = time()
end

Events.Connect("RespCraft", function(ingrQty)
	local ingredients = propCraftInfo:FindChildByName("Ingredients"):GetChildren()
	local rawIngredients = currentCraft.ingredients
	local nbMaxCraft = 100000000
	for i=1,5,2 do
		local ig = ingredients[(i - 1) / 2 + 1]
		if i > #rawIngredients then
			ig.text = ""
			ig:GetChildren()[1].text = ""
		else
			local fullIngredient = _G["caillef.craftisland.queryobject"](rawIngredients[i])
			ig.text = fullIngredient.name
			currentAmount = ingrQty[fullIngredient.id] or 0
			local qty = rawIngredients[i + 1]
			ig:GetChildren()[1].text = tostring(currentAmount).."/"..tostring(qty)
			ig:GetChildren()[1]:SetColor(currentAmount < qty and Color.RED or Color.GREEN)
			local maxQtyCraftable = math.floor(currentAmount / qty)
			if maxQtyCraftable < nbMaxCraft then nbMaxCraft = maxQtyCraftable end
		end
	end

	local script = propQuantityController:FindChildByType("Script")
	script.context.maxQuantity = nbMaxCraft
	propQuantityController:FindChildByName("Qty").text = tostring(nbMaxCraft <= 0 and 0 or tonumber(propQuantityController:FindChildByName("Qty").text))
	if propQuantityController:FindChildByName("Qty").text == "0" and nbMaxCraft > 0 then
		propQuantityController:FindChildByName("Qty").text = "1"
	end
	propCraftInfo:FindChildByName("CraftButton").isInteractable = nbMaxCraft > 0
end)

propCraftInfo:FindChildByName("CraftButton").clickedEvent:Connect(function(button)
	while Events.BroadcastToServer("inventoryCraftEvent", player, currentCraft.item.idName, tonumber(propQuantityController:FindChildByName("Qty").text)) ~= BroadcastEventResultCode.SUCCESS do
		Task.Wait(1)
    end
    button.isInteractable = false
	Task.Wait(0.3)
	Events.BroadcastToServer("ReqCraft", ingrIds)
    button.isInteractable = true
end)

function SetupUI()
	if not isSetup then 	
		isSetup = true
		firstButton = nil
		for _,v in pairs(propCraftList:GetChildren()) do
			if v:IsValid() then
				v:Destroy()
			end
		end
		craftItems = {}
		local slotIndex = 0
		for _,craft in pairs(_G["caillef.craftisland.crafts"]) do
			local recipe = craft[2]
			if craft[3] == tableType then
				for i=1,#recipe,2 do
					local button = World.SpawnAsset("2C17CAD37EA099F5:UI_CraftButton_Item", { parent = propCraftList })
					if not firstButton then firstButton = button end
					local item = _G["caillef.craftisland.queryobject"](recipe[i])
					World.SpawnAsset(item.itemMuid, { parent = button })
					table.insert(craftItems, { item=item, ingredients=craft[1], qty=recipe[i + 1] })
					button.x = (slotIndex % 4) * 110
					button.y = math.floor(slotIndex / 4) * 110
					button.clickedEvent:Connect(SelectCraftItem)
					slotIndex = slotIndex + 1
				end		
			end
		end
	end
	SelectCraftItem(firstButton)
end

function CloseUI()
	_G["caillef.craftisland.craftopen"] = false
	propUI.visibility = Visibility.FORCE_OFF
	while Events.BroadcastToServer("EnableTrigger", triggerId) ~= BroadcastEventResultCode.SUCCESS do
		Task.Wait(1)
	end
	UI.SetCursorVisible(false)
	UI.SetCanCursorInteractWithUI(false)
end

function OnPress(_, key)
	if key == "ability_extra_22" and _G["caillef.craftisland.craftopen"] then
		CloseUI()
	end
end

player.bindingPressedEvent:Connect(OnPress)
propCloseButton.clickedEvent:Connect(CloseUI)