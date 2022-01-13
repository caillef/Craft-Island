--[[
	Thumbnail Generator - Client
	v1.0
	by: standardcombo
	
	See the README for usage instructions.
--]]

local APIO = require(script:GetCustomProperty("APIObjects"))
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

local PLACEHOLDERS = {
	wall=ITEMS:FindChildByName("ObjectPlaceholder_Wall"),
	small_wall=ITEMS:FindChildByName("ObjectPlaceholder_SmallWall"),
	mediumObject=ITEMS:FindChildByName("ObjectPlaceholder_MediumObject"),
	bigObject=ITEMS:FindChildByName("ObjectPlaceholder_BigObject"),
	tool=ITEMS:FindChildByName("ObjectPlaceholder_Tool"),
	floor=ITEMS:FindChildByName("ObjectPlaceholder_Floor"),
	roof=ITEMS:FindChildByName("ObjectPlaceholder_Roof"),
	bigTool=ITEMS:FindChildByName("ObjectPlaceholder_BigTool"),
	item=ITEMS:FindChildByName("ObjectPlaceholder_Item")
}

for _,structure in pairs(APIO.OBJECTS) do
	local placeholder = PLACEHOLDERS[structure.metadata.item and "item"] or PLACEHOLDERS[structure.metadata.thumbnailType] or PLACEHOLDERS[structure.metadata.structureType] or PLACEHOLDERS["wall"]
	if placeholder and structure.templateMuid then
		local template = structure.metadata and structure.metadata.item or structure.templateMuid
		local obj = World.SpawnAsset(template, { parent=placeholder })
		if structure.metadata and structure.metadata.nlo then
			World.SpawnAsset(structure.metadata.nlo, { parent=obj })
		end
		local objectsTypeNotPreviewed = {"PointLight", "AreaLight", "SpotLight"}
		for _,typeName in ipairs(objectsTypeNotPreviewed) do
			for _,child in ipairs(obj:FindDescendantsByType(typeName)) do
				child:Destroy()
			end
		end
		items[structure.idName] = obj
		obj.visibility = Visibility.FORCE_OFF
	end
end
