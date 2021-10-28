local HIT_BOX = script:GetCustomProperty("HitBox"):WaitForObject()

local isPlayerSitting = false
local curSittingPlayer = nil
local defAnimStance = nil

function ResetPlayer(player)
    player.animationStance = defAnimStance
    player.movementControlMode = MovementControlMode.VIEW_RELATIVE
    isPlayerSitting = false
    curSittingPlayer = nil
end

function OnInteract(trigger,player) 
    if isPlayerSitting then
        if player == curSittingPlayer then
            ResetPlayer(player)
        end
        return
    end
    player:SetWorldTransform(script:GetWorldTransform())
    defAnimStance = player.animationStance
    player.animationStance = "unarmed_sit_chair_upright"
    player.movementControlMode = MovementControlMode.NONE
    curSittingPlayer = player
    isPlayerSitting = true
end

function OnEndOverlap(trigger,other)
    if isPlayerSitting and other == curSittingPlayer then
        ResetPlayer(other)
    end
end
HIT_BOX.interactedEvent:Connect(OnInteract)
HIT_BOX.endOverlapEvent:Connect(OnEndOverlap)

Game.playerLeftEvent:Connect(function(player)
	if curSittingPlayer == nil or player ~= curSittingPlayer then
		return
	end 
	isPlayerSitting = false
    curSittingPlayer = nil
end)

function Tick()
	if curSittingPlayer ~= nil then
		if curSittingPlayer.isJumping then
			ResetPlayer(curSittingPlayer)
		end
	end
end
