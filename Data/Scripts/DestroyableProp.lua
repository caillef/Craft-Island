local HitSFX = script:GetCustomProperty("HitSFX"):WaitForObject()
local BreakSFX = script:GetCustomProperty("BreakSFX"):WaitForObject()
local FallSFX = script:GetCustomProperty("FallSFX") and script:GetCustomProperty("FallSFX"):WaitForObject() or nil
local icon = script:GetCustomProperty("ItemUI")
local icon2 = script:GetCustomProperty("ItemUI2")
local BUILD_SYSTEM = World.GetRootObject():FindChildByName("ServerScripts"):FindDescendantByName("BuildingSystemServer").context

local prop = script.parent
local eventListenerOnHit
local HP = script:GetCustomProperty("HP")

local picked = false
local listenID = "pickup" .. math.random()*30
local listenID2 = "pickup" .. math.random()*30
local player = nil

function OnHit(data)
    if not script:IsValid() then
        return
    end
    if data.id == prop.id then
        HP = HP - 1
        HitSFX:Play()
        if HP <= 0 then
            if icon and not picked then
                picked = true
                for _,p in pairs(Game.GetPlayers()) do
                    if p.id == data.p then
                        player = p
                    end
                end
                if not player then
                    print("Player not found")
                    return
                end
                Events.Broadcast("requestInventoryFullEvent", player, { muid=icon, string=listenID })
                if icon2 then
                    Events.Broadcast("requestInventoryFullEvent", player, { muid=icon2, string=listenID2 })
                end
            end
            BreakSFX:Play()
            eventListenerOnHit:Disconnect()
            if BUILD_SYSTEM.RemoveStructure(prop) then
                return
            end
            if not FallSFX then
                prop:Destroy()
            else
                Task.Spawn(function()
                    prop:RotateContinuous(Rotation.New(20, 0, 0))
                    Task.Wait(0.25)
                    prop:RotateContinuous(Rotation.New(40, 0, 0))
                    Task.Wait(0.25)
                    prop:RotateContinuous(Rotation.New(80, 0, 0))
                    Task.Wait(0.25)
                    FallSFX:Play()
                    prop:RotateContinuous(Rotation.New(140, 0, 0))
                    Task.Wait(0.25)
                    prop:StopRotate()
                    Task.Wait(1)
                    prop:Destroy()
                end)
            end
        end
    end
end

eventListenerOnHit = Events.Connect("H", OnHit)

function PickUp(id, bool)
    if icon and id == listenID then
		if bool then
			picked = false
            Events.BroadcastToPlayer(player, "inventoryFullEvent")
		else
            Events.Broadcast("inventoryAddEvent", player, { muid=icon, qty = 1 })
		end
	end
    if icon2 and id == listenID2 then
		if bool then
			picked = false
            Events.BroadcastToPlayer(player, "inventoryFullEvent")
		else
            Events.Broadcast("inventoryAddEvent", player, { muid=icon2, qty = 1 })
		end
	end
end

Events.Connect("returnInventoryFullEvent", PickUp)

