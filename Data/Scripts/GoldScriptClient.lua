local TextGoldAmount = script:GetCustomProperty("TextGoldAmount"):WaitForObject()
local SFXCoin = script:GetCustomProperty("SFXCoin"):WaitForObject()

local oldAmount = -1

function OnGoldAdd(totalAmount)
    TextGoldAmount.text = tostring(totalAmount).." gold"..(totalAmount > 0 and "s" or "")
    if oldAmount ~= -1 then
        SFXCoin:Play()
    end
    oldAmount = totalAmount
end

Events.Connect("CGoldAmount", OnGoldAdd)