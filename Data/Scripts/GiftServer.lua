local RED = 1
local BLUE = 2
local YELLOW = 3
local GREEN = 4

local CODES = {
    {
        code={ RED, RED, YELLOW, BLUE }, -- The 4 colors of the code
        storageKey="C_DIS_3B_SPRTS", -- The storage key to be able to use the code only once (you must activate player storage)
        fct=function(player) -- The function that is going to be called if the code is entered
            Events.Broadcast("inventoryAddEvent", player, { idName="BERRY_SPROUT", qty = 3 })
            return "You just received 3 berry sprouts!"
        end
    },
    {
        code={ BLUE, GREEN, GREEN, YELLOW }, -- The 4 colors of the code
        storageKey="VIP24HOURS", -- The storage key to be able to use the code only once (you must activate player storage)
        fct=function(player) -- The function that is going to be called if the code is entered
            Events.Broadcast("ActivateVIP", player, 1)
            return "You are now a VIP member for 24 hours!"
        end
    }
}

local _SOUNDS
function GetSoundManager()
    _SOUNDS = _G["caillef.craftisland.sounds"]
    while _SOUNDS == nil do
        Task.Wait(0.1)
        _SOUNDS = _G["caillef.craftisland.sounds"]
    end
    return _SOUNDS
end

function codeIsValid(c1, c2)
    for i=1,4 do
        if c1[i] ~= c2[i] then
            return false
        end
    end
    return true
end

Events.ConnectForPlayer("GiftCode", function(player, input)
    if #input ~= 4 then
        print("Warning: received a code with less than 4 inputs")
        GetSoundManager().PlaySound("GiftCodeErrorSFX", player:GetWorldPosition())
        Events.BroadcastToPlayer(player, "GiftCodeResp", false)
        return
    end
    local storage = Storage.GetPlayerData(player)
    for _,code in pairs(CODES) do
        if codeIsValid(code.code, input) then
            if storage[code.storageKey] then
                GetSoundManager().PlaySound("GiftCodeErrorSFX", player:GetWorldPosition())
                return Events.BroadcastToPlayer(player, "GiftCodeResp", false, {msg="Giftcode already used."})
            end
            local msg = code.fct(player)
            Events.BroadcastToPlayer(player, "GiftCodeResp", true, { msg=msg })
            storage[code.storageKey] = true
            Storage.SetPlayerData(player, storage)
            GetSoundManager().PlaySound("GiftCodeSuccessSFX", player:GetWorldPosition())
            return
        end
    end
    GetSoundManager().PlaySound("GiftCodeErrorSFX", player:GetWorldPosition())
    Events.BroadcastToPlayer(player, "GiftCodeResp", false)
end)