if Environment.IsClient() then return end

local BreakSFX = script:GetCustomProperty("BreakSFX") and script:GetCustomProperty("BreakSFX"):WaitForObject() or nil
local FallSFX = script:GetCustomProperty("FallSFX") and script:GetCustomProperty("FallSFX"):WaitForObject() or nil
local type = script:GetCustomProperty("Material") or 1
local propItemId = script:GetCustomProperty("ItemId")
local propItemId2 = script:GetCustomProperty("ItemId2")
local propItemUIQty = script:GetCustomProperty("ItemUIQty") or Vector2.New(1, 1)
local propItemUI2Qty = script:GetCustomProperty("ItemUI2Qty") or Vector2.New(1, 1)

local prop = script.parent
local eventListenerOnHit
local HP = script:GetCustomProperty("HP")

local picked = false
local listenID = "pickup" .. math.random()*30
local listenID2 = "pickup" .. math.random()*30
local player = nil

local SOUNDS = require(script:GetCustomProperty("SOUNDS"))

local trackIds = { "WHEAT", "BERRY", "CARROT", "STONE", "COAL" }
function ManageTracking(player, name, qty)
    qty = qty or 1
    local t
    for k,v in pairs(trackIds) do
        if v == name then
            t = k
            break
        end
    end
    if t then
        Events.Broadcast("TrackAction", {p=player, t=t, qty=qty})
    end
end

function OnHit(data)
    if not script:IsValid() then return end
    for _,p in pairs(Game.GetPlayers()) do
        if p.id == data.p then
            player = p
        end
    end
    if not player then return end
    local structures = prop:FindAncestorByName("StaticContext")
    if not structures then
	    return
    end

	local pos = prop:GetWorldPosition()
	local angle = prop:GetWorldRotation().z
    HP = HP - 1 * ((data.t==2 or type == data.t) and 1 or 0.5)

    if data.t ~= 2 then
        SOUNDS.PlaySound(type == 0 and "StoneImpactSFX" or "WoodImpactSFX", script:GetWorldPosition())
    end

    if HP <= 0 then

        if propItemId and not picked then
            picked = true
            if not player or not player:IsValid() then
                print("Error: player not found")
                return
            end
            Events.Broadcast("reqInvFullEv", player, { id=propItemId, string=listenID })
            if propItemId2 and (not data.h or propItemId2 == "WHEAT_SEEDS" or propItemId2 == "CARROT_SEEDS"or propItemId2 == "PUMPKIN_SEEDS") then
                Events.Broadcast("reqInvFullEv", player, { id=propItemId2, string=listenID2 })
            end
        end
        if BreakSFX then
            BreakSFX:Play()
        end
        eventListenerOnHit:Disconnect()
        if FallSFX then
            Events.Broadcast("TrackAction", {p=player, t=12, qty=1})
        end
        Events.Broadcast("RemoveStructure", prop, player)

        -- Check if not an harvest trigger
        if not data.h then
			return
        end

        -- for _,p in pairs(Game.GetPlayers()) do
        --     if p.id == data.p then
        --         if propItemId == "BERRY" then -- TODO use custom property
        --             Events.Broadcast("PlaceStructure", player, pos, angle, 26) -- Place Bush
        --         else
        --             Events.Broadcast("PlaceStructure", player, pos, angle, 30) -- Place Soil
        --         end
        --     end
        -- end
    end
end

eventListenerOnHit = Events.Connect("H"..CoreString.Split(prop.id, {delimiters={":"}}), OnHit)

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
                SOUNDS.PlaySound("BonusItemSFX", script:GetWorldPosition())
            end
        end
        local qty = math.floor(math.random(propItemUIQty.x, propItemUIQty.y))
        ManageTracking(player, propItemId, qty)
        Events.Broadcast("inventoryAddEvent", player, { idName=propItemId, qty = qty })
	end
    if propItemId2 and id == listenID2 then
		if bool then
			picked = false
            Events.BroadcastToPlayer(player, "inventoryFullEvent")
            return
        end
        if propItemId2 == "WHEAT_SEEDS" or propItemId2 == "CARROT_SEEDS" or propItemId2 == "PUMPKIN_SEEDS" then
            if math.random() < 0.1 then
                Events.Broadcast("inventoryAddEvent", player, { idName=propItemId2, qty = 1 })
                SOUNDS.PlaySound("BonusItemSFX", script:GetWorldPosition())
            end
        end
        local qty = math.floor(math.random(propItemUI2Qty.x, propItemUI2Qty.y))
        ManageTracking(player, propItemId2, qty)
        Events.Broadcast("inventoryAddEvent", player, { idName=propItemId2, qty = qty })
	end
end

Events.Connect("returnInventoryFullEvent", PickUp)

