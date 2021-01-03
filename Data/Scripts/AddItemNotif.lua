local txt = script.parent

Task.Wait(1)
local i = 0
function Tick()
	txt.y = txt.y - 1
	local c = txt:GetColor()
	c.a = 1 - i / 30
	txt:SetColor(c)
	i = i + 1
	if i > 30 then
		txt:Destroy()
	end
end