local propUIPanel = script:GetCustomProperty("UIPanel"):WaitForObject()
local propGoldAmount = script:GetCustomProperty("GoldAmount"):WaitForObject()
local propGemAmount = script:GetCustomProperty("GemAmount"):WaitForObject()
local propPerksButtonDay = script:GetCustomProperty("PerksButtonDay"):WaitForObject()
local propPerksButtonSeason = script:GetCustomProperty("PerksButtonSeason"):WaitForObject()
local propPerksButtonUnlimited = script:GetCustomProperty("PerksButtonUnlimited"):WaitForObject()
local propVIPInfinity = script:GetCustomProperty("VIPInfinity")
local propBuy24hWithGems = script:GetCustomProperty("Buy24hWithGems"):WaitForObject()
local propIsVIP = script:GetCustomProperty("IsVIP"):WaitForObject()

local propVIPexpiring24hours = script:GetCustomProperty("VIPexpiring24hours"):WaitForObject()
local propVIPexpiringdays = script:GetCustomProperty("VIPexpiringdays"):WaitForObject()

local player = Game.GetLocalPlayer()

if player:HasPerk(propVIPInfinity) then
    propPerksButtonUnlimited.isInteractable = false
end

function LoadUI()
    propUIPanel.visibility = Visibility.FORCE_ON
    UI.SetCursorVisible(true)
    UI.SetCanCursorInteractWithUI(true)
    propBuy24hWithGems.isInteractable = player:GetResource("Gem") >= 500
    propGoldAmount.text = tostring(player:GetResource("RewardGoldVIP"))
    propGemAmount.text = tostring(player:GetResource("RewardGemVIP"))
end

function OnBindingPressed(player, bindingPressed)
    if bindingPressed == "ability_extra_37" and player:GetResource("VIPLeft") ~= -1 then
        propUIPanel.visibility = propUIPanel.visibility == Visibility.FORCE_ON and Visibility.FORCE_OFF or Visibility.FORCE_ON
        UI.SetCursorVisible(propUIPanel.visibility == Visibility.FORCE_ON)
        UI.SetCanCursorInteractWithUI(propUIPanel.visibility == Visibility.FORCE_ON)
        if propUIPanel.visibility == Visibility.FORCE_ON then
            LoadUI()
        end
    end
end

local propClose = script:GetCustomProperty("Close"):WaitForObject()
propClose.clickedEvent:Connect(function()
	propUIPanel.visibility = Visibility.FORCE_OFF
	UI.SetCursorVisible(false)
	UI.SetCanCursorInteractWithUI(false)
end)

player.bindingPressedEvent:Connect(OnBindingPressed)

Events.Connect("ToggleVIPUI", function(show)
	if show then
        LoadUI()
	else
		propUIPanel.visibility = Visibility.FORCE_OFF
		UI.SetCursorVisible(false)
		UI.SetCanCursorInteractWithUI(false)
	end
end)

propBuy24hWithGems.clickedEvent:Connect(function()
    Events.BroadcastToServer("VIPGems")
end)

propVIPexpiring24hours.visibility = Visibility.FORCE_OFF
propVIPexpiringdays.visibility = Visibility.FORCE_OFF
propUIPanel.visibility = Visibility.FORCE_OFF
player.resourceChangedEvent:Connect(function(player, resourceId, amount)
    if resourceId == "VIP" then 
        local isvip = resourceId == "VIP" and amount == 1
        propIsVIP.visibility = isvip and Visibility.FORCE_ON or Visibility.FORCE_OFF
        propUIPanel.visibility = Visibility.FORCE_OFF
        UI.SetCursorVisible(false)
        UI.SetCanCursorInteractWithUI(false)
    end

    if resourceId == "VIPLeft" then
	    if amount == -1 then
	        if World.GetRootObject():FindDescendantByName("K text") then
		        World.GetRootObject():FindDescendantByName("K text"):Destroy()
			end	
	       	propVIPexpiring24hours.visibility = Visibility.FORCE_OFF
            propVIPexpiringdays.visibility = Visibility.FORCE_OFF
            return
        end
        if amount <= 0 then
            propVIPexpiring24hours.visibility = Visibility.FORCE_OFF
            propVIPexpiringdays.visibility = Visibility.FORCE_OFF
        elseif amount <= 1 then
            propVIPexpiring24hours.visibility = Visibility.INHERIT
            propVIPexpiringdays.visibility = Visibility.FORCE_OFF
        else
            propVIPexpiring24hours.visibility = Visibility.FORCE_OFF
            propVIPexpiringdays.visibility = Visibility.INHERIT
            propVIPexpiringdays:GetChildren()[1].text = tostring(amount).." days"
        end
    end

    if resourceId == "NewVIP" and amount == 1 and propUIPanel.visibility == Visibility.FORCE_ON then
        World.SpawnAsset("46DFF20261B31BE9:VIPNotif", {parent=script.parent})
        propUIPanel.visibility = Visibility.FORCE_OFF
        UI.SetCursorVisible(false)
        UI.SetCanCursorInteractWithUI(false)
    end
end)