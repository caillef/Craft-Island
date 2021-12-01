local PLAYER = Game.GetLocalPlayer()
local BOXES = script:GetCustomProperty("Boxes"):WaitForObject()
local OUTLINE_OBJECT = script:GetCustomProperty("OutlineObject"):WaitForObject()

function GetCurrentDay()
	local date = os.date("*t")
	return date.day
end

OUTLINE_OBJECT:SetSmartProperty("Object To Outline", BOXES:FindChildByName(tostring(GetCurrentDay())))

function OpenBox(index)
	local box = BOXES:FindChildByName(tostring(index))
	if 	box.clientUserData.opened then return end
	box:MoveTo(box:GetPosition() + box:GetTransform():GetRightVector() * 50,1,true)
	box:RotateTo(box:GetRotation() + Rotation.New(20,0,0), 1,true)
	box.clientUserData.opened = true
	if index == GetCurrentDay() then
		OUTLINE_OBJECT:SetSmartProperty("Enabled", false)
	end
end

Events.Connect("OpenBox", function(id)
	OpenBox(id)
end)

function InitAdventCalendar(p, key)
	if key ~= "AdventCalendar" then return end
	local calendar = p:GetPrivateNetworkedData(key)
	if calendar == nil then	return end
	for key,value in pairs(calendar) do
		if value then
			OpenBox(key)
		end
	end
end

PLAYER.privateNetworkedDataChangedEvent:Connect(InitAdventCalendar)
InitAdventCalendar(PLAYER, "AdventCalendar")

Events.Connect("AdventCalendarAlreadyOpened", function()
    local obj = World.SpawnAsset("7CF45E787CD10A68:LimitBuildingNotif", { parent= propUIPanel })
    obj.text = "Come back tomorrow to open the next box."
end)
