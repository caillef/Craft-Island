local SHEEP = script.parent.parent
local DAMAGEABLE_OBJ = SHEEP.parent

DAMAGEABLE_OBJ.damagedEvent:Connect(function()
	SHEEP:PlayAnimation("unarmed_react_damage")
end)

DAMAGEABLE_OBJ.diedEvent:Connect(function()
	SHEEP:PlayAnimation("unarmed_death")
end)