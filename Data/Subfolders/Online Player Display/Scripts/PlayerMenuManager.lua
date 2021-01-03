--The parent object for the player list
local propPlayerList = script:GetCustomProperty("PlayerList"):WaitForObject()

--The parent object for the player displays
local propPlayerDisplaysOnline = script:GetCustomProperty("PlayerDisplays"):WaitForObject()

--The player info panel
local propPlayerInfo = script:GetCustomProperty("PlayerInfo"):WaitForObject()

--The picture and name objects in the player info panel
local infoPicture = propPlayerInfo:GetCustomProperty("Picture"):GetObject()
local infoName = propPlayerInfo:GetCustomProperty("Name"):GetObject()

local infoInviteButton = propPlayerInfo:GetCustomProperty("Invite"):GetObject()
local infoJoinButton = propPlayerInfo:GetCustomProperty("Join"):GetObject()

--The key binding for opening and closing the player list
local propKeyBinding = script:GetCustomProperty("KeyBinding")

--The open and closed Y position of the player list
local OPEN_X = -20
local CLOSED_X = -19

--The open and closed X position of the player info panel
local INFO_OPEN_X = -230
local INFO_CLOSE_X = 0

--The amount of time to spend opening/closing the info panel
local INFO_OPEN_TIME = 1

--The local player
local localPlayer = Game.GetLocalPlayer()

--The amount of time to spend expanding and collapsing the player list
local TOGGLE_TIME = 0.5

--Is the player list currently being expanded or collapsed
local isMoving = false

--The target destination to use if the list is moving
local targetDestination = CLOSED_X

--The amount of time remaining in this expand/collapse movement
local timeRemaining = 1

--The displays, used as an enum
--Use this table if you want to allow for other tabs on the player list
local DISPLAYS = {ONLINE = 2}

--The display sections currently not already populated with a player
local availableDisplays = propPlayerDisplaysOnline:GetChildren()

--Display sections currently populated by a player
local displaysInUse = {}

--Is the info panel open or not
local playerInfoShowing = false

---------------------------------------------------------
-- Run once a frame
-- @param deltaTime The time elapsed since the last frame
---------------------------------------------------------
function Tick(deltaTime)

	--If we are in the process of opening or closing the player list
	if isMoving then
	
		--Determining how much time is left in the movement
		timeRemaining = CoreMath.Clamp(timeRemaining - deltaTime, 0, TOGGLE_TIME)
		
		local newPosition = 0
		
		--Do a lerp based on whether or not we are opening or closing the list
		if targetDestination == OPEN_X then
			newPosition = CoreMath.Lerp(CLOSED_X, OPEN_X, (TOGGLE_TIME - timeRemaining) / TOGGLE_TIME)
		else
			newPosition = CoreMath.Lerp(OPEN_X, CLOSED_X, (TOGGLE_TIME - timeRemaining) / TOGGLE_TIME)
		end
		
		--Update the position
		propPlayerList.x = newPosition
		
		--If we are out of time, stop moving
		if timeRemaining <= 0 then
			isMoving = false
		end
	end
end

-------------------------------------
-- Open the player list
-------------------------------------
local function Expand()

	--If the player list is not currently visible, don't bother
	if not propPlayerList:IsVisibleInHierarchy() then
		return
	end
	
	--Leaving the commented out part here as an example of how to stop it from messing with the cursor if you have other gameplay features that do that
	local updateCursor = true --not _G.inCombat
	
	-- --If we want to update the cursor, then do that
	-- if updateCursor then
	-- 	UI.SetCursorVisible(true)
	-- 	UI.SetCanCursorInteractWithUI(true)
	-- end
	
	--If we are already moving, just switch the targetDestination and update the time remaining
	if isMoving and timeRemaining > 0 then
		targetDestination = OPEN_X
		timeRemaining = TOGGLE_TIME - timeRemaining
	else
	--Otherwise, start the movement
		isMoving = true
		targetDestination = OPEN_X
		timeRemaining = TOGGLE_TIME
	end
end

-------------------------------------
-- Close the player info panel
-------------------------------------
local function ClosePlayerInfo()

	--If the player info panel wasn't open in the first place, we don't need to close it
	if not playerInfoShowing then
		return
	end

	playerInfoShowing = false
	
	local timeRemaining = INFO_OPEN_TIME
	propPlayerInfo.visibility = Visibility.FORCE_OFF
	
	--Loop until the panel is completely closed
	while timeRemaining > 0 do
		--Do a lerp
		propPlayerInfo.x = CoreMath.Lerp(INFO_OPEN_X, INFO_CLOSE_X, (INFO_OPEN_TIME - timeRemaining) / INFO_OPEN_TIME)
		
		--Edit these values to change the speed of the closing
		timeRemaining = timeRemaining - 0.05
		Task.Wait(0.01)
	end
	
	--Manually set the panel to its closed position, to account for any margin of error in the calculations
	propPlayerInfo.x = INFO_CLOSE_X
end

-------------------------------------
-- Collapse the player list
-------------------------------------
local function Collapse()

	--If the list isn't visible in the first place, then we don't need to close it
	if not propPlayerList:IsVisibleInHierarchy() then
		return
	end
	
	--Leaving the commented out part here as an example of how to stop it from messing with the cursor if you have other gameplay features that do that
	local updateCursor = true --not _G.inCombat
	
	-- --If we want to update the cursor, then do that
	-- if updateCursor then
	-- 	UI.SetCursorVisible(false)
	-- 	UI.SetCanCursorInteractWithUI(false)
	-- end
	
	--If we are already moving, just switch the destination target and update the time remaining
	if isMoving and timeRemaining > 0 then
		targetDestination = CLOSED_X
		timeRemaining = TOGGLE_TIME - timeRemaining
	else
	--Otherwise, start the movement
		isMoving = true
		targetDestination = CLOSED_X
		timeRemaining = TOGGLE_TIME
	end

	--Since we are closing the player list, we should close the player info panel as well
	ClosePlayerInfo()
end

-------------------------------------
-- Switch the display of the player list. Use this function if you want to have multiple tabs in the panel
-- @param button        The button that triggered this function
-- @param whichDisplay  Which display to switch to
-------------------------------------
local function SwitchDisplay(button, whichDisplay)

	--We want to see the online tab, make the button non-interactable, then show the panel
	if whichDisplay == DISPLAYS.ONLINE then
		propOnline.isInteractable = false
		propPlayerDisplaysOnline.visibility = Visibility.INHERIT
	end
	
end

function InvitePlayer(button)
	print(Game.GetLocalPlayer(), "invites", infoName.text)
	Events.BroadcastToServer("AuthTP", infoName.text)
end

function JoinIsland(button)
	print(Game.GetLocalPlayer(), "joins", infoName.text)
	Events.BroadcastToServer("ReqTP", infoName.text)
end

-------------------------------------
-- Open the info panel for the specified player
-- @param button  The button that triggered this function
-- @param player  The player to show info for
-------------------------------------
function DisplayPlayerPanel(button, player)

	--If the player no longer exists, return
	if player == nil or not Object.IsValid(player) then
		return
	end

	--If the info panel is not already open, we need to open it
	--This is done via an event instead of function call so it can run in tandem with the rest of the function
	if not playerInfoShowing then
		Events.Broadcast("Open")
	end
	
	--Set the player image and name on the panel
	infoPicture:SetImage(player)
	infoName.text = player.name
end

-------------------------------------
-- Open the player info panel
-------------------------------------
local function OpenPlayerInfo()

	--If the info panel is already open, don't bother
	if playerInfoShowing then
		return
	end

	playerInfoShowing = true
	propPlayerInfo.visibility = Visibility.FORCE_ON
	local timeRemaining = INFO_OPEN_TIME
	
	--Loop until the panel is fully open
	while timeRemaining > 0 do
		--Do a lerp
		propPlayerInfo.x = CoreMath.Lerp(INFO_CLOSE_X, INFO_OPEN_X, (INFO_OPEN_TIME - timeRemaining) / INFO_OPEN_TIME)
		
		--Edit these values to change the speed of the opening
		timeRemaining = timeRemaining - 0.05
		Task.Wait(0.01)
	end
	
	--Update the position manually here to account for any margin of error in the calculations
	propPlayerInfo.x = INFO_OPEN_X
end


local function getGoldAsString(amount)
	if amount < 1000 then
		return tostring(amount)
	end
	if amount < 1000000 then
		return math.floor(amount/1000).."."..math.floor((amount % 1000) / 10).."K"
	end
	if amount < 1000000000 then
		return math.floor(amount/1000000).."."..math.floor((amount % 1000000) / 10000).."M"
	end
	if amount < 1000000000000 then
		return math.floor(amount/1000000000).."."..math.floor((amount % 1000000000) / 10000000).."B"
	end
	return (tostring(0))
end

-------------------------------------
-- Function called when a player joins the game
-- This is also called once for any player already in the game on startup
-- @param player     The player that joined
-------------------------------------
local function OnPlayerJoined(player)

	--Grab an open display and set the player
	displaysInUse[player] = availableDisplays[1]
	displaysInUse[player].visibility = Visibility.INHERIT
		
	--If the player is the local player, then append "(You)" onto the end of the name	
	if player == localPlayer then
		displaysInUse[player]:FindChildByName("Name").text = player.name
	else
		displaysInUse[player]:FindChildByName("Name").text = player.name
	end
	displaysInUse[player]:FindChildByName("Gold").text = getGoldAsString(player:GetResource("Gold"))
	player.resourceChangedEvent:Connect(function(player, resourceId, totalAmount)
		if resourceId == "Gold" then
			displaysInUse[player]:FindChildByName("Gold").text = getGoldAsString(player:GetResource("Gold"))
		end
	end)

	--Hook up the clicked event for the button
	displaysInUse[player]:FindChildByName("Player Button").clickedEvent:Connect(DisplayPlayerPanel, player)
		
	--Update the list of available displays
	local temp = {}
	
	for i = 1, #availableDisplays do
		if availableDisplays[i] ~= displaysInUse[player] then
			temp[#temp + 1] = availableDisplays[i]
		end
	end
		
	availableDisplays = temp
end

-------------------------------------
-- Function called when a player leaves the game
-- @param player   The player that left
-------------------------------------
local function OnPlayerLeft(player)

	--If the player is somehow the local player, we don't care, so just return
	if player == localPlayer then
		return
	end
	
	--Hide the display for this player
	local temp = {}
	temp[1] = displaysInUse[player]
	temp[1].visibility = Visibility.FORCE_OFF
	
	
	--Put the display in question back into the list of available displays
	for i = 1, #availableDisplays do
		temp[#temp + 1] = availableDisplays[i]
	end
	
	availableDisplays = temp
	displaysInUse[player] = nil
end

-------------------------------------
-- Hide the entire player list
-------------------------------------
local function Hide()
	propPlayerList.visibility = Visibility.FORCE_OFF
end

-------------------------------------
-- Show the entire player list
-------------------------------------
local function Show()
	propPlayerList.visibility = Visibility.INHERIT
end

-------------------------------------
-- Called when a key is pressed by a player
-- @param player         The player that pressed the key
-- @param binding        The string representing the key that was pressed
-------------------------------------
local function OnBindingPressed(player, binding)

	--If the key binding for the player list was pressed
	if binding == propKeyBinding then
		
		--Either expand or collapse the list
		if targetDestination == OPEN_X then
			Collapse()
		else
			Expand()
		end
	end
end


-------------------------------------
-- Do initialization
-------------------------------------
local function Init()

	--Connect some events
	Game.playerJoinedEvent:Connect(OnPlayerJoined)
	Game.playerLeftEvent:Connect(OnPlayerLeft)
	Events.Connect("Open", OpenPlayerInfo)
	Events.Connect("HidePlayers", Hide)
	Events.Connect("ShowPlayers", Show)
	localPlayer.bindingPressedEvent:Connect(OnBindingPressed)
	infoInviteButton.clickedEvent:Connect(InvitePlayer)
	infoJoinButton.clickedEvent:Connect(JoinIsland)
	Collapse()
end

Init()