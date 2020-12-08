

-- Story steps
-- 1 Message says to use the portal to meet the others and get your welcome gift (next = talk to the architect)
-- 2 Great, you have a sapling, go plant a tree on your island and come back (next = plant tree)
-- 3 Nice, go back to the architect (next = talk to architect)
-- 4 Give hoe and 3 wheat seeds to grow first wheats and craft first dough from your inventory (next = craft first dough)
-- 5 Use the furnace and get a bread (next = get first bread)
-- 6 Sell your bread + reward 20 walls, 20 floors, and 10 stairs (next = sell 10 breads)
-- 7 Give 3 breads and 5 logs to architect to get 1000 gold
-- 8 You are one your own, the carpenter is coming soon and new seeds!

function OnPlayerJoined(player)
    local storage = Storage.GetPlayerData(player) or {}
    local story = storage.story or {}
    if story.step == nil then
        story.step = 1
    end
    storage.story = story
    Storage.SetPlayerData(player, storage)
    Task.Wait(1)
    Events.BroadcastToPlayer(player, "STEP", story.step)
end

function OnStepCompleted(player, step)
    local storage = Storage.GetPlayerData(player) or {}
    local story = storage.story or {}
    story.step = story.step + 1
    storage.story = story
    Storage.SetPlayerData(player, storage)
    Events.BroadcastToPlayer(player, "STEP", story.step)
end

Events.Connect("STEP_COMPLETED", OnStepCompleted)
Game.playerJoinedEvent:Connect(OnPlayerJoined)