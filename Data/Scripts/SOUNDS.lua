local propRockImpact = script:GetCustomProperty("RockImpact")
local propWoodImpact = script:GetCustomProperty("WoodImpact")
local propBonusItem = script:GetCustomProperty("BonusItem")

local SOUNDS = {}
SOUNDS.WoodImpactSFX = propWoodImpact
SOUNDS.StoneImpactSFX = propRockImpact
SOUNDS.BonusItemSFX = propBonusItem

function PlaySound(soundName, pos)
  if not SOUNDS[soundName] then print("Warning: tried to played unknown sound "..soundName..".") return end
	World.SpawnAsset(SOUNDS[soundName], { position = pos }):Play()	
end

_G["caillef.craftisland.sounds"] = {
	PlaySound=PlaySound
}
