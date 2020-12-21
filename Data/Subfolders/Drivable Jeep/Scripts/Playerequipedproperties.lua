
local EQUIPMENT = script:FindAncestorByType("Equipment")

function Tick()
    local myplayer = EQUIPMENT.owner
    if myplayer and myplayer.isGrounded then
        local pos = myplayer:GetWorldPosition()
    
        local hit = World.Raycast(pos,pos - Vector3.New(0,0,10000000000),{ ignorePlayers = true})
        if hit then
            local normal = hit:GetImpactNormal()
            local playerForward = myplayer:GetViewWorldRotation() * Vector3.FORWARD
            local carForward = normal ^ (playerForward ^ normal)
            local rotationfinal = Rotation.New(carForward, normal)
            myplayer:SetWorldRotation(rotationfinal)
        end
    end
end
function OnEquipped(_, player)
 player:SetVisibility(false, false)
 player.maxWalkSpeed = 10000
 player.maxAcceleration = 750
 player.canMount = false

end

function OnUnequipped(_, player)
end

-- Registering equipment events
EQUIPMENT.equippedEvent:Connect(OnEquipped)
EQUIPMENT.unequippedEvent:Connect(OnUnequipped)