local propAchievementsSharedKey = script:GetCustomProperty("AchievementsSharedKey")

local _SOUNDS
function GetSoundManager()
    _SOUNDS = _G["caillef.craftisland.sounds"]
    while _SOUNDS == nil do
        Task.Wait(0.1)
        _SOUNDS = _G["caillef.craftisland.sounds"]
    end
    return _SOUNDS
end

local order = { 12, 1, 10, 16, 4, 11, 5, 6, 13, 14, 3, 15 }

local achievements = {
	{ type = 1, name = "Harvest ;; wheats", qtys = { 1, 10, 25, 50, 100, 200, 500, 1000 } },
	{ type = 2, name = "Harvest ;; berries", qtys = { 1, 10, 25, 50, 100, 200, 500, 1000 } },
	{ type = 3, name = "Harvest ;; carrots", qtys = { 1, 10, 25, 50, 100, 200, 500, 1000 } },
	{ type = 4, name = "Mine on the mining island ;; stones", qtys = { 1, 25, 50, 100, 200, 500, 1000 } },
	{ type = 5, name = "Mine on the mining island ;; coals", qtys = { 1, 25, 50, 100, 200, 500, 1000 } },
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
	{ type = 17, name = "Cook ;; fish.", qtys = { 1, 10, 25, 50, 100, 200, 500, 1000 } },
	{ type = 18, name = "Buy ;; pumpkin seeds", qtys = { 1 } },
}
local NB_ACHIEVEMENTS = #achievements

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

function SetAchievementStatus(storage, key, step, status)
	if not storage.ach then
		for i=1,NB_ACHIEVEMENTS do
			storage.ach = (storage.ach or "").."0000000000"
		end
	end
	key = key - 1
	storage.ach = storage.ach:sub(1, key * 10 + step - 1)..status..storage.ach:sub(key * 10 + step + 1)
end

Events.Connect("TrackAction", function(data)
	if data.t == -1 then return end
	local storage = Storage.GetSharedPlayerData(propAchievementsSharedKey, data.p) or { track = {} }
	storage.track = storage.track or {}
	storage.track[data.t] = storage.track[data.t] or { qty = 0, t = 1 }
	storage.track[data.t].qty = storage.track[data.t].qty + data.qty

	local achievement = achievements[data.t]
	local current_achievement = storage.track[data.t]
	local target_qty = achievement.qtys[current_achievement.t]
	while current_achievement.t <= #achievement.qtys and current_achievement.qty >= target_qty do
		local name = achievement.name
		if current_achievement.t == 1 then
			name = name:sub(1, #name - 1)
		end
		local name = mysplit(name, ";;")[1]..tostring(target_qty)..mysplit(name, ";;")[2]
		Events.BroadcastToPlayer(data.p, "AchGet", name)
		data.p:GrantRewardPoints(current_achievement.t * 100, "Achievement")
		SetAchievementStatus(storage, data.t, current_achievement.t, "1")
		current_achievement.t = current_achievement.t + 1
	end
	local rewardGoldVIP = 0
	local rewardGemVIP = 0
	for i=1,#storage.ach do
		local state = storage.ach:sub(i,i)
		if storage.ach:sub(i,i) == "1" or storage.ach:sub(i,i) == "2" then
			rewardGoldVIP = rewardGoldVIP + ((i - 1) % 10 + 1) * 10
			rewardGemVIP = rewardGemVIP + ((i - 1) % 10 + 1) * 10
		end
	end
	data.p:SetResource("RewardGoldVIP", rewardGoldVIP)
	data.p:SetResource("RewardGemVIP", rewardGemVIP)
	Storage.SetSharedPlayerData(propAchievementsSharedKey, data.p, storage)
end)

function utf8_from(t)
    local bytearr = {}
    for _, v in ipairs(t) do
        local utf8byte = v < 0 and (0xff + v + 1) or v
        table.insert(bytearr, string.char(utf8byte))
    end
    return table.concat(bytearr)
end

function SerializeAchievement(id, percent, step)
    local A = (id << 1) + 1
    local B = (math.floor(percent * 50) << 1) + 1
    local C = (step << 1) + 1
    return utf8_from({A, B, C})
end

Events.ConnectForPlayer("GetAchi", function(player)
	local list = {}
	local storage = Storage.GetSharedPlayerData(propAchievementsSharedKey, player) or { track = {} }
	storage.track = storage.track or {}
	if not storage.ach then
		for i=1,NB_ACHIEVEMENTS do
			storage.ach = (storage.ach or "").."0000000000"
		end
		Storage.SetSharedPlayerData(propAchievementsSharedKey, player, storage)
	end

	-- Add lever one of achievement by specific order
	for _,v in pairs(order) do
		if (not storage.track or not storage.track[v]) and #list <= 12 then
			table.insert(list, SerializeAchievement(v, 0, 1))
		end
	end

	-- Add closest achievements
	local threshold = 0.9
	while #list <= 12 and threshold > 0 do
		for id,v in pairs(storage.track) do 
			local a = achievements[id]
			if v.t <= #a.qtys then
				local qty = v.qty
				local target = a.qtys[v.t]
				local percent = v.qty / target
				if percent > threshold then
					table.insert(list, SerializeAchievement(id, percent, v.t))
					storage.track[id] = nil
				end
			end
		end
		threshold = threshold - 0.1
	end

	-- Compute msg
	local msg = ""
	for _,data in pairs(list) do
		msg = msg..data
	end

	local storage = Storage.GetSharedPlayerData(propAchievementsSharedKey, player) or { track = {} }
	local rewardAvailable = 0
	for i=1,#storage.ach do
		if storage.ach:sub(i,i) == "1" or (storage.ach:sub(i,i) == "2" and player:GetResource("VIP") == 1) then
			rewardAvailable = 1
		end
	end
	Events.BroadcastToPlayer(player, "GetAchiR", rewardAvailable, msg)
end)

function GetStepFromAchIndex(i) return ((i - 1) % 10 + 1) end

Events.ConnectForPlayer("Rew", function(player)
	local storage = Storage.GetSharedPlayerData(propAchievementsSharedKey, player) or { track = {} }
	storage.track = storage.track or {}
	if not storage.ach then return end
	local goldAmount = 0
	local gemAmount = 0
	for i=1,#storage.ach do
		local state = storage.ach:sub(i,i)
		local step = GetStepFromAchIndex(i)
		if state == "1" then
			goldAmount = goldAmount + step * 10 * (player:GetResource("VIP") == 1 and 2 or 1)
			gemAmount = gemAmount + step * 5 * (player:GetResource("VIP") == 1 and 3 or 1)
			SetAchievementStatus(storage, math.floor(i / 10) + 1, step, player:GetResource("VIP") == 1 and "3" or "2")
		elseif state == "2" and player:GetResource("VIP") == 1 then
			goldAmount = goldAmount + step * 10
			gemAmount = gemAmount + step * 5 * 2
			SetAchievementStatus(storage, math.floor(i / 10) + 1, step, "3")
		end
	end
	Storage.SetSharedPlayerData(propAchievementsSharedKey, player, storage)
	if goldAmount == 0 then return end
	Events.Broadcast("SGoldAddForPlayer", player, goldAmount)
	Events.Broadcast("SGemAddForPlayer", player, gemAmount)
	GetSoundManager().PlaySound("RewardSFX", player:GetWorldPosition())
end)

Events.ConnectForPlayer("VIPRew", function(player)
	local storage = Storage.GetSharedPlayerData(propAchievementsSharedKey, player) or { track = {} }
	if not storage.ach then return end
	local goldAmount = 0
	local gemAmount = 0
	for i=1,#storage.ach do
		local state = storage.ach:sub(i,i)
		if state == "2" then
			goldAmount = goldAmount + ((i - 1) % 10 + 1) * 10
			gemAmount = gemAmount + ((i - 1) % 10 + 1) * 5 * 2
		end
	end
	Events.BroadcastToPlayer(player, "VIPRewR", goldAmount, gemAmount)
end)

--TODO: remove
Events.ConnectForPlayer("AchReset", function(player) 
	Storage.SetSharedPlayerData(propAchievementsSharedKey, player, { track = {}})
	print("reset")
end)