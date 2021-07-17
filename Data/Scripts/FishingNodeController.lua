local componentRoot = script:GetCustomProperty("ComponentRoot"):WaitForObject()
local trigger = componentRoot:GetCustomProperty("Trigger"):WaitForObject()
local nodePositionMarker = componentRoot:GetCustomProperty("NodePositionMarker"):WaitForObject()
local nodePositionOffset = componentRoot:GetCustomProperty("NodePositionOffset")
local lootTable = require(componentRoot:GetCustomProperty("LootTable"))
local catchRate = componentRoot:GetCustomProperty("CatchRate")
local tickIntervalRange = componentRoot:GetCustomProperty("TickIntervalRange")
local requireTool = componentRoot:GetCustomProperty("RequiresTool")
local requiredTool = componentRoot:GetCustomProperty("RequiredTool")
local propCursor = script:GetCustomProperty("cursor"):WaitForObject()
local propGoal = script:GetCustomProperty("goal"):WaitForObject()
local propBar = script:GetCustomProperty("bar"):WaitForObject()
local minigameUi = script:GetCustomProperty("UIContainer"):WaitForObject()
local propSFXCatch = script:GetCustomProperty("SFXCatch"):WaitForObject()
local propSFXGet = script:GetCustomProperty("SFXGet"):WaitForObject()
local propSFXFail = script:GetCustomProperty("SFXFail"):WaitForObject()
local propHoldClick = script:GetCustomProperty("HoldClick"):WaitForObject()
local propTrigger = script:GetCustomProperty("Trigger"):WaitForObject()

local isFishing = false
local startTime
local initialStartTime
local tickInterval = 1.0
local maxFishingTime
local myFishingAbility = nil

local localPlayer = Game.GetLocalPlayer()

function BeginFishing(whichTrigger, player)
    if isFishing then
        StopFishing(player)
        return
    end

    if requireTool then
        if not CheckForFishingRod(player) then
            return
        end
    end

    isFishing = true

    startTime = time()
    initialStartTime = time()
    tickInterval = math.random(tickIntervalRange.x, tickIntervalRange.y)

    local nodePosition = nodePositionMarker:GetWorldPosition() + nodePositionOffset
    local nodeRotation = nodePositionMarker:GetWorldRotation()
    local fishingAbility = nil

    for _, ability in ipairs(player:GetAbilities()) do
        if ability.name == "Fishing Ability" then
            fishingAbility = ability
        end
    end

    fishingAbility:Activate()
    myFishingAbility = fishingAbility
    maxFishingTime = myFishingAbility.recoveryPhaseSettings.duration + myFishingAbility.castPhaseSettings.duration + myFishingAbility.executePhaseSettings.duration

    propTrigger.interactionLabel = "Fishing..."
    Events.BroadcastToServer("PlayerBeganFishing", nodePosition, nodeRotation)
end

function StopFishing(player)
    isFishing = false
    myFishingAbility:Interrupt()
    propTrigger.interactionLabel = "Fish"
    Events.BroadcastToServer("PlayerStoppedFishing")
end

local minigame = false
function GetFish()
	StartMiniGameFishing()
end

function CheckForFishingRod(player)
    local playerEquipment = player:GetEquipment()
    local hasFishingRod = false

    for _, equipment in ipairs(playerEquipment) do
        if equipment:GetCustomProperty("EquipmentType") == requiredTool then
            hasFishingRod = true
            catchRate = catchRate + equipment:GetCustomProperty("CatchRateBonus")
        end
    end

    return hasFishingRod
end

local force = 0
local isDown = false

function handleInput()
	if isDown and force < 10 then force = force + 0.7 end
	if not isDown and force > -10 then force = force - 0.35 end
	propCursor.y = propCursor.y - force
	if propCursor.y >= 0 then
		propCursor.y = 0
	end
	if propCursor.y <= -360 then
		propCursor.y = -360
	end
end

local goingUp = true
local goalTarget = -300
local ticksAt0 = 0
local MAX_TICK_BEFORE_END = 150

function moveGoal()
	propGoal.y = propGoal.y + (goingUp and -1 or 1)
	if goingUp and goalTarget > propGoal.y then
		goalTarget = -(math.random() * 100 + 100)
		goingUp = false
	end
	if not goingUp and goalTarget < propGoal.y then
		goalTarget = -(math.random() * 100 + 300 - propGoal.height)
		goingUp = true
	end
end

function StartMiniGameFishing()
	propHoldClick.visibility = Visibility.INHERIT
	propGoal.y = -50 - math.random() * 50
	propCursor.y = 0
	propBar.height = 0
	ticksAt0 = 0
	minigameUi.visibility = Visibility.FORCE_ON
	propSFXCatch:Play()
	Task.Wait(1)
	minigame = true
end

function handleBar()
	if not (propCursor.y >= propGoal.y + propGoal.height or propCursor.y + propCursor.height < propGoal.y) then
		if propBar.height <= 400 then
			propBar.height = propBar.height + 2
		end
	else
		if propBar.height > 0 then
			propBar.height = propBar.height - 3
		end
	end
	local c = Color.RED
	if propBar.height >= 100 then c = Color.ORANGE end
	if propBar.height >= 200 then c = Color.YELLOW end
	if propBar.height >= 300 then c = Color.GREEN end
	propBar:SetColor(c)
end

function StopMiniGameFishing(successful)
	minigame = false
	if not successful then
		propSFXFail:Play()
		print("You lost the fish.")
	else
		propSFXGet:Play()
		Events.BroadcastToServer("PlayerCaughtAFish")
		print("You got a fish!")
	end
	Task.Wait(1)
	minigameUi.visibility = Visibility.FORCE_OFF
end

function shakeUI()
	if propBar.height <= 0 then
		ticksAt0 = ticksAt0 + 1
		if ticksAt0 >= MAX_TICK_BEFORE_END / 3 then
			propHoldClick.visibility = Visibility.INHERIT
			minigameUi.x = 400 + (math.random() - 0.5) * 2
			minigameUi.y = -160 + (math.random() - 0.5) * 2
		end
		if ticksAt0 >= 2 * MAX_TICK_BEFORE_END / 3 then
			propHoldClick.visibility = Visibility.INHERIT
			minigameUi.x = 400 + (math.random() - 0.5) * 8
			minigameUi.y = -160 + (math.random() - 0.5) * 8
		end
		if ticksAt0 >= MAX_TICK_BEFORE_END then
			StopMiniGameFishing(false)
		end
	else
		propHoldClick.visibility = Visibility.FORCE_OFF
		ticksAt0 = 0
	end
end

function Tick()
	if minigame then
		moveGoal()		
		handleInput()
		handleBar()
		shakeUI()
		if propBar.height >= 400 then
			StopMiniGameFishing(true)
		end
	end

    if not isFishing then
        return
    end

    if time() >= initialStartTime + maxFishingTime then
        StopFishing()
        propTrigger.interactionLabel = "Fishing..."
    end

    if time() >= startTime + tickInterval then
        local catchValue = math.random()

        if catchValue <= catchRate then
            StopFishing()
            GetFish()
        else
            -- print("Fishing ...")
        end

        startTime = time()
        tickInterval = math.random(tickIntervalRange.x, tickIntervalRange.y)
    end
end

function OnBindingPressed(player, bindingPressed)
    if bindingPressed == "ability_primary" then
    	isDown = true
    end
end

function OnBindingReleased(player, bindingReleased)
    if bindingReleased == "ability_primary" then
    	isDown = false
    end
end

function OnPlayerJoined(player)
    player.bindingPressedEvent:Connect(OnBindingPressed)
    player.bindingReleasedEvent:Connect(OnBindingReleased)
end

Game.playerJoinedEvent:Connect(OnPlayerJoined)

trigger.interactedEvent:Connect(BeginFishing)