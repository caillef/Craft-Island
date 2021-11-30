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

	local prop = World.FindObjectById(data.prop)
	if not prop or not prop:GetCustomProperty("HP") then return end

	if not prop.serverUserData.HP then
		prop.serverUserData.HP = prop:GetCustomProperty("HP")
	end

	local type = prop:GetCustomProperty("Material") or 1
	local propItemId = prop:GetCustomProperty("ItemId")
	local propItemId2 = prop:GetCustomProperty("ItemId2")
	local propItemUIQty = prop:GetCustomProperty("ItemQty") or Vector2.New(1, 1)
	local propItemUI2Qty = prop:GetCustomProperty("ItemQty2") or Vector2.New(1, 1)

	for _,p in pairs(Game.GetPlayers()) do
        if p.id == data.p then
            player = p
        end
    end
    if not player then return end

    prop.serverUserData.HP = prop.serverUserData.HP - 1 * ((data.t==2 or type == data.t) and 1 or 0.5)

    if data.t ~= 2 then
        SOUNDS.PlaySound(type == 0 and "StoneImpactSFX" or "WoodImpactSFX", script:GetWorldPosition())
    end

    if prop.serverUserData.HP > 0 then return end
    if prop.parent.parent.name ~= "Rocks" and player and prop.parent.id ~= player.serverUserData.slot.staticFolderId then return end
    if propItemId then
        if propItemId == "BERRY" then
            if math.random() < 0.05 then
                Events.Broadcast("inventoryAddEvent", player, { idName="BERRY_SPROUT", qty = 1 })
                SOUNDS.PlaySound("BonusItemSFX", script:GetWorldPosition())
            end
        end
        local qty = math.random(propItemUIQty.x, propItemUIQty.y)
        ManageTracking(player, propItemId, qty)
        Events.Broadcast("inventoryAddEvent", player, { idName=propItemId, qty = qty })
	end
    if propItemId2 and not (propItemId2 == "BERRY_SPROUT" and data.h) then        
        if propItemId2 == "WHEAT_SEEDS" or propItemId2 == "CARROT_SEEDS" or propItemId2 == "PUMPKIN_SEEDS" then
            if math.random() < 0.1 then
                Events.Broadcast("inventoryAddEvent", player, { idName=propItemId2, qty = 1 })
                SOUNDS.PlaySound("BonusItemSFX", script:GetWorldPosition())
            end
        end
        local qty = math.random(propItemUI2Qty.x, propItemUI2Qty.y)
        ManageTracking(player, propItemId2, qty)
        Events.Broadcast("inventoryAddEvent", player, { idName=propItemId2, qty = qty })
	end
    if prop.sourceTemplateId == "2C9DA5AC47D87B71" then -- Tree
        Events.Broadcast("TrackAction", {p=player, t=12, qty=1})
    end
    local pos = prop:GetWorldPosition()
    local angle = prop:GetWorldRotation().z
    Events.Broadcast("RemoveStructure", prop, player)

    -- Check if not an harvest trigger
    if not data.h then return end
    Events.Broadcast("PlaceStructure", pos, angle, propItemId == "BERRY" and 26 or 30, player.serverUserData.slot.staticFolderId)
end
Events.Connect("H", OnHit)
