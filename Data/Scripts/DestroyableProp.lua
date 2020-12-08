local HitSFX = script:GetCustomProperty("HitSFX"):WaitForObject()
local BreakSFX = script:GetCustomProperty("BreakSFX"):WaitForObject()
local FallSFX = script:GetCustomProperty("FallSFX") and script:GetCustomProperty("FallSFX"):WaitForObject() or nil
local icon = script:GetCustomProperty("ItemUI")
local icon2 = script:GetCustomProperty("ItemUI2")
local propItemUIQty = script:GetCustomProperty("ItemUIQty") or Vector2.New(1, 1)
local propItemUI2Qty = script:GetCustomProperty("ItemUI2Qty") or Vector2.New(1, 1)

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
        Task.Spawn(function()
            if FallSFX then
                local tree = prop:FindChildByName("Built")
                Task.Spawn(function()
                    tree:RotateContinuous(Rotation.New(20, 0, 0))
                    Task.Wait(0.25)
                    tree:RotateContinuous(Rotation.New(40, 0, 0))
                    Task.Wait(0.25)
                    tree:RotateContinuous(Rotation.New(80, 0, 0))
                    Task.Wait(0.25)
                    FallSFX:Play()
                    tree:RotateContinuous(Rotation.New(140, 0, 0))
                    Task.Wait(0.25)
                    tree:StopRotate()
                    Task.Wait(1)
                end)
            end
        end)
        BUILD_SYSTEM.RemoveStructure(prop)
        if not data.harvest then
            return
        end

        local SOIL_TYPE = 4
        for _,p in pairs(Game.GetPlayers()) do
            if p.id == data.p then
                BUILD_SYSTEM.PlaceObject(p, data.pos, data.angle, SOIL_TYPE)
            end
        end   
    end
end

local function mysplit(inputstr, sep)
    if sep == nil then
            sep = "%s"
    end
    local t={}
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
            table.insert(t, str)
    end
    return t
end

eventListenerOnHit = Events.Connect("H"..mysplit(prop.id, ":")[1], OnHit)

function PickUp(id, bool)
    if icon and id == listenID then
		if bool then
			picked = false
            Events.BroadcastToPlayer(player, "inventoryFullEvent")
            return
        end
        Events.Broadcast("inventoryAddEvent", player, { muid=mysplit(icon, ":")[1], qty = math.floor(math.random(propItemUIQty.x , propItemUIQty.y)) })
	end
    if icon2 and id == listenID2 then
		if bool then
			picked = false
            Events.BroadcastToPlayer(player, "inventoryFullEvent")
            return
		end
        Events.Broadcast("inventoryAddEvent", player, { muid=mysplit(icon2, ":")[1], qty = math.floor(math.random(propItemUI2Qty.x , propItemUI2Qty.y)) })
	end
end

Events.Connect("returnInventoryFullEvent", PickUp)

