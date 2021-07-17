local REWARD_AMOUNT = 200
local REWARD_NAME = "Daily"

function IsFirstJoinToday(player)
    local today = os.date("*t")
    local day = today.day
    local month = today.month

    local data = Storage.GetPlayerData(player)
    if day ~= data.lastJoinDay 
    or month ~= data.lastJoinMonth then
        data.lastJoinDay = day
        data.lastJoinMonth = month
        Storage.SetPlayerData(player, data)
        return true
    end
    return false
end

function OnPlayerJoined(player)
    if IsFirstJoinToday(player) then
        player:GrantRewardPoints(REWARD_AMOUNT, REWARD_NAME)
    end
end

Game.playerJoinedEvent:Connect(OnPlayerJoined)