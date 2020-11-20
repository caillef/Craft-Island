local propNewFolder = script:GetCustomProperty("NewFolder"):WaitForObject()
local propPhysicsSphere = script:GetCustomProperty("PhysicsSphere")

World.SpawnAsset(propPhysicsSphere, { position = script:GetWorldPosition(), parent = propNewFolder })