local BreakSFX = script:GetCustomProperty("BreakSFX") and script:GetCustomProperty("BreakSFX"):WaitForObject() or nil
local FallSFX = script:GetCustomProperty("FallSFX") and script:GetCustomProperty("FallSFX"):WaitForObject() or nil
local type = script:GetCustomProperty("Material") or 1
local propItemId = script:GetCustomProperty("ItemId")
local propItemId2 = script:GetCustomProperty("ItemId2")
local propItemUIQty = script:GetCustomProperty("ItemUIQty") or Vector2.New(1, 1)
local propItemUI2Qty = script:GetCustomProperty("ItemUI2Qty") or Vector2.New(1, 1)

local BUILD_SYSTEM = World.GetRootObject():FindChildByName("ServerScripts"):FindDescendantByName("BuildingSystemServer").context
local SPAWN_MANAGER = World.GetRootObject():FindChildByName("ServerScripts"):FindDescendantByName("SpawnManager").context

local prop = script.parent
local eventListenerOnHit
local HP = script:GetCustomProperty("HP")
local MAX_HP = HP
local nextHeal

local picked = false
local listenID = "pickup" .. math.random()*30
local listenID2 = "pickup" .. math.random()*30
local player = nil

local _SOUNDS
function GetSoundManager()
    _SOUNDS = _G["caillef.craftisland.sounds"]
    while _SOUNDS == nil do
        Task.Wait(0.1)
        _SOUNDS = _G["caillef.craftisland.sounds"]
    end
    return _SOUNDS
end

function OnHit(data) 
    if not script:IsValid() then return end
    for _,p in pairs(Game.GetPlayers()) do
        if p.id == data.p then
            player = p
        end
    end
    if not player or not SPAWN_MANAGER.permissionsBreak[player.id] and not SPAWN_MANAGER.permissionsAll[player.id] then
        return
    end
    HP = HP - 1 * ((data.t==2 or type == data.t) and 1 or 0.5)
    Task.Spawn(function()
        Task.Wait(10)
        if prop:IsValid() then
            HP = MAX_HP
        end
    end)
    if prop.name == "BS_Built_Rock" or prop.name == "BS_Built_Rock_Coal" then
        prop:GetChildren()[1]:SetScale(prop:GetChildren()[1]:GetScale() * 0.9)
    end

    if data.t ~= 2 then
        GetSoundManager().PlaySound(type == 0 and "StoneImpactSFX" or "WoodImpactSFX", script:GetWorldPosition())
    end

    if HP <= 0 then
        if propItemId and not picked then
            picked = true
            if not player or not player:IsValid() then
                print("Error: player not found")
                return
            end
            Events.Broadcast("requestInventoryFullEvent", player, { id=propItemId, string=listenID })
            if propItemId2 and (not data.harvest or propItemId2 == "WHEAT_SEEDS") then
                Events.Broadcast("requestInventoryFullEvent", player, { id=propItemId2, string=listenID2 })
            end
        end
        if BreakSFX then
            BreakSFX:Play()
        end
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
        BUILD_SYSTEM.RemoveStructure(prop, player)

        -- Check if not an harvest trigger
        if not data.harvest then
            return
        end

        for _,p in pairs(Game.GetPlayers()) do
            if p.id == data.p then
                if propItemId == "BERRY" then
                    BUILD_SYSTEM.PlaceObject(player, data.pos, data.angle, 26) -- Place Bush
                else
                    BUILD_SYSTEM.PlaceObject(player, data.pos, data.angle, 30)
                end
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
    if propItemId and id == listenID then
		if bool then
			picked = false
            Events.BroadcastToPlayer(player, "inventoryFullEvent")
            return
        end
        if propItemId == "BERRY" then
            if math.random() < 0.05 then
                Events.Broadcast("inventoryAddEvent", player, { idName="BERRY_SPROUT", qty = 1 })
                GetSoundManager().PlaySound("BonusItemSFX", script:GetWorldPosition())
            end
        end
        print(Events.Broadcast("inventoryAddEvent", player, { idName=propItemId, qty = math.floor(math.random(propItemUIQty.x, propItemUIQty.y)) }))
	end
    if propItemId2 and id == listenID2 then
		if bool then
			picked = false
            Events.BroadcastToPlayer(player, "inventoryFullEvent")
            return
        end
        if propItemId2 == "WHEAT_SEEDS" then
            if math.random() < 0.15 then
                Events.Broadcast("inventoryAddEvent", player, { idName=propItemId2, qty = 1 })
                GetSoundManager().PlaySound("BonusItemSFX", script:GetWorldPosition())
            end
        end
        Events.Broadcast("inventoryAddEvent", player, { idName=propItemId2, qty = math.floor(math.random(propItemUI2Qty.x , propItemUI2Qty.y)) })
	end
end

Events.Connect("returnInventoryFullEvent", PickUp)

