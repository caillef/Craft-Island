local propMinus = script:GetCustomProperty("Minus"):WaitForObject()
local propPlus = script:GetCustomProperty("Plus"):WaitForObject()
local propMax = script:GetCustomProperty("Max"):WaitForObject()
local propQty = script:GetCustomProperty("Qty"):WaitForObject()
maxQuantity = 1

propMinus.clickedEvent:Connect(function()
	local qty = tonumber(propQty.text)
	if qty <= 1 then
		propQty.text = "1"
		return
	end
	propQty.text = tostring(qty - 1)
end)

propPlus.clickedEvent:Connect(function()
	if propQty.text == tostring(maxQuantity) then
		return
	end
	local qty = tonumber(propQty.text)
	if qty >= 9999 then
		propQty.text = "9999"
		return
	end
	propQty.text = tostring(qty + 1)
end)

propMax.clickedEvent:Connect(function()
	propQty.text = tostring(maxQuantity)
end)

