local propWorldImage = script:GetCustomProperty("WorldImage"):WaitForObject()

local dir = SPD
local fps = 0
function Tick()
	propWorldImage.y = 0 + math.sin(fps / 30) * 60
	fps = fps + 1
end

Task.Spawn(function()
	Task.Wait(2)
	Events.Broadcast("LoadingEnded")
	script:Destroy()
end)