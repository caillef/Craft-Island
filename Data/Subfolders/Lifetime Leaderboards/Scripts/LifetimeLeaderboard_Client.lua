--[[
  Lifetime Leaderboard - Client code
  V1.0 - 7/17/2020
  by Chris
]]

local propRoot = script:GetCustomProperty("Root"):WaitForObject()
local propScreenFrame = script:GetCustomProperty("ScreenFrame"):WaitForObject()
local propLeaderboard_PlayerEntry = script:GetCustomProperty("Leaderboard_PlayerEntry")

local propResourceToTrack = propRoot:GetCustomProperty("ResourceToTrack")
local propAutoSaveAndLoad = propRoot:GetCustomProperty("AutoSaveAndLoad")
local propPlayerTextColor = propRoot:GetCustomProperty("PlayerTextColor")
local propLocalPlayerColor = propRoot:GetCustomProperty("LocalPlayerColor")

local playerEntries = {}

local localPlayer = Game.GetLocalPlayer()

function CreatePlayerEntry(player)
	local newPlayerEntry = World.SpawnAsset(propLeaderboard_PlayerEntry)
	playerEntries[player.id] = newPlayerEntry
	newPlayerEntry.x = 0
	newPlayerEntry.y = 0
	
	local propPlayerName = newPlayerEntry:GetCustomProperty("PlayerName"):WaitForObject()
	local propPlayerScore = newPlayerEntry:GetCustomProperty("PlayerScore"):WaitForObject()
	local propPlayerPortrait = newPlayerEntry:GetCustomProperty("PlayerPortrait"):WaitForObject()
	
	newPlayerEntry.parent = propScreenFrame
	propPlayerName.text = player.name
	propPlayerScore.text = tostring(player:GetResource(propResourceToTrack))
	propPlayerPortrait:SetImage(player)
	
	if player.id == localPlayer.id then
		propPlayerName:SetColor(propLocalPlayerColor)
		propPlayerScore:SetColor(propLocalPlayerColor)
	else
		propPlayerName:SetColor(propPlayerTextColor)
		propPlayerScore:SetColor(propPlayerTextColor)
	end
	
	return newPlayerEntry
end


function UpdatePlayerList()
	local players = Game.GetPlayers()
	local playerMap = {}
	for k,v in pairs(players) do
		playerMap[v.id] = true
	end
	
	-- Remove players who are gone:
	for k,v in pairs(playerEntries) do
		if playerMap[k] == nil then
			v:Destroy()
			playerEntries[k] = nil
		end
	end
	
	-- Add players that don't have entries yet
	for k,v in pairs(players) do 
		if playerEntries[v.id] == nil then
			CreatePlayerEntry(v)
		end
	end
	

	table.sort(players, function(a,b)
		return a:GetResource(propResourceToTrack) > b:GetResource(propResourceToTrack)
	end)
	
	-- Generate new lists
	local count = 0
	for k,v in pairs(players) do
		local entry = playerEntries[v.id]
		entry.y = count * 60
		count = count + 1
		local propPlayerScore = entry:GetCustomProperty("PlayerScore"):WaitForObject()
		propPlayerScore.text = tostring(v:GetResource(propResourceToTrack))
	end

end




function OnPlayerJoined(player)
	UpdatePlayerList()
end



function OnPlayerLeft(player)
	playerEntries[player.id]:Destroy()
	playerEntries[player.id] = nil
	UpdatePlayerList()
end



function Tick()
	UpdatePlayerList()
	Task.Wait(0.5)
end


Events.Connect("UpdateLeaderboard", UpdatePlayerList)

Game.playerJoinedEvent:Connect(OnPlayerJoined)
Game.playerLeftEvent:Connect(OnPlayerLeft)
localPlayer.resourceChangedEvent:Connect(UpdatePlayerList)

