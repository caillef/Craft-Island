local propGift = script:GetCustomProperty("GiftUI"):WaitForObject()
local propInputButton = script:GetCustomProperty("InputButton"):WaitForObject()
local propCode = script:GetCustomProperty("Code"):WaitForObject()
local debugConsole = script:GetCustomProperty("DebugConsoleClient"):WaitForObject().context
local propSquareTemplate = script:GetCustomProperty("SquareTemplate"):WaitForObject()
local propResult = script:GetCustomProperty("Result"):WaitForObject()

local code = {}

function OnBindingPressed(player, bindingPressed)
	if debugConsole.IsCommandLineOpen() then
		return
	end
    if bindingPressed == "ability_extra_38" then
        propGift.visibility = propGift.visibility == Visibility.FORCE_ON and Visibility.FORCE_OFF or Visibility.FORCE_ON
        if propGift.visibility == Visibility.FORCE_ON then
            UI.SetCursorVisible(true)
            UI.SetCanCursorInteractWithUI(true)
        else
            UI.SetCursorVisible(false)
            UI.SetCanCursorInteractWithUI(false)
        end
    end
end

function clearUI()
    for _,image in pairs(propCode:GetChildren()) do
        image:SetColor(Color.WHITE)
        image:SetImage(propSquareTemplate:GetImage())
    end
end

for k,b in pairs(propInputButton:GetChildren()) do
    b.clickedEvent:Connect(function(button)
        if #code < 4 then
            --propCode:GetChildren()[k]:SetImage(button:GetImage())
            propCode:GetChildren()[#code + 1]:SetColor(button:GetButtonColor())
            table.insert(code, k)
        end
        if #code == 4 then
            while Events.BroadcastToServer("GiftCode", code) ~= BroadcastEventResultCode.SUCCESS do
                Task.Wait(1)
            end
            code = {}
            clearUI()
        end
    end)
end

Game.GetLocalPlayer().bindingPressedEvent:Connect(OnBindingPressed)

Events.Connect("GiftCodeResp", function(success, data)
    if data and data.msg then
        propResult.text = data.msg
    elseif success then
        propResult.text = "Gift code valid."
    else
        propResult.text = "Gift code not valid."
    end

    if success then
        Task.Wait(1)
        propGift.visibility = Visibility.FORCE_OFF
        UI.SetCursorVisible(false)
        UI.SetCanCursorInteractWithUI(false)
    end
end)