local propRockImpact = script:GetCustomProperty("RockImpact")
local propWoodImpact = script:GetCustomProperty("WoodImpact")
local propBonusItem = script:GetCustomProperty("BonusItem")

local SOUNDS = {}
SOUNDS.WoodImpactSFX = propWoodImpact
SOUNDS.StoneImpactSFX = propRockImpact
SOUNDS.BonusItemSFX = propBonusItem

_G["caillef.craftisland.sounds"] = SOUNDS
