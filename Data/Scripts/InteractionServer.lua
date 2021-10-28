local CASTDIST = 300
function GetPlayerLookHit(player, list)
    local playerLookVec = Quaternion.New(player:GetLookWorldRotation()):GetForwardVector() * CASTDIST
    local playerPos = player:GetWorldPosition()
    local playerUpOffset = Quaternion.New(player:GetWorldRotation()):GetUpVector() * 100
    playerPos = playerPos + playerUpOffset
    local hit = World.Raycast(playerPos, playerPos + playerLookVec, { ignorePlayers = true })
	if hit and hit.other then
		local obj = hit.other
		while obj and obj:GetCustomProperty("HP") == nil do
			obj = obj.parent
		end
		if obj then return obj end
	end
end

function InteractWithObject(player, obj)
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

function InteractWithObjectsAround(player)
    local rayStart = player:GetWorldPosition()
	local list = World.FindObjectById(player.serverUserData.slot.staticFolderId):GetChildren()

	local obj = GetPlayerLookHit(player, list)
	if obj then
		local dist = (player:GetWorldPosition() - (obj:GetWorldPosition())).sizeSquared
		if dist < 150000 and InteractWithObject(player, obj) then return end
	end

	local currentDist = 10000000
	local currentObj
	for _,obj in ipairs(list) do
		local dist = (player:GetWorldPosition() - (obj:GetWorldPosition())).sizeSquared
		if dist < 150000 and dist < currentDist then
			currentDist = dist
			currentObj = obj
		end
	end
	if not currentObj then return end
	InteractWithObject(player, currentObj)
end

Input.actionPressedEvent:Connect(function(p, action, value)
	if action == "Interact" then
		InteractWithObjectsAround(p)
	end
end)