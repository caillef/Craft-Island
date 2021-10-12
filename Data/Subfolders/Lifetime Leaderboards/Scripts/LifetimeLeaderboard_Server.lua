--[[
  Lifetime Leaderboard - Server code
  V1.0 - 7/17/2020
  by Chris
]]

local propRoot = script:GetCustomProperty("Root"):WaitForObject()
local propResourceToTrack = propRoot:GetCustomProperty("ResourceToTrack")
local propAutoSaveAndLoad = propRoot:GetCustomProperty("AutoSaveAndLoad")

local LEADERBOARD_SAVEGAME_KEY = "ltLeaderboard_resource " .. propResourceToTrack


function OnPlayerJoined(player)
	if propAutoSaveAndLoad then
		local playerData = Storage.GetPlayerData(player)
		local rsc = playerData[LEADERBOARD_SAVEGAME_KEY]
		if rsc == nil then rsc = 0 end
		player:SetResource(propResourceToTrack, rsc)
	end
	player.resourceChangedEvent:Connect(function(player, rsc)
		Events.BroadcastToAllPlayers("UpdateLeaderboard")
	end)
end


function OnPlayerLeft(player)
	if propAutoSaveAndLoad then
		local playerData = Storage.GetPlayerData(player)
		playerData[LEADERBOARD_SAVEGAME_KEY] = player:GetResource(propResourceToTrack)
		Storage.SetPlayerData(player, playerData)
	end
end


Game.playerJoinedEvent:Connect(OnPlayerJoined)
Game.playerLeftEvent:Connect(OnPlayerLeft)
