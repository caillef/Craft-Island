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
local globalHitbox

-- nil Tick()
-- Checks the players within hitbox, and makes sure swipe effects stay at the player's location
function Tick()
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

function CheckForProp(prop)
    local player = EQUIPMENT.owner
    print(player.id)
    if not (prop and prop.name ~= "BuildingZone") then return false end
    if prop and prop:IsValid() and prop.parent and prop.parent.name == "Geo" then
        prop = prop.parent
    end
    if not prop.parent then return false end
    local eventObjectId = "H"..mysplit(prop.parent.id, ":")[1]
    print(">", eventObjectId)
    if prop and prop:IsValid() and prop.parent and prop.parent.parent then
        print(prop.parent.parent.name)
        -- Is on mining island
        if prop.parent.parent.name == "Rocks" and EQUIPMENT.sourceTemplateId == "9B0E9CDD3D19EB9E" then
            Events.Broadcast(eventObjectId, { p=player.id, t=0 })
            return true
        end
        -- Is on player island with pickaxe
        if (prop.parent.parent.name == "Static Structures" or prop.parent.parent.name == "Structures") and EQUIPMENT.sourceTemplateId == "9B0E9CDD3D19EB9E" then
            print("go")
            Events.Broadcast(eventObjectId, { p=player.id, t=0 })
            return true
        end
        -- Is on player island with axe
        if (prop.parent.parent.name == "Static Structures" or prop.parent.parent.name == "Structures") and EQUIPMENT.sourceTemplateId == "F27A87BB28DA0B17" then
            print("go")
            Events.Broadcast(eventObjectId, { p=player.id, t=1 })
            return true
        end
    end
    return false
end

function ActionOnCloserProp()
    for _,prop in ipairs(globalHitbox:GetOverlappingObjects()) do
        if CheckForProp(prop) then
            return
        end
    end
end

local prop
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

-- nil OnExecute(Ability)
-- Spawns a swing effect template on ability execute
function OnExecute(ability)
    for _, abilityInfo in ipairs(abilityList) do
        if abilityInfo.ability == ability then
            abilityInfo.canAttack = true
            ActionOnCloserProp()
            abilityInfo.ignoreList = {}
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
        globalHitbox = hitBox
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

EQUIPMENT.equippedEvent:Connect(OnEquipped)
EQUIPMENT.unequippedEvent:Connect(ResetMelee)