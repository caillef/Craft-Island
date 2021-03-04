local npc = script.parent.parent
local propHead = script:GetCustomProperty("head")
local propPelvis = script:GetCustomProperty("pelvis")
npc:AttachCoreObject(World.SpawnAsset(propHead), "head")
npc:AttachCoreObject(World.SpawnAsset(propPelvis), "pelvis")
