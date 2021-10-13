local SHEEP = script.parent

local STATE_IDLE = 0
local STATE_MOVING = 1

local currentState = STATE_IDLE

local finishStateAt

function SetState(newState)
	print(newState)
	if newState == STATE_IDLE then
		SHEEP:StopMove()
		finishStateAt = time() + 5
	end
	if newState == STATE_MOVING then
		local rot = Rotation.New(0, 0, math.random() * 360)
		SHEEP:RotateTo(rot, 1)
		finishStateAt = time() + 3
	end
	currentState = newState
end 

function Tick()
	if finishStateAt and time() > finishStateAt then
		SetState(currentState == STATE_IDLE and STATE_MOVING or STATE_IDLE)
	end
	if currentState == STATE_MOVING then
		SHEEP:MoveContinuous(SHEEP:GetTransform():GetForwardVector() * 100)
	end
end

SetState(STATE_IDLE)