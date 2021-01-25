local player = Game.GetLocalPlayer()

function Tick()
    if player:GetWorldPosition().z < -400 then
        while Events.BroadcastToServer("TP", "own_island") ~= BroadcastEventResultCode.SUCCESS do
            Task.Wait(1)
        end
        Task.Wait(3)
    end
end