local TextGoldAmount = script:GetCustomProperty("TextGoldAmount"):WaitForObject()
local SFXCoin = script:GetCustomProperty("SFXCoin"):WaitForObject()

local player = Game.GetLocalPlayer()
local oldAmount = -1

function OnResourceChanged(player, resourceId, totalAmount, nosound)
    if resourceId ~= "Gold" then
        return
    end
    TextGoldAmount.text = tostring(totalAmount).." gold"..(totalAmount > 0 and "s" or "")
    if oldAmount ~= -1 and nosound == nil then
        SFXCoin:Play()
    end
    oldAmount = totalAmount
end

OnResourceChanged(player, "Gold", player:GetResource("Gold"), true)
player.resourceChangedEvent:Connect(OnResourceChanged)