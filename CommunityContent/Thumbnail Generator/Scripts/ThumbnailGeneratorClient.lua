--[[
	Thumbnail Generator - Client
	v1.0
	by: standardcombo
	
	See the README for usage instructions.
--]]

local API = require( script:GetCustomProperty("ThumbnailGeneratorAPI") )
API.RegisterGenerator(script.context)

local CAMERA = script:GetCustomProperty("Camera"):WaitForObject()
local ITEMS = script:GetCustomProperty("Items"):WaitForObject()
local RESOLUTION = CameraCaptureResolution.SMALL

local items = {}

script.visibility = Visibility.FORCE_OFF

function GetCapture(id)
	if items[id] then
		items[id].visibility = Visibility.INHERIT
		script.visibility = Visibility.FORCE_ON
		
		local capture = CAMERA:Capture(RESOLUTION)
		
		items[id].visibility = Visibility.FORCE_OFF
		script.visibility = Visibility.FORCE_OFF
		
		return capture
	end
	return nil
end

for _,item in ipairs(ITEMS:GetChildren()) do
	local id = item.name
	items[id] = item
	item.visibility = Visibility.FORCE_OFF
end

