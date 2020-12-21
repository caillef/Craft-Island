-- Script made by @caillef - 12/06/2020

local CMD_OPEN = false
-- Call this function from other scripts to avoid triggering other bindingPressedEvent from your game
-- when you're writing a command
function IsCommandLineOpen()
    return CMD_OPEN
end

-- Handle allowlist --
local function mysplit(inputstr, sep)
    if sep == nil then sep = "%s" end
    local t={} 
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do table.insert(t, str) end
    return t
end

local propAdminAllowlist = script:GetCustomProperty("AdminAllowlist")
if not propAdminAllowlist or #propAdminAllowlist == 0 then
    print("Error: missing at least one admin name in the Debug Console Client script.")
    return
end
local adminNames = mysplit(propAdminAllowlist, ",")
local found = false
for _,name in pairs(adminNames) do
    if Game.GetLocalPlayer().name == name then
        found = true
    end
end
---------------------

local commandText = script:GetCustomProperty("Command"):WaitForObject()
local responseText = script:GetCustomProperty("Response"):WaitForObject()
local isAzertyKeyboard = script:GetCustomProperty("AZERTY")
local propOpenConsoleBinding = script:GetCustomProperty("OpenConsoleBinding") or "ability_extra_11"
local propSendCommandBinding = script:GetCustomProperty("SendCommandBinding") or "ability_extra_13"

local chars = not isAzertyKeyboard and " qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM0123456789" or " azertyuiopqsdfghjklwxcvbnmAZERTYUIOPQSDFGHJKLWXCVBNM0123456789"
local order = {}
for i=1,#chars do
    table.insert(order, string.sub(chars,i,i))
end

local abilities_binding = { "ability_extra_17" }
for i=20,45 do
    table.insert(abilities_binding, "ability_extra_"..tostring(i))
end
for i=20,45 do
    table.insert(abilities_binding, "ability_extra_"..tostring(i))
end
for i=0,9 do
    table.insert(abilities_binding, "ability_extra_"..tostring(i))
end

local leftctrl = false
local leftshift = false
local defaultRotationmode = Game.GetLocalPlayer():GetActiveCamera().rotationMode
function OnBindingPressed(player, binding)
    if binding == propOpenConsoleBinding then -- open console
        CMD_OPEN = not CMD_OPEN
        script:GetChildren()[1].visibility = CMD_OPEN and Visibility.FORCE_ON or Visibility.FORCE_OFF
        if CMD_OPEN then
            UI.SetCursorVisible(true)
            Events.BroadcastToServer("CMDOpen")
            defaultRotationmode = Game.GetLocalPlayer():GetActiveCamera().rotationMode
            Game.GetLocalPlayer():GetActiveCamera().rotationMode = RotationMode.NONE
        else
            UI.SetCursorVisible(false)
            Events.BroadcastToServer("CMDClose")
            Game.GetLocalPlayer():GetActiveCamera().rotationMode = defaultRotationmode
        end
    end

    if not CMD_OPEN then return end

    if binding == "ability_secondary" then -- letter b is binded on right click
        binding = "ability_extra_43"
    end

    if binding == "ability_extra_10" then
        leftctrl = true
        return
    end

    if binding == "ability_extra_12" then
        leftshift = true
        return
    end
    for k,b in ipairs(abilities_binding) do
        if binding == propSendCommandBinding then -- send command
            Events.BroadcastToServer("CMD", commandText.text)
            commandText.text = "> "
            return
        end
        if b == binding then
            if leftshift and k > 1 and k <= 27 then -- handle uppercase
                k = k + 26
            end
            commandText.text = commandText.text..order[k] 
            return
        end
    end
end

function OnBindingReleased(player, binding)
    if binding == "ability_extra_10" then leftctrl = false end
    if binding == "ability_extra_12" then leftshift = false end
end

function OnResponse(text, begin)
    if begin then responseText.text = "" end      -- Clear previous response
    responseText.text = responseText.text..text   -- Append response
    local nb = 0
    for i=1,#responseText.text do
        if string.sub(responseText.text,i,i) == "\n" then
            nb = nb + 1
        end
    end
    responseText.height = nb * 50
end

if found then
    Events.Connect("CMDR", OnResponse)
    Game.GetLocalPlayer().bindingPressedEvent:Connect(OnBindingPressed)
    Game.GetLocalPlayer().bindingReleasedEvent:Connect(OnBindingReleased)
end