---- Author : Nightmane
---- Description : Create UI animation  easily and quickly

local EASE_EQUATIONS = require(script:GetCustomProperty("EaseEquations"))

local Animation = {}
Animation.__index = Animation
Animation.inProgress = false -- Is the animation in progress ? (the animation is still in progress when paused)
Animation.isPaused = false -- Is the animation is paused ?
Animation.element = nil -- the GUI element
Animation.currentTime = 0 -- The current time of the animation (in seconds)
Animation.lastTime = 0 -- The previous value of time() on previous frame
Animation.task = nil -- The task when running
Animation.next = nil -- The next animations
Animation.initialState = nil -- The initial state of the element
Animation.repeated = 0  -- How many time the animation must replay? -1 = infinte, 0 = one time, X = one time + X
Animation.currentLoop = 0 -- The current animation loop
Animation.syncList = nil -- Animations who are sync with our animation

-- Callback
Animation.onPlay = nil -- Callback when animation start to play (if the animation is "continuous", this event fired at each loop)
Animation.onPause = nil -- Callback when the animation is paused
Animation.onUnpause = nil -- Callback when the animation is unpaused
Animation.onStop = nil -- Callback when the animation is stoped manually
Animation.onFinish = nil -- Callback when the animation is finished (if the animation is "continuous", this event fired at each loop)

-- Table
Animation.current = nil -- The table of current animation
Animation.queue = nil -- The table of animation in the queue (the animations after a "wait")
Animation.all = nil -- All the animations


--[[ 
Create the data for the animation
	type     : the type of animation
	goal     : the goal value
	duration : the animation duration
	equation : The equation function, or a SimpleCurve Object (default linear equation)
--]]
local function createAnimationData(property, type, goal, duration, equation)
	if equation == nil then equation = EASE_EQUATIONS.LINEAR end
	
	local name = property
	if property == 'wait' then
		name = 'wait'
		property = nil
	end
	
	local start = nil
	if type == 'added' then
		start = 0
	end

	return {
		name = name,
		property = property,
		type = type,
		start = start,
		lastValue = 0, -- Use by the 'added' type
		goal = goal,
		duration = duration,
		delay = 0, -- delay before the animation is played
		equation = equation,
		queued = false,
		finished = false,
	}
end

--[[
Reset animation to the default state
--]]
local function ResetAnimation(animation)
	for _,animationData in pairs(animation.all) do
		animationData.queued = false
		animationData.finished = false
		animationData.lastValue = 0
	end
	
	animation.current = {}
	animation.queue = animation.all
	animation.currentTime = 0
	animation.isPaused = false
	animation.inProgress = false
	animation:GoToInitialState()
end

-- Similar to CoreMath.Lerp but "t" can be below 0 or above 1
local function CustomLerp(from, to, t)
	local diff = to - from
	if t < 0 then
		local diffT = t * diff
		return from + diffT
	elseif t > 1 then
		diffT = (t - 1) * diff
		return to + diffT
	else
		return CoreMath.Lerp(from, to, t)
	end
end

--[[
Return the interpolation between the start and the goal of an equation or SimpleCurve
	start : the start value
	goal : the end value
	percent : the progression, can be below 0 or above 1
	equation : The equation or Curve
--]]
local function GetCurrentValue(start, goal, percent, equation)
	local valuePercent = 0
	if type(equation) == 'function' then
		valuePercent = equation(percent)
	elseif equation:IsA('SimpleCurve') then
		local currentTime = CoreMath.Lerp(equation.minTime, equation.maxTime, percent)
		valuePercent = equation:GetValue(currentTime)
	end

	if type(goal) == 'number' then
		return CustomLerp(start, goal, valuePercent)
	elseif goal:IsA('Vector2') then
		return Vector2.New(
			CustomLerp(start.x, goal.x, valuePercent),
			CustomLerp(start.y, goal.y, valuePercent)
		)
	elseif goal:IsA('Color') then
		return Color.Lerp(start, goal, CoreMath.Clamp(valuePercent))
	end
end

-- Return the property of the animation element
function Animation:GetElementProperty(property)
	return self.element[property]
end

-- Set the property of the animation element
function Animation:SetElementProperty(property, value)
	self.element[property] = value
	return self
end


--[[
Add the queued animation to the current animation
Also define the "start value" of animations
Stop at the first "wait" animation
--]]
local function EnqueueAnimation(animation)
	local stopLoop = false
	for _,animationData in ipairs(animation.queue) do
		if not stopLoop then
			animationData.delay = animation.currentTime
			
			if animationData.type == 'fixed' then
				local property = animationData.property
				animationData.start = animation:GetElementProperty(property)
			end
			table.insert(animation.current, animationData)
			animationData.queued = true
			if animationData.name == 'wait' then 
				stopLoop = true 
			end
		end
	end
	
	-- Reorganize the array
	local newQueueArray = {}
	for _,value in ipairs(animation.queue) do
		if value.queued == false then
			table.insert(newQueueArray, value)
		end
	end
	animation.queue = newQueueArray
end

function Animation:CheckElement(element)
	return true
end

--[[
Create a new blank animation
	element : The UI element
--]]
function Animation:New(element)
	if not self:CheckElement(element) then
		warn('The element is not valid')
		return nil
	end
	local self = setmetatable({}, Animation)
	self.element = element
	self.all = {}
	self.queue = {}
	self.current = {}
	self.next = {}
	self.syncList = {}
	return self
end

--[[
Main animation function
executed at each frame if animation is running
--]]
function Animation:Tick()
	if not Object.IsValid(self.element) then
		self:Abort()
		return
	end
	if self.inProgress == false then self:Stop() end
	if self.isPaused then return end
	local deltaTime = time() - self.lastTime
	self.lastTime = time()
	self.currentTime = self.currentTime + deltaTime
	
	-- There is no animation to play, The animation is finished
	if #self.current == 0 then
		self:Finish()
		return
	end
	
	-- Manage Animation
	for _,animationData in ipairs(self.current) do
		if animationData.name ~= 'wait' then
			local percent = (self.currentTime - animationData.delay) / animationData.duration
			percent = CoreMath.Clamp(percent)
			self:ManageAnimationData(animationData, percent)
		end
	end
	
	-- Remove Finished Animation
	local currentTableChange = false
	for _,animationData in ipairs(self.current) do
		if self:IsAnimationDataFinish(animationData) then
			animationData.finished = true
			currentTableChange = true
			if animationData.name == 'wait' then
				-- When "wait" animation finished, we add add more animation to the current one
				EnqueueAnimation(self)
			end
		end
	end
	
	-- Reorganize the array
	if currentTableChange then
		local newCurrentArray = {}
		for _,value in ipairs(self.current) do
			if value.finished == false then
				table.insert(newCurrentArray, value)
			end
		end
		self.current = newCurrentArray
	end
end

--[[
Check is a AnimationData is finished (duration expired)
--]]
function Animation:IsAnimationDataFinish(animationData)
	if animationData.name == 'wait' then
		if animationData.duration == nil then
			-- A waiting animation without duration continue while there is more than 1 animation
			return #self.current == 1
		end
	end
	local percent = (self.currentTime - animationData.delay) / animationData.duration
	return percent >= 1
end

--[[
Initialize the infinite loop task
--]]
function Animation:InitTask()
	-- start the infinite loop
	self.lastTime = time()
	self.task = Task.Spawn(function() self:Tick() end)
	self.task.repeatCount = -1
	self.task.repeatInterval = 0
end

--[[
	Does the animation play the last loop ?
--]]
function Animation:IsLastLoop()
	if self.repeated == -1 then return false end
	return self.currentLoop >= self.repeated
end

--[[
Start or restart the animation
--]]
function Animation:Play(playSynchronized)

	-- Do we must play the synchronized animations?
	if playSynchronized == nil then
		playSynchronized = true
	end

	-- Stop the current task
	if self.task ~= nil then
		self.task:Cancel()
		self.task = nil
	end
	-- Stop next animatins
	self:StopNext()
	self.isPaused = false -- Remove the pause
	
	self.currentLoop = 0 -- Reset the loop number
	ResetAnimation(self)
	EnqueueAnimation(self)
	if self.onPlay ~= nil then
		self.onPlay(self)
	end
	self:InitTask()
	self.inProgress = true
	
	if playSynchronized then
		self:PlaySyncAnimations()
	end
	return self
end

--[[
Pause the animation
--]]
function Animation:Pause()
	if self.inProgress and self.isPaused == false then
		self.isPaused = true
		if self.task ~= nil then
			self.task:Cancel()
		end
		if self.onPause ~= nil then
			self.onPause(self)
		end
	end
	self:PauseNext()
	return self
end

--[[
Unpause the animation
--]]
function Animation:StopPause()
	if self.inProgress and self.isPaused == true then
		self.isPaused = false
		self:InitTask()
		if self.onUnpause ~= nil then
			self.onUnpause(self)
		end
	end
	self:StopPauseNext()
	return self
end

--[[
Stop the animation if is running
		isFinished : If the animation is finished
--]]
function Animation:Stop(isFinished)
	self.isPaused = false
	if self.inProgress == false then 
		if self.task ~= nil then
			self.task:Cancel()
			self.task = nil
		end
		
		-- Terminate all animationData
		for _,animationData in pairs(self.all) do
			self:FinishAnimation(animationData)
		end
		
		-- Stop the next animations
		self:StopNext()
		return self 
	end

	if isFinished == nil then isFinished = false end
	self.inProgress = false
	
	-- We set the end of position for each reamining animations
	for _,current in pairs(self.current) do
		self:FinishAnimation(current)
	end
	for _,queued in pairs(self.queue) do
		self:FinishAnimation(queued)
	end
	
	self.current = {}
	self.queue = {}
	if self.task ~= nil then
		self.task:Cancel()
		self.task = nil
	end
	
	if isFinished == false and self.onStop ~= nil then
		self.onStop(self)
	end
	
	if isFinished then
		self:PlayNext()
	else
		self:StopNext()
	end
	return self
end

-- Cancel the animation without no additionnal treatment
function Animation:Abort()
	self.inProgress = false
	if self.task ~= nil then
		self.task:Cancel()
		self.task = nil
	end
end

--[[
Finish the animation
--]]
function Animation:Finish()
	if not self:IsLastLoop() then
		ResetAnimation(self)
		EnqueueAnimation(self)
		self.inProgress = true
		self.currentLoop = self.currentLoop + 1
	else
		self:Stop(true)
	end
	
	if self.onFinish ~= nil then
		self.onFinish(self)
	end
end

--[[
Add one or more animations that will be played after the end of this one
	animations : Animation or table of animations
--]]
function Animation:FollowBy(animations)
	if type(animations) == 'table' and animations[1] == nil then
		animations = {animations}
	end

	for _,animation in ipairs(animations) do
		table.insert(self.next, animation)
	end

	return self
end

--[[
Synchronize one or more aniamtions with this one
Once animations are synchronized, if one animation are played, others are played too
--]]
function Animation:SyncWith(animations, cascade)
	if cascade == nil then cascade = true end
	if type(animations) == 'table' and animations[1] == nil then
		animations = {animations}
	end

	for _,animation in ipairs(animations) do
		table.insert(self.syncList, animation)
		-- We also add our animation into the sync list of the others animations
		if cascade then
			animation:SyncWith(self, false)
		end
	end

	return self
end

--[[
	Play the synchronized animations
	The synchronized animations dont activate their synchronized animation
	to avoind infinite loop
	(maybe do a fix on that later)
--]]
function Animation:PlaySyncAnimations()
	for _,animation in ipairs(self.syncList) do
		animation:Play(false)
	end
end

--[[
Play the next animations
--]]
function Animation:PlayNext()
	for _,animation in ipairs(self.next) do
		animation:Play()
	end
	
	return self
end

--[[
Stop the next animations
--]]
function Animation:StopNext()
	for _,animation in ipairs(self.next) do
		animation:Stop()
	end
	
	return self
end

--[[
Pause the next animations
--]]
function Animation:PauseNext()
	for _,animation in ipairs(self.next) do
		animation:Pause()
	end
	
	return self
end

--[[
Unpause the next animations
--]]
function Animation:StopPauseNext()
	for _,animation in ipairs(self.next) do
		animation:StopPause()
	end
	
	return self
end

function Animation:_GetProperties()
	return {}
end

--[[
Save the current data for the element (and for all the next animation)
The element will reset to this state after at the start of animation
--]]
function Animation:SetInitialState()
	self.initialState = {}
	-- Save all the important properties
	local properties = self:_GetProperties()

	for _,property in ipairs(properties) do
		local currentValue = self:GetElementProperty(property)
		if currentValue ~= nil then
			self.initialState[property] = currentValue
		end
	end
		
	-- Cascade to the next animations
	for _,animation in ipairs(self.next) do
		animation:SetInitialState()
	end
end

--[[
Set all the property of the element to the initial state (and for all the next animation)
--]]
function Animation:GoToInitialState()
	if self.initialState ~= nil then
		for propertyName,propertyValue in pairs(self.initialState) do
			self:SetElementProperty(propertyName, propertyValue)
		end
	end
	
	-- Cascade to the next animations
	for _,animation in ipairs(self.next) do
		animation:GoToInitialState()
	end
end

--[[
Set is the animation must loop indefinitely
--]]
function Animation:SetContinuous(isContinuous)
	if isContinuous == nil then isContinuous = true end
	if isContinuous then self.repeated = -1 else self.repeated = 0 end
	return self
end

--[[
How many time the animation must loop ?
--]]
function Animation:Repeat(repeatNumber)
	if repeatNumber == nil then repeatNumber = 1 end
	self.repeated = repeatNumber
	return self
end

--[[
Reset and remove all Animation Data
--]]
function Animation:Reset()
	self:Stop()
	self.all = {}
	self.syncList = {}
end

--[[
Change the property of the GUI element according to the current progress
	animationData : the animation data
	percent : the progress (must be between 0 and 1)
--]]
function Animation:ManageAnimationData(animationData, percent)
	if animationData.name == 'wait' then return end
	local currentPosition = nil
	
	-- Special case to the end of the animation to avoid bugs in some cases
	if percent >= 1 then
		currentPosition = animationData.goal
	else
		currentPosition = GetCurrentValue(animationData.start, animationData.goal, percent, animationData.equation)
	end
	
	if animationData.type == 'fixed' then
		self:SetElementProperty(animationData.property, currentPosition)
	elseif animationData.type == 'added' then
		local diffValue = currentPosition - animationData.lastValue
		local currentPropertyValue = self:GetElementProperty(animationData.property)

		self:SetElementProperty(animationData.property, currentPropertyValue + diffValue)

		animationData.lastValue = currentPosition
	end
end

--[[
End an animationData and set property element to the final state of animation
	animationData : The animation Data
--]]
function Animation:FinishAnimation(animationData)
	self:ManageAnimationData(animationData, 1)
end

-- Check the validity of the property
function Animation:CheckPropertyValidity(property)
	return true
end

function Animation:_AddAnimation(property, type, goal, duration, equation)
end

--[[
Add animation to the current animations list
	property : The property to modify
	type : the type of animation -- fixed (reach the goal) or added (add the goal to the start property)
	goal : the value to reach
	duration : animation duration
	equation : function or Simple Curve
--]]
function Animation:AddAnimation(property, type, goal, duration, equation)
	if duration == nil then duration = 1 end
	if type == nil then type = 'fixed' end
	if not self:CheckPropertyValidity(property) then return self end

	if property == 'progress' and type == 'fixed' then
		goal = CoreMath.Clamp(goal)
	end	
	
	local mustContinue = self:_AddAnimation(property, type, goal, duration, equation)
	if mustContinue == false then
		return self
	end
	
	table.insert(self.all, createAnimationData(property, type, goal, duration, equation))
	return self
end

--[[
Add waiting time to the animation, if the parameter "waitingTime" 
is not supplied, the animation wait until all animations is finished
	waitingTime : The waiting time
--]]
function Animation:Wait(waitingTime)
	table.insert(self.all, createAnimationData('wait', nil, nil, waitingTime))
	return self
end

local API = {}

API.eq = EASE_EQUATIONS

API.Animation = Animation

return API