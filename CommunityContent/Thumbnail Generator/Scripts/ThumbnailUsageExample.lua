--[[
	Thumbnail Generator - Usage Example
	v1.0
	by: standardcombo
	
	This script demonstrates how to bind thumbnails, by their name,
	to UI Images, using the SetupImage() function.
--]]

local IMAGE_1 = script:GetCustomProperty("Image1"):WaitForObject()
local IMAGE_2 = script:GetCustomProperty("Image2"):WaitForObject()
local IMAGE_3 = script:GetCustomProperty("Image3"):WaitForObject()
local IMAGE_4 = script:GetCustomProperty("Image4"):WaitForObject()

Task.Wait()

_G.ThumbnailGenerator.SetupImage(IMAGE_1, "Rifle")
_G.ThumbnailGenerator.SetupImage(IMAGE_2, "Sword")
_G.ThumbnailGenerator.SetupImage(IMAGE_3, "Shuriken")
_G.ThumbnailGenerator.SetupImage(IMAGE_4, "Truck")
