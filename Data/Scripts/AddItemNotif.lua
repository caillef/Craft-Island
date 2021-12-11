local txt = script.parent

Task.Wait(5)
local i = 0
function Tick()
	if txt:IsA("UIText") then
		txt.y = txt.y - 1
		local c = txt:GetColor()
		c.a = 1 - i / 30
		txt:SetColor(c)
	end
	i = i + 1
	if i > 30 then
		txt:Destroy()
	end
end