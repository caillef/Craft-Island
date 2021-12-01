local START_RAY = 100
local END_RAY = 600
local RADIUS = 50
local DEBUG = false

local PANEL = script:GetCustomProperty("UIPanel"):WaitForObject()
local TEXT_BOX = script:GetCustomProperty("UITextBox"):WaitForObject()

local LOCAL_PLAYER = Game.GetLocalPlayer()

function ActionOnProp(prop, player)
    if not prop or not prop:IsValid() then return false end
    while prop.parent and prop.parent:GetCustomProperty("HP") == nil do prop = prop.parent end
    if not prop or not prop.parent or not prop.parent:GetCustomProperty("HP") then return false end
    prop = prop.parent
	return prop
end

function GetPlayerLookHit(player)
    local rayStart = player:GetViewWorldPosition()
    local lookVector = player:GetViewWorldRotation() * Vector3.FORWARD
    local results = World.SpherecastAll(rayStart + (lookVector * START_RAY), rayStart + (lookVector * END_RAY), RADIUS, {ignorePlayers=player, shouldDebugRender = DEBUG})
    for _, hitResult in ipairs(results) do
		local obj = ActionOnProp(hitResult.other, player)
		if obj then
			return obj
		end
    end
end

function GetPlayerDownHit(player)
    local rayStart = player:GetWorldPosition()
    local lookVector = -Vector3.UP
    local results = World.SpherecastAll(rayStart, rayStart + (lookVector * END_RAY), RADIUS, {ignorePlayers=player, shouldDebugRender = DEBUG})
    for _, hitResult in ipairs(results) do
		local obj = ActionOnProp(hitResult.other, player)
		if obj then
			return obj
		end
    end
end

function InteractWithObject(player, obj)
	if not Object.IsValid(obj) then 
		PANEL.visibility = Visibility.FORCE_OFF
		return false
	end
	if obj:GetCustomProperty("UIName") then
		TEXT_BOX.text = "Open"
		PANEL.visibility = Visibility.INHERIT
		return true
	end
    if obj:GetCustomProperty("Harvestable") then
    	TEXT_BOX.text = "Harvest"
		PANEL.visibility = Visibility.INHERIT
		return true
	end
	return false
end 

function Tick()
    if _G["caillef.craftisland.inventoryopen"] or _G["caillef.craftisland.craftopen"] or _G["caillef.craftisland.buysellopen"] then
		PANEL.visibility = Visibility.FORCE_OFF
		return
	end
	if not InteractWithObject(LOCAL_PLAYER, GetPlayerLookHit(LOCAL_PLAYER)) then
		InteractWithObject(LOCAL_PLAYER, GetPlayerDownHit(LOCAL_PLAYER))
	end
end