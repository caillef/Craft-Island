local propUIPanel = script:GetCustomProperty("UIPanel"):WaitForObject()
local propVIP = script:GetCustomProperty("VIP"):WaitForObject()
local propNotVIP = script:GetCustomProperty("NotVIP"):WaitForObject()
local propNext = script:GetCustomProperty("Next"):WaitForObject()
local propRewardButton = script:GetCustomProperty("RewardButton"):WaitForObject()
local propNextAchivements = script:GetCustomProperty("NextAchivements"):WaitForObject()
local propClickheretext = script:GetCustomProperty("Clickheretext"):WaitForObject()

propUIPanel.visibility = Visibility.FORCE_OFF
propVIP.visibility = Visibility.FORCE_OFF
propNotVIP.visibility = Visibility.FORCE_OFF

local player = Game.GetLocalPlayer()

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

local achievements = {
	{ type = 1, name = "Harvest ;; wheats", qtys = { 1, 10, 25, 50, 100, 200, 500, 1000 } },
	{ type = 2, name = "Harvest ;; berries", qtys = { 1, 10, 25, 50, 100, 200, 500, 1000 } },
	{ type = 3, name = "Harvest ;; carrots", qtys = { 1, 10, 25, 50, 100, 200, 500, 1000 } },
	{ type = 4, name = "Mine on the mining island ;; stones", qtys = { 1, 10, 50, 100, 200, 500, 1000 } },
	{ type = 5, name = "Mine on the mining island ;; coals", qtys = { 1, 10, 50, 100, 200, 500, 1000 } },
	{ type = 6, name = "Bake ;; breads", qtys = { 1, 10, 25, 50, 100, 200, 500, 1000 } },
	{ type = 7, name = "Bake ;; berry pies", qtys = { 1, 10, 25, 50, 100, 200, 500, 1000 } },
	{ type = 8, name = "Bake ;; carrot cakes", qtys = { 1, 10, 25, 50, 100, 200, 500, 1000 } },
	{ type = 9, name = "Craft ;; structures", qtys = { 1, 10, 25, 50, 100, 200, 500, 1000 } },
	{ type = 10, name = "Craft ;; crafting table from inventory.", qtys = { 1 } },
	{ type = 11, name = "Craft ;; furnace.", qtys = { 1 } },
	{ type = 12, name = "Chop ;; trees", qtys = { 1, 10, 25, 50, 100, 200, 500, 1000 } },
	{ type = 13, name = "Sell ;; breads", qtys = { 1, 10, 25, 50, 100, 200, 500, 1000 } },
	{ type = 14, name = "Buy ;; carrot seeds", qtys = { 1 } },
	{ type = 15, name = "Buy ;; berry sprouts", qtys = { 1 } },
	{ type = 16, name = "Craft ;; cooking table.", qtys = { 1 } },
}

function DeserializeAchievementList(data)
	local list = {}
	for i=1, #data, 3 do
		chars = {}
		local str = data:sub(i, i + 3)
		for i=1,#str do
			table.insert(chars, str:sub(i,i):byte())
		end
		local id = (chars[1] >> 1)
		local percent = (chars[2] >> 1) / 50
		local step = (chars[3] >> 1)
		table.insert(list, { i = id, p = percent, step = step })
	end
	return list
end

Events.Connect("GetAchiR", function(rewardAvailable, data)
	propRewardButton.isInteractable = rewardAvailable == 1
	for _,child in pairs(propRewardButton:GetChildren()) do
		child.visibility = rewardAvailable == 1 and Visibility.FORCE_ON or Visibility.FORCE_OFF
	end
	local i = 1
	local childList = propNextAchivements:GetChildren()
	local list = DeserializeAchievementList(data)
	for _,v in pairs(list) do
		local obj = World.SpawnAsset("9CBD759C30CF94A9:AchievementUI", { parent=childList[i] })
		local achievement = achievements[v.i]
		obj:FindChildByName("ProgressBar").width = math.floor(v.p * 400)
		local name = achievement.name
		if v.step == 1 then
			name = name:sub(1, #name - 1)
		end
		local description = mysplit(name, ";;")[1]..tostring(achievement.qtys[v.step])..mysplit(name, ";;")[2]
		obj:FindDescendantByName("Name").text = description
		obj:FindDescendantByName("Reward1Amount").text = tostring(v.step * 10)..(player:GetResource("VIP") == 1 and "(x2)" or "")
		obj:FindDescendantByName("Reward2Amount").text = tostring(v.step * 5)..(player:GetResource("VIP") == 1 and "(x3)" or "")
		i = i + 1
	end
end)

function LoadUI()
	for _,child in pairs(propRewardButton:GetChildren()) do
		child.visibility = Visibility.FORCE_OFF
	end
	Events.BroadcastToServer("GetAchi")
end

function OnBindingPressed(player, bindingPressed)
    if bindingPressed == "ability_extra_23" then
        propUIPanel.visibility = propUIPanel.visibility == Visibility.FORCE_ON and Visibility.FORCE_OFF or Visibility.FORCE_ON
        UI.SetCursorVisible(propUIPanel.visibility == Visibility.FORCE_ON)
        UI.SetCanCursorInteractWithUI(propUIPanel.visibility == Visibility.FORCE_ON)
		if propUIPanel.visibility == Visibility.FORCE_ON then
			LoadUI()
		end
    end
	-- if bindingPressed == "ability_extra_50" then
	-- 	Events.BroadcastToServer("AchReset")
	-- end

	-- if bindingPressed == "ability_extra_51" then
	-- 	Events.BroadcastToServer("ActivateVIP", Game.GetLocalPlayer())
	-- end

	-- if bindingPressed == "ability_extra_52" then
	-- 	Events.BroadcastToServer("DeactivateVIP", Game.GetLocalPlayer())
	-- end
end

local propClose = script:GetCustomProperty("Close"):WaitForObject()
propClose.clickedEvent:Connect(function()
	propUIPanel.visibility = Visibility.FORCE_OFF
	UI.SetCursorVisible(false)
	UI.SetCanCursorInteractWithUI(false)
end)

propRewardButton.clickedEvent:Connect(function()
	Events.BroadcastToServer("Rew")
	propRewardButton.isInteractable = false
	for _,child in pairs(propRewardButton:GetChildren()) do
		child.visibility = Visibility.FORCE_OFF
	end
	propClickheretext.visibility = Visibility.FORCE_OFF
end)

local propUnlockVIP = script:GetCustomProperty("UnlockVIP"):WaitForObject()
propUnlockVIP.clickedEvent:Connect(function()
	propUIPanel.visibility = Visibility.FORCE_OFF
	UI.SetCursorVisible(false)
	UI.SetCanCursorInteractWithUI(false)
	Events.Broadcast("ToggleVIPUI", true)
end)

player.resourceChangedEvent:Connect(function(player, resourceId, amount)
	if resourceId ~= "VIP" then return end
	if amount == 1 then
		propNotVIP.visibility = Visibility.FORCE_OFF
		propVIP.visibility = Visibility.FORCE_ON
		propVIP:FindChildByType("UIText").text = "Member: VIP (golds x2, gems x3)"
	else
		propVIP.visibility = Visibility.FORCE_OFF
		propNotVIP.visibility = Visibility.FORCE_ON
	end
end)
if player:GetResource("VIP") == 1 then
	propNotVIP.visibility = Visibility.FORCE_OFF
	propVIP.visibility = Visibility.FORCE_ON
	propVIP:FindChildByType("UIText").text = "Member: VIP (golds x2, gems x3)"
else
	propVIP.visibility = Visibility.FORCE_OFF
	propNotVIP.visibility = Visibility.FORCE_ON
end


player.bindingPressedEvent:Connect(OnBindingPressed)