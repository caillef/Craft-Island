-- Only one of this script should exist in your map.
local fishingAbility = script:GetCustomProperty("FishingAbility")

function BeginFishing(player, position, rotation)
    player.serverUserData.jumpCount = player.maxJumpCount
    player.maxJumpCount = 0
    player.animationStance = "unarmed_carry_object_low"
    player:SetWorldPosition(position)
    player:SetWorldRotation(rotation)
end

function StopFishing(player)
    player.maxJumpCount = player.serverUserData.jumpCount
    player.animationStance = "unarmed_stance"
end

function GiveFishToPlayer(player)
	Events.Broadcast("inventoryAddEvent", player, { idName="FISH", qty = 1 })
end

Events.ConnectForPlayer("PlayerBeganFishing", BeginFishing)
Events.ConnectForPlayer("PlayerStoppedFishing", StopFishing)
Events.ConnectForPlayer("PlayerCaughtAFish", GiveFishToPlayer)
