local txt = script.parent
local duration = script:GetCustomProperty("Duration") or 1

Task.Wait(duration)
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