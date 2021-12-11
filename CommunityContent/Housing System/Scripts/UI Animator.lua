---- Author : Nightmane
---- Description : Create UI animation  easily and quickly

local ANIMATOR = require(script:GetCustomProperty("Animator"))

local Animation = {}
Animation.__index = Animation

-- Return the property of an UI Element
function Animation:GetElementProperty(property)

	-- Sepcial case for the "opacity" property on Image and Text (we use the alpha property of the color)
	if property == 'opacity' and (self.element:IsA('UIImage') or self.element:IsA('UIText')) then
		return self.element:GetColor().a
	end

	local functionName = nil
	if property == 'color' then
		functionName = 'GetColor'
	elseif property == 'outlineColor' then
		functionName = 'GetOutlineColor'
	elseif property == 'shadowOffset' then
		functionName = 'GetShadowOffset'
	elseif property == 'shadowColor' then
		functionName = 'GetShadowColor'
	end
	if functionName ~= nil then
		if self.element[functionName] == nil then return nil end
		return self.element[functionName](self.element)
	end
	return self.element[property]
end

-- Set the property of an UI Element
function Animation:SetElementProperty(property, value)

	-- Sepcial case for the "opacity" property on Image and Text
	if property == 'opacity' and (self.element:IsA('UIImage') or self.element:IsA('UIText')) then
		local currentColor = self.element:GetColor()
		currentColor.a = value
		self.element:SetColor(currentColor)
		
		local currentShadow = self.element:GetShadowColor()
		currentShadow.a = value
		self.element:SetShadowColor(currentShadow)
		
		if self.element:IsA('UIText') then
			local currentOutline = self.element:GetOutlineColor()
			currentOutline.a = value
			self.element:SetOutlineColor(currentOutline)
		end
		return
	end

	if property == 'color' then
		self.element:SetColor(value)
	elseif property == 'outlineColor' then
		self.element:SetOutlineColor(value)
	elseif property == 'shadowOffset' then
		self.element:SetShadowOffset(value)
	elseif property == 'shadowColor' then
		self.element:SetShadowColor(value)
	else
		if self:_NeedIntValue(property) then
			self.element[property] = CoreMath.Round(value)
		else
			self.element[property] = value
		end
	end
end

--[[
	Does the property value need to be an int ?
--]]
function Animation:_NeedIntValue(property)
	if property == 'width' or property == 'height' or property == 'outlineSize' or property == 'fontSize' then
		return true
	end
 	return false
end

function Animation:CheckElement(element)
	return type(element) == 'userdata' and element:IsA('UIControl') 
end

--[[
Create a new blank animation
	element : The UI element
--]]
function Animation:New(element)
	if not self:CheckElement(element) then
		warn('The element is not a valid UI element')
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

function Animation:_GetProperties()
	return {'x', 'y', 'width', 'height', 'opacity', 'fontSize', 'rotationAngle', 'progress', 'color', 'outlineSize'}
end

--[[
Return the last property value of an element according to the previous animations data
	property : the UI element property
--]]
function Animation:GetPreviousGoal(property)
	if #self.all > 0 then
		for i=#self.all, 1, -1 do
			if self.all[i].property == property then
				return self.all[i].goal
			end
		end
	end
	return self:GetElementProperty(property)
end

-- Check the validity of the property for the UI Element
function Animation:CheckPropertyValidity(property)
	if property ~= 'opacity' and self.element:IsA('UIContainer') then
		warn('You can only change the opacity for an UI Container. Element : ' .. self.element.name)
		return false
	end
	if property == 'progress' and not self.element:IsA('UIProgressBar') then
		warn('You can only change the progress with an UI Progress Bar. Element : ' .. self.element.name)
		return false
	end
	if 
		(
			property == 'fontSize'  or
			property == 'outlineSize' or
			property == 'outlineColor'
		)
		and not self.element:IsA('UIText') 
	then
		warn('You can only change the "' .. property .. '" property with an UI Text element. Element : ' .. self.element.name)
		return false
	end
	if (property == 'shadowOffset' or property == 'shadowColor') and self.element.GetShadowOffset == nil then
		warn('You can\'t change the shadow property of your element "' .. self.element.name .. '"')
		return false
	end
	return true
end

function Animation:MoveTo(goal, duration, equation)
	if type(goal) ~= 'userdata' or not goal:IsA('Vector2') then
		warn('Vector2 expected for the function "MoveTo". Element : ' .. self.element.name)
		return self
	end
	self:ChangeX(goal.x, duration, equation)
	self:ChangeY(goal.y, duration, equation)
	return self
end

function Animation:PositionOffset(added, duration, equation)
	if type(added) ~= 'userdata' or not added:IsA('Vector2') then
		warn('Vector2 expected for the function "PositionOffset". Element : ' .. self.element.name)
		return self
	end
	self:AddX(added.x, duration, equation)
	self:AddY(added.y, duration, equation)
	return self
end

function Animation:ChangeX(goal, duration, equation)
	self:AddAnimation('x', 'fixed', goal, duration, equation)
	return self
end

function Animation:ChangeY(goal, duration, equation)
	self:AddAnimation('y', 'fixed', goal, duration, equation)
	return self
end

function Animation:AddX(added, duration, equation)
	self:AddAnimation('x', 'added', added, duration, equation)
	return self
end

function Animation:AddY(added, duration, equation)
	self:AddAnimation('y', 'added', added, duration, equation)
	return self
end

function Animation:ChangeOpacity(goal, duration, equation)
	self:AddAnimation('opacity', 'fixed', goal, duration, equation)
	return self
end

function Animation:AddOpacity(added, duration, equation)
	self:AddAnimation('opacity', 'added', added, duration, equation)
	return self
end

function Animation:ChangeWidth(goal, duration, equation)
	self:AddAnimation('width', 'fixed', goal, duration, equation)
	return self
end

function Animation:AddWidth(added, duration, equation)
	self:AddAnimation('width', 'added', added, duration, equation)
	return self
end

function Animation:ChangeHeight(goal, duration, equation)
	self:AddAnimation('height', 'fixed', goal, duration, equation)
	return self
end

function Animation:AddHeight(added, duration, equation)
	self:AddAnimation('height', 'added', added, duration, equation)
	return self
end

function Animation:ChangeSize(goal, duration, equation)
	if type(goal) ~= 'userdata' or not goal:IsA('Vector2') then
		warn('Vector2 expected for the function "ChangeSize". Element : ' .. self.element.name)
		return self
	end
	self:ChangeWidth(goal.x, duration, equation)
	self:ChangeHeight(goal.y, duration, equation)
	return self
end

function Animation:AddSize(added, duration, equation)
	if type(added) ~= 'userdata' or not added:IsA('Vector2') then
		warn('Vector2 expected for the function "AddSize". Element : ' .. self.element.name)
		return self
	end
	self:AddWidth(added.x, duration, equation)
	self:AddHeight(added.y, duration, equation)
	return self
end

function Animation:ChangeRotation(goal, duration, equation)
	self:AddAnimation('rotationAngle', 'fixed', goal, duration, equation)
	return self
end

function Animation:AddRotation(added, duration, equation)
	self:AddAnimation('rotationAngle', 'added', added, duration, equation)
	return self
end

function Animation:ChangeColor(goal, duration, equation)
	if type(goal) ~= 'userdata' or not goal:IsA('Color') then
		warn('Color expected for the function "ChangeColor". Element : ' .. self.element.name)
		return self
	end
	self:AddAnimation('color', 'fixed', goal, duration, equation)
	return self
end

function Animation:ChangeProgress(goal, duration, equation)
	self:AddAnimation('progress', 'fixed', goal, duration, equation)
	return self
end

function Animation:AddProgress(added, duration, equation)
	self:AddAnimation('progress', 'added', added, duration, equation)
	return self
end

function Animation:ChangeFontSize(goal, duration, equation)
	self:AddAnimation('fontSize', 'fixed', goal, duration, equation)
	return self
end

function Animation:AddFontSize(added, duration, equation)
	self:AddAnimation('fontSize', 'added', added, duration, equation)
	return self
end

function Animation:ChangeOutlineSize(goal, duration, equation)
	self:AddAnimation('outlineSize', 'fixed', goal, duration, equation)
	return self
end

function Animation:ChangeOutlineColor(goal, duration, equation)
	if type(goal) ~= 'userdata' or not goal:IsA('Color') then
		warn('Color expected for the function "ChangeOutlineColor". Element : ' .. self.element.name)
		return self
	end
	self:AddAnimation('outlineColor', 'fixed', goal, duration, equation)
	return self
end

function Animation:ChangeShadowOffset(goal, duration, equation)
	if type(goal) == 'number' then
		goal = Vector2.ONE * goal
	end
	self:AddAnimation('shadowOffset', 'fixed', goal, duration, equation)
	return self
end

function Animation:ChangeShadowColor(goal, duration, equation)
	if type(goal) ~= 'userdata' or not goal:IsA('Color') then
		warn('Color expected for the function "ChangeShadowColor". Element : ' .. self.element.name)
		return self
	end
	self:AddAnimation('shadowColor', 'fixed', goal, duration, equation)
	return self
end

setmetatable(Animation, {__index = ANIMATOR.Animation})

local API = {}

API.createAnimation = function(element)
	return Animation:New(element)
end

API.CreateAnimation = function(element)
	return Animation:New(element)
end

API.MoveTo = function(element, goal, duration, equation)
	return API.createAnimation(element):MoveTo(goal, duration, equation):Play()
end

API.PositionOffset = function(element, added, duration, equation)
	return API.createAnimation(element):PositionOffset(added, duration, equation):Play()
end

API.ChangeX = function(element, goal, duration, equation)
	return API.createAnimation(element):ChangeX(goal, duration, equation):Play()
end

API.AddX = function(element, added, duration, equation)
	return API.createAnimation(element):AddX(added, duration, equation):Play()
end

API.ChangeY = function(element, goal, duration, equation)
	return API.createAnimation(element):ChangeY(goal, duration, equation):Play()
end

API.AddY = function(element, added, duration, equation)
	return API.createAnimation(element):AddY(added, duration, equation):Play()
end

API.ChangeWidth = function(element, goal, duration, equation)
	return API.createAnimation(element):ChangeWidth(goal, duration, equation):Play()
end

API.AddWidth = function(element, added, duration, equation)
	return API.createAnimation(element):AddWidth(added, duration, equation):Play()
end

API.ChangeHeight = function(element, goal, duration, equation)
	return API.createAnimation(element):ChangeHeight(goal, duration, equation):Play()
end

API.AddHeight = function(element, added, duration, equation)
	return API.createAnimation(element):AddHeight(added, duration, equation):Play()
end

API.ChangeSize = function(element, goal, duration, equation)
	return API.createAnimation(element):ChangeSize(goal, duration, equation):Play()
end

API.AddSize = function(element, added, duration, equation)
	return API.createAnimation(element):AddSize(added, duration, equation):Play()
end

API.ChangeFontSize = function(element, goal, duration, equation)
	return API.createAnimation(element):ChangeFontSize(goal, duration, equation):Play()
end

API.AddFontSize = function(element, added, duration, equation)
	return API.createAnimation(element):AddFontSize(added, duration, equation):Play()
end

API.ChangeOpacity = function(element, goal, duration, equation)
	return API.createAnimation(element):ChangeOpacity(goal, duration, equation):Play()
end

API.AddOpacity = function(element, added, duration, equation)
	return API.createAnimation(element):AddOpacity(added, duration, equation):Play()
end

API.ChangeColor = function(element, goal, duration, equation)
	return API.createAnimation(element):ChangeColor(goal, duration, equation):Play()
end

API.ChangeRotation = function(element, goal, duration, equation)
	return API.createAnimation(element):ChangeRotation(goal, duration, equation):Play()
end

API.AddRotation = function(element, added, duration, equation)
	return API.createAnimation(element):AddRotation(added, duration, equation):Play()
end

API.ChangeProgress = function(element, goal, duration, equation)
	return API.createAnimation(element):ChangeProgress(goal, duration, equation):Play()
end

API.AddProgress = function(element, added, duration, equation)
	return API.createAnimation(element):AddProgress(added, duration, equation):Play()
end

API.ChangeOutlineSize = function(element, goal, duration, equation)
	return API.createAnimation(element):ChangeOutlineSize(goal, duration, equation):Play()
end

API.ChangeOutlineColor = function(element, goal, duration, equation)
	return API.createAnimation(element):ChangeOutlineColor(goal, duration, equation):Play()
end

API.ChangeShadowOffset = function(element, goal, duration, equation)
	return API.createAnimation(element):ChangeShadowOffset(goal, duration, equation):Play()
end

API.ChangeShadowColor = function(element, goal, duration, equation)
	return API.createAnimation(element):ChangeShadowColor(goal, duration, equation):Play()
end

API.eq = ANIMATOR.eq

return API