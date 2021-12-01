local START_RAY = 100
local END_RAY = 600
local RADIUS = 50
local DEBUG = false

function ActionOnProp(prop, player)
    if not prop or not prop:IsValid() then return false end
	while prop.parent and prop.parent:GetCustomProperty("HP") == nil do prop = prop.parent end
    if not prop or not prop.parent or not prop.parent:GetCustomProperty("HP") then return false end
    prop = prop.parent
	if prop.parent.name ~= "Rocks" and player and prop.parent.id ~= player.serverUserData.slot.staticFolderId then return false end
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
	if not Object.IsValid(obj) then return false end
    if obj:GetCustomProperty("Harvestable") then
    	local id = obj.id
		Events.Broadcast("H", { prop=id, p=player.id, h=true, t=2 })
		return true
	end
	if obj:GetCustomProperty("UIName") then
		Events.BroadcastToPlayer(player, "OpenUI"..obj:GetCustomProperty("UIName"), obj.id)
		return true
	end
	return false
end

Input.actionPressedEvent:Connect(function(p, action, value)
	if action == "Interact" then
		if not InteractWithObject(p, GetPlayerLookHit(p)) then
			InteractWithObject(p, GetPlayerDownHit(p))
		end
	end
end)