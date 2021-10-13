local root = script.parent.parent
local itemName = root:GetCustomProperty("ItemName")

function OnBeginOverlap(_, player)
	if not player:IsA("Player") then return end
	Events.BroadcastToServer("inventoryAddEvent", player, { idName=itemName, qty = 1 })
	root:Destroy()
end

script.parent.beginOverlapEvent:Connect(OnBeginOverlap)
