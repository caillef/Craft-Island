local propUI = script:GetCustomProperty("UI"):WaitForObject()
local propCloseButton = script:GetCustomProperty("CloseButton"):WaitForObject()
local propList = script:GetCustomProperty("List"):WaitForObject()
local propCraftInfo = script:GetCustomProperty("Info"):WaitForObject()
local propQuantityController = script:GetCustomProperty("QuantityController"):WaitForObject()
local RESELLER_INFO = script:GetCustomProperty("ResellerInfo"):WaitForObject()

local APIInvSerializer = require(script:GetCustomProperty("APIInventorySerializer"))
local APIO = require(script:GetCustomProperty("APIObjects"))

local isSetup = false
local firstButton
open = false
_G["caillef.craftisland.buysellopen"] = false

local sellingType

local player = Game.GetLocalPlayer()
local triggerId

propUI.visibility =  Visibility.FORCE_OFF

function openUI(id, st)
	Task.Wait(0.1)
	_G["caillef.craftisland.buysellopen"] = true
	propUI.visibility = Visibility.FORCE_ON
	triggerId = id
	UI.SetCursorVisible(true)
	UI.SetCanCursorInteractWithUI(true)
	sellingType = st
	Events.BroadcastToServer("ReqInv")
	SetupUI(id)	
end

local inventory

function CountItems(id)
	local qty = 0
	for _,item in pairs(inventory) do
		if item.id == id then
			qty = qty + item.qty
		end
	end
	return qty
end

local currentButton

function LoadInv()
	local inv = player:GetPrivateNetworkedData("Inv")
	inventory = APIInvSerializer.Deserialize(inv)
end
player.privateNetworkedDataChangedEvent:Connect(function(player, key)
	if key ~= "Inv" then return end
	LoadInv()
end)
for _,key in ipairs(player:GetPrivateNetworkedDataKeys()) do
	if key == "Inv" then LoadInv() end
end

local buySellType = {
	"BuySellBaker", -- 1
	"BuySellSeeds", -- 2
	"BuySellFarmer", -- 3
	"BuySellMaterials", -- 4
	"BuySellReseller" -- 5
}

for k,v in ipairs(buySellType) do
	Events.Connect("OpenUI"..v, function(id)
		if not id then return end
		isSetup = false
		openUI(id, k)
	end)
end

local items = {}
function SelectItem(button)
	currentButton = button
	local item
	for k,b in pairs(propList:GetChildren()) do
		if b.id == button.id then
			item = items[k]
		end
	end
	if not item then return end
	currentItem = item
	local iconbg = propCraftInfo:FindChildByName("IconBg")
	for _,c in pairs(iconbg:GetChildren()) do
		c:Destroy()
	end
	local prop = World.SpawnAsset("3B81D9EBD0B175C3:Item UI", { parent = iconbg })
	prop.width = 160
	prop.height = 160
	local img = prop:FindChildByType("UIImage")
	_G.ThumbnailGenerator.SetupImage(img, currentItem.item.idName, true)
	prop:SetCustomProperty("Name", currentItem.item.name)
	propCraftInfo:FindChildByName("Name").text = currentItem.item.name
	propCraftInfo:FindChildByName("Price").text = tostring(currentItem.price)	
	propCraftInfo:FindChildByName("BuySellButton").text = currentItem.isBuy and "Buy" or "Sell"	

	local script = propQuantityController:FindChildByType("Script")
	if currentItem.isBuy then
		script.context.maxQuantity = math.floor(player:GetResource("Gold") / currentItem.price)
		nbMaxCraft = script.context.maxQuantity
		propCraftInfo:FindChildByName("BuySellButton").isInteractable = nbMaxCraft > 0
	else
		if inventory == nil then
			Events.BroadcastToServer("ReqInv")
		end
		while inventory == nil do
			Task.Wait(0.05)
		end
		local maxQty = CountItems(currentItem.item.id)
		script.context.maxQuantity = maxQty
		nbMaxCraft = maxQty
		propCraftInfo:FindChildByName("BuySellButton").isInteractable = maxQty > 0
		propQuantityController:FindChildByName("Qty").text = tostring(nbMaxCraft <= 0 and 0 or tonumber(propQuantityController:FindChildByName("Qty").text))
		if propQuantityController:FindChildByName("Qty").text == "0" and nbMaxCraft > 0 then
			propQuantityController:FindChildByName("Qty").text = "1"
		end
	end
	propQuantityController:FindChildByName("Qty").text = tostring(nbMaxCraft <= 0 and 0 or tonumber(propQuantityController:FindChildByName("Qty").text))
	if propQuantityController:FindChildByName("Qty").text == "0" and nbMaxCraft > 0 then
		propQuantityController:FindChildByName("Qty").text = "1"
	end
end

propCraftInfo:FindChildByName("BuySellButton").clickedEvent:Connect(function(button)
    button.isInteractable = false
	local qty = tonumber(propQuantityController:FindChildByName("Qty").text)
	if qty == 0 then return end
	Events.BroadcastToServer(currentItem.isBuy and "Buy" or "Sell", { idName=currentItem.item.idName, qty=tonumber(propQuantityController:FindChildByName("Qty").text), price=currentItem.price })
	inventory = nil
	SelectItem(currentButton)
end)

local propNbCoins = script:GetCustomProperty("NbCoins"):WaitForObject()

function SetupUI()
	if not isSetup then 	
		isSetup = true
		firstButton = nil
		for _,v in pairs(propList:GetChildren()) do
			if v:IsValid() then
				v:Destroy()
			end
		end
		propNbCoins.text = tostring(player:GetResource("Gold"))
		items = {}
		local slotIndex = 0
		for _,item in pairs(APIO.BuySellList(sellingType)) do
			local isBuy = item[1] == 1
			local itemId = item[2]
			local price = item[3]
			local button = World.SpawnAsset("2C17CAD37EA099F5:UI_CraftButton_Item", { parent = propList })
			if not firstButton then firstButton = button end
			local currentItem = APIO.QueryObject(itemId)
			if currentItem then
				local prop = World.SpawnAsset("3B81D9EBD0B175C3:Item UI", { parent = button })
				button.width = (408/3)
				button.height = (408/3)
				prop.width = (408/3)
				prop.height = (408/3)
				local img = prop:FindChildByType("UIImage")
				_G.ThumbnailGenerator.SetupImage(img, currentItem.idName, true)
				prop:SetCustomProperty("Name", currentItem.name)
				table.insert(items, {item = currentItem, price=price, isBuy=isBuy})
				button.x = math.floor(slotIndex % 3) * ((408/3) + 7)
				button.y = math.floor(slotIndex / 3) * ((408/3) + 7)
				button.clickedEvent:Connect(SelectItem)
				slotIndex = slotIndex + 1
			else
				print("Error with "..itemId)
			end
		end
	end
	SelectItem(firstButton)
	propList.height = sellingType == 5 and 400 or 500
	RESELLER_INFO.visibility = sellingType == 5 and Visibility.INHERIT or Visibility.FORCE_OFF
end

function CloseUI()
	_G["caillef.craftisland.buysellopen"] = false
	propUI.visibility = Visibility.FORCE_OFF
	Events.Broadcast("EnableTrigger", triggerId)
	UI.SetCursorVisible(false)
	UI.SetCanCursorInteractWithUI(false)
end

function OnPress(_, key)
	if key == "ability_extra_22" and _G["caillef.craftisland.buysellopen"] then
		CloseUI()
	end
end

function OnResourceChanged(player, resourceId, newValue)
	if not currentItem then return end
	if resourceId == "Gold" then
		propNbCoins.text = tostring(newValue)

		local script = propQuantityController:FindChildByType("Script")
		if currentItem.isBuy then
			script.context.maxQuantity = math.floor(newValue / currentItem.price)
			nbMaxCraft = script.context.maxQuantity
			propCraftInfo:FindChildByName("BuySellButton").isInteractable = nbMaxCraft > 0
		else
			script.context.maxQuantity = 1
			nbMaxCraft = 1
			propCraftInfo:FindChildByName("BuySellButton").isInteractable = true
		end
		propQuantityController:FindChildByName("Qty").text = tostring(nbMaxCraft <= 0 and 0 or tonumber(propQuantityController:FindChildByName("Qty").text))
		if propQuantityController:FindChildByName("Qty").text == "0" and nbMaxCraft > 0 then
			propQuantityController:FindChildByName("Qty").text = "1"
		end
	end
end

player.resourceChangedEvent:Connect(OnResourceChanged)

player.bindingPressedEvent:Connect(OnPress)
propCloseButton.clickedEvent:Connect(CloseUI)