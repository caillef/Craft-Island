local dupe = script:GetCustomProperty("Dupe"):WaitForObject()
function Tick(dt)
	if (script.parent.text ~= dupe.text) then
		script.parent.text = dupe.text
	end 
end 