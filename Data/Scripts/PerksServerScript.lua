local propPerksRelated = script:GetCustomProperty("PerksRelated")

function IsVIP(player)
    if not player:IsValid() then return false end
	local storage = Storage.GetSharedPlayerData(propPerksRelated, player) or {}
	return storage.vipuntil and os.time(os.date("!*t")) < storage.vipuntil
end

Events.Connect("ActivateVIP", function(player, duration)
    if not player:IsValid() then return false end
    duration = duration or 1
	local storage = Storage.GetSharedPlayerData(propPerksRelated, player) or {}
	storage.vipuntil = (storage.vipuntil or os.time(os.date("!*t"))) + duration * 24 * 3600
	Storage.SetSharedPlayerData(propPerksRelated, player, storage)
	player.serverUserData.isVIP = true
	print("Activated VIP for player "..player.name.." for "..duration.." days. (until "..storage.vipuntil..")")
	Events.BroadcastToPlayer(player, "VIP", storage.vipuntil)
end)

Events.Connect("DeactivateVIP", function(player)
	local storage = Storage.GetSharedPlayerData(propPerksRelated, player) or {}
	storage.vipuntil = os.time(os.date("!*t")) - 1
	player.serverUserData.isVIP = false
	print(player.name.." is no longer a VIP.")
	Storage.SetSharedPlayerData(propPerksRelated, player, storage)
end)

Events.ConnectForPlayer("IsVIP", function(player)
	local storage = Storage.GetSharedPlayerData(propPerksRelated, player) or {}
	Events.BroadcastToPlayer(player, "IsVIPR", os.time(os.date("!*t")), storage.vipuntil)
end)

Game.playerJoinedEvent:Connect(function(player)
	-- Temporary VIP status to everyone
	if not IsVIP(player) then
		Events.Broadcast("ActivateVIP", player, 3)
	end
	player.serverUserData.isVIP = IsVIP(player)
end)