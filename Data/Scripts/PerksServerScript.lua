local propPerksRelated = script:GetCustomProperty("PerksRelated")
local propVIPInfinity = script:GetCustomProperty("VIPInfinity")
local propVIPSeason3Months = script:GetCustomProperty("VIPSeason3Months")
local propVIPForTheDay24h = script:GetCustomProperty("VIPForTheDay24h")

function IsVIP(player)
    if not player:IsValid() then return false end
	local storage = Storage.GetSharedPlayerData(propPerksRelated, player) or {}
	return storage.vipuntil and (storage.vipuntil == -1 or os.time(os.date("!*t")) < storage.vipuntil)
end

Events.Connect("ActivateVIP", function(player, duration)
    if not player:IsValid() then return false end
	if duration == -1 and player:HasPerk(propVIPInfinity) then
		local storage = Storage.GetSharedPlayerData(propPerksRelated, player) or {}
		storage.vipuntil = -1
		Storage.SetSharedPlayerData(propPerksRelated, player, storage)
		player:SetResource("VIP", 1)
		print("Activated VIP forever for player "..player.name)
		Events.BroadcastToPlayer(player, "VIP", storage.vipuntil)
		Task.Wait(1)
		player:SetResource("VIPLeft", -1)			
		return
	end
    duration = duration or 1
	local storage = Storage.GetSharedPlayerData(propPerksRelated, player) or {}
	if not storage.vipuntil or (storage.vipuntil > 0 and storage.vipuntil < 1000000000) then
		storage.vipuntil = os.time(os.date("!*t"))
	end
	storage.vipuntil = storage.vipuntil + duration * 24 * 3600
	if player:GetResource("VIP") == 0 then
		player:SetResource("NewVIP", 1)
	end
	player:SetResource("VIP", 1)
	Storage.SetSharedPlayerData(propPerksRelated, player, storage)
	if storage.vipuntil < 0 then
		player:SetResource("VIPLeft", 0)			
	else
		player:SetResource("VIPLeft", math.floor((storage.vipuntil - os.time(os.date("!*t"))) / 3600 / 24))
	end
	print("Activated VIP for player "..player.name.." for "..duration.." days. (until "..storage.vipuntil..")")
	Events.BroadcastToPlayer(player, "VIP", storage.vipuntil)
	Task.Wait(1)
end)

Events.ConnectForPlayer("VIPGems", function(player, duration)
    if not player:IsValid() or player:HasPerk(propVIPInfinity) then return false end
	if player:GetResource("Gem") >= 500 then
		player:RemoveResource("Gem", 500)
		local storage = Storage.GetSharedPlayerData(propPerksRelated, player) or {}
		local duration = 1
		if not storage.vipuntil or (storage.vipuntil > 0 and storage.vipuntil < 1000000000) then
			storage.vipuntil = os.time(os.date("!*t"))
		end
		storage.vipuntil = storage.vipuntil + duration * 24 * 3600	
		Storage.SetSharedPlayerData(propPerksRelated, player, storage)
		if player:GetResource("VIP") == 0 then
			player:SetResource("NewVIP", 1)
		end
		player:SetResource("VIP", 1)
		if storage.vipuntil == -1 then
			player:SetResource("VIPLeft", -1)			
		else
			player:SetResource("VIPLeft", math.floor((storage.vipuntil - os.time(os.date("!*t"))) / 3600 / 24))
		end
		print("Activated VIP for player "..player.name.." for "..duration.." days. (until "..storage.vipuntil..")")
		Events.BroadcastToPlayer(player, "VIP", storage.vipuntil)
	end
end)

Events.Connect("DeactivateVIP", function(player)
	if player:HasPerk(propVIPInfinity) then return end
	local storage = Storage.GetSharedPlayerData(propPerksRelated, player) or {}
	storage.vipuntil = os.time(os.date("!*t")) - 1
	player:SetResource("VIP", 0)
	player:SetResource("VIPLeft", 0)
	print(player.name.." is no longer a VIP.")
	Storage.SetSharedPlayerData(propPerksRelated, player, storage)
end)

-- Events.ConnectForPlayer("IsVIP", function(player)
-- 	if not player or not player:IsValid() then return end
-- 	local storage = Storage.GetSharedPlayerData(propPerksRelated, player) or {}
-- 	Events.BroadcastToPlayer(player, "IsVIPR", os.time(os.date("!*t")), player.vipuntil)
-- end)

function OnPerkChanged(player, perkRef)
	if perkRef == propVIPInfinity and player:GetPerkCount(propVIPInfinity) > 0 then
		Events.Broadcast("ActivateVIP", player, -1)
	end
	if perkRef == propVIPSeason3Months and player:GetPerkCount(propVIPSeason3Months) > 0 then
		Events.Broadcast("ActivateVIP", player, 90)
	end
	if perkRef == propVIPForTheDay24h and player:GetPerkCount(propVIPForTheDay24h) > 0 then
		Events.Broadcast("ActivateVIP", player, 1)
	end
end

Game.playerJoinedEvent:Connect(function(player)
	player:SetResource("VIP", IsVIP(player) and 1 or 0)
	local storage = Storage.GetSharedPlayerData(propPerksRelated, player) or {}
	if storage.vipuntil and storage.vipuntil > 0 then
		player:SetResource("VIPLeft", math.floor((storage.vipuntil - os.time(os.date("!*t"))) / 3600 / 24))
	end
	if player:HasPerk(propVIPInfinity) then
		player:SetResource("VIP", 1)
		player:SetResource("VIPLeft", -1)
	end
	player.perkChangedEvent:Connect(OnPerkChanged)
end)

function RewardVIP()
	for _,p in pairs(Game.GetPlayers()) do
		if p:IsValid() and IsVIP(p) then
			Events.Broadcast("SGoldAddForPlayer", p, 100)
		end
	end
	Chat.BroadcastMessage("VIP members just received 100 free golds (next drop in 30 minutes)")
	Task.Wait(60 * 30)
	RewardVIP()
end
Task.Wait(30 * 60)
RewardVIP()

