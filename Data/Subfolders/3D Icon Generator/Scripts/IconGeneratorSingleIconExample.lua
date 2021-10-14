--[[
Copyright 2021 Manticore Games, Inc. 

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
documentation files (the "Software"), to deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit
persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the
Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
--]]

--[[
    This script is a simple example showing how to render an object to a UIImage.
--]]

local COMPONENT_ROOT = script:GetCustomProperty("ComponentRoot"):WaitForObject()
local ICON_MANAGER = require(script:GetCustomProperty("APIIconManager")) -- Asset Reference pointing to APIIconManager
local ICON_TEMPLATE = script:GetCustomProperty("IconTemplate") -- Asset Reference pointing to the object template
local IMAGE = script:GetCustomProperty("Image"):WaitForObject() -- Core Object Reference to a UIImage

local CAMERA_ID = COMPONENT_ROOT:GetCustomProperty("CameraId") -- String set to the Camera Id on the Icon Generator you want to use

-- Give the Icon Generator a frame to register
Task.Wait()

ICON_MANAGER.SetIcon(IMAGE, CAMERA_ID, ICON_TEMPLATE, CameraCaptureResolution.MEDIUM)

-- Check how much space this is using
ICON_MANAGER.GetStatus(true)