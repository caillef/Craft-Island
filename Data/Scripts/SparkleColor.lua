local img = script.parent

local start = math.random()
local baseColor = img:GetColor()
function Tick()
	baseColor.a = math.cos(time() * 3 + start) + 0.7
	img:SetColor(baseColor)
end