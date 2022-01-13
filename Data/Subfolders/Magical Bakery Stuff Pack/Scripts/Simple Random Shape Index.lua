local decal = script.parent

local MIN_INDEX = script:GetCustomProperty("MinIndex")
local MAX_INDEX = script:GetCustomProperty("MaxIndex")

decal:SetSmartProperty("Shape Index", math.random(MIN_INDEX, MAX_INDEX))
