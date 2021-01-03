local sounds = {}
sounds["StoneImpact"] = script:GetCustomProperty("StoneImpact"):WaitForObject()
sounds["WoodImpact"] = script:GetCustomProperty("WoodImpact"):WaitForObject()
sounds["BonusItem"] = script:GetCustomProperty("BonusItem"):WaitForObject()

function OnPlaySFX(name)
	if not sounds[name] then
		print("Warning: tried to play unknown SFX called '"..name.."'.")
		return
	end
	sounds[name]:Play()
end

Events.Connect("PlaySFX", OnPlaySFX)