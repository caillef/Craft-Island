--[[
	Thumbnail Generator - API
	v1.0.1
	by: standardcombo
	
	See the README for usage instructions.
	
	API:
	- SetupImage(UIImage image, string id)
	- Release(string id)
	
	COMPONENT USAGE:
	- GetCapture(string id)
	- RegisterGenerator(scriptcontext)
--]]

local API = {}
_G.ThumbnailGenerator = API

local allCaptures = {}
local bigCaptures = {}
local allGenerators = {}

function API.SetupImage(image, id, isBig)
	local capture = API.GetCapture(id, isBig)
	if capture and capture:IsValid() then
		image:SetCameraCapture(capture)
	else
		warn("Thumbnail Generator did not find '" .. id .. "'")
	end
end

function API.Release(id)
	local capture = allCaptures[id]
	if capture and capture:IsValid() then
		capture:Release()
	end
end

function API.GetCapture(id, isBig)
	local capture = isBig and bigCaptures[id] or allCaptures[id]
	if not (capture and capture:IsValid()) then
		for _,generator in ipairs(allGenerators) do
			capture = generator.GetCapture(id, isBig)
			if capture then
				if isBig then
					bigCaptures[id] = capture
				else
					allCaptures[id] = capture
				end
				break
			end
		end
	end
	return capture
end

function API.RegisterGenerator(generator)
	table.insert(allGenerators, generator)
end

return API

