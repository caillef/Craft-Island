-- This example will teleport any players to his team leader if the leader is connected.
Game.playerJoinedEvent:Connect(function(player)
	-- If the player is not in a party, stop this function
	if not player.isInParty then return end

	local players = Game.GetPlayers()
	-- Go through each player
	for _,p in ipairs(players) do
		-- If the other player is the leader
		if p ~= player and p:IsInPartyWith(player) and p.isPartyLeader then
			-- Teleport the player to the leader
			player:SetWorldPosition(p)
			return
		end
	end
end)