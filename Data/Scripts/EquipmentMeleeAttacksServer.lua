--[[
Copyright 2020 Manticore Games, Inc.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
documentation files (the "Software"), to deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit
persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the
Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
--]]

--[[
This script uses the specified hitbox trigger on ability to damage enemy players on ability execute phase.
Each ability can have its own trigger (e.g. small attacks - front trigger, big attacks - wider trigger).
]]

-- Internal custom properties
local EQUIPMENT = script:FindAncestorByType('Equipment')
if not EQUIPMENT:IsA('Equipment') then
    error(script.name .. " should be part of Equipment object hierarchy.")
end

-- Internal variables
local abilityList = {}

-- nil Tick()
-- Checks the players within hitbox, and makes sure swipe effects stay at the player's location
function Tick()
    for _,p in ipairs(Game.GetPlayers()) do
        if p.serverUserData.clickPressed and p.serverUserData.a and time() >= p.serverUserData.nextActionAt then
            p.serverUserData.a:Activate()
            p.serverUserData.nextActionAt = time() + 1
        end
    end

    -- Check for the existence of the equipment or owner before running Tick
    if not Object.IsValid(EQUIPMENT) then return end
    if not Object.IsValid(EQUIPMENT.owner) then return end
    if EQUIPMENT.owner.isDead then return end

    for _, abilityInfo in ipairs(abilityList) do
        if abilityInfo.canAttack then
            if Object.IsValid(abilityInfo.hitBox) then
                for _, other in ipairs(abilityInfo.hitBox:GetOverlappingObjects()) do
                    if other:IsA("Player") then
                        MeleeAttack(other, abilityInfo)
                    end
                end
            end
        end
    end
end

-- nil MeleeAttack(Player)
-- Detect players within hitbox to apply damage
function MeleeAttack(player, abilityInfo)

    local ability = abilityInfo.ability

    -- Ignore if the hitbox is overlapping with the owner
    if not player or not player:IsValid() or not ability or not ability:IsValid() or player == ability.owner then return end
    -- Ignore friendly attack
    if Teams.AreTeamsFriendly(player.team, ability.owner.team) then return end

    -- Avoid hitting the same player multiple times in a single swing
    if (abilityInfo.ignoreList[player] ~= 1) then

        -- Creates new damage info at apply it to the enemy
        local damage = Damage.New(abilityInfo.damage)
        damage.sourcePlayer = ability.owner
        damage.sourceAbility = ability
        player:ApplyDamage(damage)

        abilityInfo.ignoreList[player] = 1
    end
end

-- nil OnBeginOverlap(Trigger, Object)
-- Event when the hitbox hits a player
function OnBeginOverlap(trigger, other)
    if other:IsA("Player") then
        for _, abilityInfo in ipairs(abilityList) do
            if abilityInfo.canAttack then
                MeleeAttack(other, abilityInfo)
            end
        end
    end
end

-- nil OnEquipped()
-- Enables collision on player to make the hitbox collidable
function OnEquipped()
	EQUIPMENT.collision = Collision.INHERIT
end

local PICKAXE = "9B0E9CDD3D19EB9E"
local AXE = "2B7B3C64C0ED0918"
local SWORD = "CEC311EF57E9F34F"

function ActionOnProp(prop, playerId)
	if EQUIPMENT.sourceTemplateId == SWORD then return end
    if not prop or not prop:IsValid() then return false end
    while prop.parent and prop.parent:GetCustomProperty("HP") == nil do prop = prop.parent end
    if not prop or not prop.parent or not prop.parent:GetCustomProperty("HP") then return false end
    prop = prop.parent
    local id = prop.id
    local tool = 0 -- PICKAXE
    if EQUIPMENT.sourceTemplateId == AXE then tool = 1 end
    Events.Broadcast("H", { prop=id, p=playerId, t=tool })
    return true
end

local START_RAY = 100
local END_RAY = 600
local RADIUS = 50
local DEBUG = false
function ActionOnCloserProp(ability)
    local player = ability.owner
    local rayStart = player:GetViewWorldPosition()
    local lookVector = player:GetViewWorldRotation() * Vector3.FORWARD
    local results = World.SpherecastAll(rayStart + (lookVector * START_RAY), rayStart + (lookVector * END_RAY), RADIUS, {ignorePlayers=player, shouldDebugRender = DEBUG})
    for _, hitResult in ipairs(results) do
        if ActionOnProp(hitResult.other, ability.owner.id) then return end
    end
end

-- nil OnExecute(Ability)
-- Spawns a swing effect template on ability execute
function OnExecute(ability)
    ability.owner.serverUserData.a = ability
    for _, abilityInfo in ipairs(abilityList) do
        if abilityInfo.ability == ability then
            abilityInfo.canAttack = true
            abilityInfo.ignoreList = {}
            ActionOnCloserProp(ability)
        end
    end
end

-- nil ResetMelee(Ability)
-- Resets this scripts internal variables
function ResetMelee(ability)

    -- Forget anything we hit this swing
    if ability then
        for _, abilityInfo in ipairs(abilityList) do
            if abilityInfo.ability == ability then
                abilityInfo.canAttack = false
                abilityInfo.ignoreList = {}
            end
        end
    else
        for _, abilityInfo in ipairs(abilityList) do
            abilityInfo.canAttack = false
            abilityInfo.ignoreList = {}
        end
    end
end

-- Initialize
local abilityDescendants = EQUIPMENT:FindDescendantsByType("Ability")
for _, ability in ipairs(abilityDescendants) do
    local hitBox = ability:GetCustomProperty("Hitbox")

    if hitBox then
        hitBox = ability:GetCustomProperty("Hitbox"):WaitForObject()
        hitBox.beginOverlapEvent:Connect(OnBeginOverlap)

        ability.executeEvent:Connect(OnExecute)
        ability.cooldownEvent:Connect(ResetMelee)

        table.insert(abilityList, {
            ability = ability,
            damage = ability:GetCustomProperty("Damage"),
            hitBox = hitBox,
            canAttack = false,
            ignoreList = {}
        })
    end
end

Input.actionPressedEvent:Connect(function(p, action)
    if action == "Action" then
        p.serverUserData.clickPressed = true
        p.serverUserData.nextActionAt = time() + 1
    end
end)
Input.actionReleasedEvent:Connect(function(p, action)
    if action == "Action" then
        p.serverUserData.clickPressed = false
    end
end)

EQUIPMENT.equippedEvent:Connect(OnEquipped)
EQUIPMENT.unequippedEvent:Connect(ResetMelee)
