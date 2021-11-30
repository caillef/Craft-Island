local propUIPanel = script:GetCustomProperty("UIPanel"):WaitForObject()

local notifs = {}

local PLAYER = Game.GetLocalPlayer()

PLAYER.privateNetworkedDataChangedEvent:Connect(function(p, key)
	if key ~= "AchGet" then return end
	local obj = World.SpawnAsset("2E17B41F19A41C4F:AchievementNotif", { parent = propUIPanel })
	obj:FindChildByName("Description").text = PLAYER:GetPrivateNetworkedData("AchGet")
	table.insert(notifs, obj)
end)

function OnPress(_, key)
	if key == "ability_extra_29" then
		for key,notif in pairs(notifs) do
			if notif:IsValid() then
				notif:Destroy()
			end
		end
		notifs = {}
	end
end

Game.GetLocalPlayer().bindingPressedEvent:Connect(OnPress)
