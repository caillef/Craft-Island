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
    "Step 2: Plant a tree on your island (use the number 3 to pick the sapling)",
    "Step 3: Talk about this first tree with the Architect",
    "Step 4: Plant seeds, harvest wheats, craft a dough from your inventory",
    "Step 5: Bake one bread by placing the dough in the furnace",
    "Step 6: Sell your first bread on the main island",
    "Step 7: Offer 5 breads and 3 wood logs to the Architect to receive a present",
    "Step 8: Place your first wall on your island",
    "Step 9: Thanks for trying this early alpha! More features coming soon"
}

local propStep = script:GetCustomProperty("Step"):WaitForObject()
local propSFXNextStep = script:GetCustomProperty("SFXNextStep"):WaitForObject()

function OnStep(step)
    propSFXNextStep:Play()
    propStep.text = stepTexts[step]
end

Events.Connect("STEP", OnStep)