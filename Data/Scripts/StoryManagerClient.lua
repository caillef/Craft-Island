-- 1 Message says to use the portal to meet the others and get your welcome gift (next = talk to the architect)
-- 2 Great, you have a sapling, go plant a tree on your island and come back (next = plant tree)
-- 3 Nice, go back to the architect (next = talk to architect)
-- 4 Give hoe and 3 wheat seeds to grow first wheats and craft first dough from your inventory (next = craft first dough)
-- 5 Use the furnace and get a bread (next = get first bread)
-- 6 Sell your bread + reward 20 walls, 20 floors, and 10 stairs (next = sell 10 breads)
-- 7 Give 3 breads and 5 logs to architect to get 1000 gold
-- 8 You are one your own, the carpenter is coming soon and new seeds!


local stepTexts = {
    "Step 1: Talk to the Architect on the main island by going through the portal",
    "Step 2: Plant a tree on your island (use the number 4 to pick the sapling)",
    "Step 3: Explain what you feel about planting a tree to the Architect",
    "Step 4: Plant the seeds on your island, then come back and mine at least 30 stones and 5 coals",
    "Step 5: Harvest wheats and craft a dough and a furnace from your inventory (left click)",
    "Step 6: Bake one bread by placing the dough and the coal in the furnace (right click), then sell it on the main island",
    "Step 7: Offer 5 breads and 3 wood logs to the Architect to receive a present",
    "Step 8: Place your first wall on your island",
    "Hint: buy more wheats seeds, craft more furnaces and build your own house with structures available on your inventory"
}

local propStep = script:GetCustomProperty("Step"):WaitForObject()
local propSFXNextStep = script:GetCustomProperty("SFXNextStep"):WaitForObject()

function OnStep(step, start)
    if not start then
        propSFXNextStep:Play()
    end
    if step >= 9 and start then
        propStep.parent.visibility = Visibility.FORCE_OFF
    end
    propStep.text = stepTexts[step]
end

Events.Connect("STEP", OnStep)

Events.BroadcastToServer("ReadyStep")