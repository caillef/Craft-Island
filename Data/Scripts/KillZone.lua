local player = Game.GetLocalPlayer()

function Tick()
    if player:GetWorldPosition().z < -500 then
        while Events.BroadcastToServer("TP", "own_island") ~= BroadcastEventResultCode.SUCCESS do
            Task.Wait(0.1)
        end
    end
end