local propRockImpact = script:GetCustomProperty("RockImpact")
local propWoodImpact = script:GetCustomProperty("WoodImpact")
local propBonusItem = script:GetCustomProperty("BonusItem")
local propBurningFurnace = script:GetCustomProperty("BurningFurnace")
local propGiftCodeSuccessSFX = script:GetCustomProperty("GiftCodeSuccessSFX")
local propGiftCodeErrorSFX = script:GetCustomProperty("GiftCodeErrorSFX")

local SOUNDS = {}
SOUNDS.WoodImpactSFX = propWoodImpact
SOUNDS.StoneImpactSFX = propRockImpact
SOUNDS.BonusItemSFX = propBonusItem
SOUNDS.BurningFurnace = propBurningFurnace
SOUNDS.GiftCodeSuccessSFX = propGiftCodeSuccessSFX
SOUNDS.GiftCodeErrorSFX = propGiftCodeErrorSFX

function PlaySound(soundName, pos)
  if not SOUNDS[soundName] then print("Warning: tried to played unknown sound "..soundName..".") return end
	World.SpawnAsset(SOUNDS[soundName], { position = pos })	
end

Events.ConnectForPlayer("PlaySFX", function(player, str)
	PlaySound(str, player:GetWorldPosition())
end)

_G["caillef.craftisland.sounds"] = {
	PlaySound=PlaySound
}