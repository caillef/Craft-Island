local TextGoldAmount = script:GetCustomProperty("TextGoldAmount"):WaitForObject()
local TextGemAmount = script:GetCustomProperty("TextGemAmount"):WaitForObject()
local SFXCoin = script:GetCustomProperty("SFXCoin"):WaitForObject()

local player = Game.GetLocalPlayer()
local oldGoldAmount = -1
local oldGemAmount = -1

function OnResourceChanged(player, resourceId, totalAmount, nosound)
    if resourceId == "Gold" then
	    TextGoldAmount.text = tostring(totalAmount)
	    if oldGoldAmount ~= -1 and nosound == nil then
	        SFXCoin:Play()
	    end
	    oldGoldAmount = totalAmount
        return
    end

    if resourceId == "Gem" then
	    TextGemAmount.text = tostring(totalAmount)
	    if oldGemAmount ~= -1 and nosound == nil then
	        --SFXCoin:Play()
	    end
	    oldGemAmount = totalAmount
        return
    end
end

player.resourceChangedEvent:Connect(OnResourceChanged)

OnResourceChanged(player, "Gold", player:GetResource("Gold"), true)
OnResourceChanged(player, "Gem", player:GetResource("Gem"), true)
