local isDoorOpened -- bool
local propOpeningDoorAngle = script.parent.parent:GetCustomProperty("OpeningDoorAngle")
local propDoorSpeed = script.parent.parent:GetCustomProperty("DoorSpeed")
local door = script.parent.parent:FindDescendantByName("Door")
local doorSound = script.parent:FindChildByName("Door Sound")

function OpenDoor()
	print("In Trigger")
	door:RotateTo(Rotation.New(propOpeningDoorAngle),propDoorSpeed, true)
	doorSound:Play()
end

function CloseDoor()
	print("In Trigger")
	door:RotateTo(Rotation.New(0,0,0),propDoorSpeed, true)
	doorSound:Play()
end

script.parent.beginOverlapEvent:Connect(OpenDoor)
script.parent.endOverlapEvent:Connect(CloseDoor)
