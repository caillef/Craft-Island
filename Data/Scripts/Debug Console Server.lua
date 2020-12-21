-- Script made by @caillef - 12/06/2020

--[[ README
    WHY
        I wanted a way to explore and fix things inside the game, even in the production environment
        You can add your own commands to give item and do a lot of great stuff.

    HOW TO INSTALL IT IN YOUR GAME
        Place the Debug Console Directory at the root of your project
        Add your name in the Debug Console Client script, inside the Custom Property AdminAllowlist

    CLIENT SIDE
        To open the console, use Right Ctrl.
        To send command, use Right Shift.
        Those two shortcuts can be changed as Custom Property of the Debug Console System
        You can't write the letter 'b' because it opens a Core element so I binded 'b' to right click 'ability_secondary' (this is not ideal but I couldn't find a better workaround)
        Player is also jumping when pressing space. Maybe using an ability is the solution, but it will come in the next update

    SERVER SIDE
        To add a new command, just copy past this example after the "local command = {}" line

commands["NameOfTheCommandWithoutSpacesInsideTheName"] = {
    desc="This is the text that is going to be displayed for the help command",
    func= function(admin, args)
        admin is the player that is sending the command
        args are the arguments following the command. example: "> myCommand 23 Test" => args[1] = "23" | args[2] = "Test"
        return "Response from server" -- this value will be displayed as a response
    end
}

    FEEDBACK and BUGS
        If you found anything, just text me on Discord @Corentin caillef C.#4956
]]--

local allUIItem = {
    { "1214EEEF9701EE9A", "Item UI Basic Axe" },
    { "E2428B216BD2D34B", "Item UI Basic Hoe" },
    { "7D3C73A40F261843", "Item UI Berry" },
    { "6B0CB993E5EAEFF6", "Item UI Berry Pie" },
    { "849D4C1B02464AC5", "Item UI Berry Pie Dough" },
    { "58CF2E553C1958F0", "Item UI Bread" },
    { "905D3C58A6D70B6A", "Item UI Dough" },
    { "60BA6C27C1F3EA75", "Item UI Floor Wood" },
    { "D48610A224F25A9E", "Item UI Sapling" },
    { "D4469C4FF621DC7D", "Item UI Stairs Wood" },
    { "178FF62EF3246BE7", "Item UI Wall Wood" },
    { "828D307143518252", "Item UI Wheat" },
    { "A19DF3F7881592F3", "Item UI Wheat Seeds" },
    { "4153F13DBF7563A6", "Item UI Wood" },
    { "1FDE35B1D2A8901F", "Item UI Berry Sprout" }
}

local function mysplit(inputstr, sep)
    if sep == nil then sep = "%s" end
    local t={}
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do table.insert(t, str) end
    return t
end

local commands = {}

commands["help"] = {
    desc="Show all commands (help)",
    func= function(admin, args)
        local resp = "List of commands:\n"
        local maxSize = 0
        for str,cmd in pairs(commands) do
            if #str > maxSize then maxSize = #str end
        end
        for str,cmd in pairs(commands) do
            local nbSpaces = maxSize + 3 - #str
            resp = resp..str
            for i=1,nbSpaces do resp = resp.." " end
            resp = resp..cmd.desc.."\n"
        end
        return resp
    end
}

commands["respawn"] = {
    desc="Respawn player (respawn PLAYER_NAME)",
    func= function(admin, args)
        for _,p in pairs(Game.GetPlayers()) do
            if p.name == args[1] then
                p:Respawn()
                return "Player "..args[1].." respawned."
            end
        end
        return "Error: player "..args[1].." not found."
    end
}

commands["reset"] = {
    desc="Reset player local storage (reset PLAYER_NAME)",
    func= function(admin, args)
        for _,p in pairs(Game.GetPlayers()) do
            if p.name == args[1] then
                Storage.SetPlayerData(p, {});
                return "Player "..args[1].." has now empty storage."
            end
        end
        return "Error: player "..args[1].." not found."
    end
}

commands["bring"] = {
    desc="Teleport player at your position (bring PLAYER_NAME)",
    func= function(admin, args)
        for _,p in pairs(Game.GetPlayers()) do
            if p.name == args[1] then
                p:SetWorldPosition(admin:GetWorldPosition())
                return "Player "..args[1].." teleported."
            end
        end
        return "Error: player "..args[1].." not found."
    end
}

commands["kill"] = {
    desc="Kill player (kill PLAYER_NAME)",
    func= function(admin, args)
        for _,p in pairs(Game.GetPlayers()) do
            if p.name == args[1] then
                p:Die()
                return "Player "..args[1].." killed."
            end
        end
        return "Error: player "..args[1].." not found."
    end
}

commands["lp"] = {
    desc="List players' names (lp)",
    func= function(admin, args)
        local resp = "List of players:\n"
        for _,p in pairs(Game.GetPlayers()) do
            resp = resp..p.name.."\n"
        end
        return resp
    end
}

commands["s"] = {
    desc="Show player storage (s PLAYER_NAME)",
    func= function(admin, args)
        for _,p in pairs(Game.GetPlayers()) do
            if p.name == args[1] then
                local storage = Storage.GetPlayerData(p)
                local resp = "Inventory: "..storage.inventory.."\n"
                resp = resp.."Island: "..storage.pBlocks.."\n"
                return resp
            end
        end
        return "Player "..args[1].." not found."
    end
}

commands["logs"] = {
    desc="Show logs (logs SCRIPT_NAME)",
    func= function(admin, args)
        if args[1] == "b" then
            args[1] = "BuildingSystemServer"
        end
        if args[1] == "i" then
            args[1] = "InventoryScriptServer"
        end
        if args[1] == "im" then
            args[1] = "InventoryManager"
        end
        local files = World.GetRootObject():FindDescendantsByName(args[1])
        local resp = ""
        for _,file in pairs(files) do
            local Logs = file.context
            if args[2] and args[2] == "clear" then
                Logs.ClearLogs()
                return "Logs cleared"
            end
            for _,l in pairs(Logs.GetLogs()) do
                resp = resp..l.."\n"
            end
        end
        return resp
    end
}

commands["i"] = {
    desc="Give item to player (i PLAYER_NAME ID <QTY>)",
    func= function(admin, args)
        if args[1] == "me" then
            args[1] = admin.name
        end
        for _,p in pairs(Game.GetPlayers()) do
            if p.name == args[1] then
                local id = tonumber(args[2])
                local qty = args[3] and tonumber(args[3]) or 1
                local muid = allUIItem[id][1]
                local name = allUIItem[id][2]
                Events.Broadcast("inventoryAddEvent", admin, { muid=muid, qty = qty })
                return (qty == 1 and "One" or tostring(qty)).." "..name.." given to "..p.name.."."
            end
        end
        return "Player "..args[1].." not found."
    end
}

commands["lo"] = {
    desc="List objects (lo <NAME>)",
    func= function(admin, args)
        local list = World.GetRootObject():FindDescendantByName("ItemUIList"):GetChildren()
        local resp = ""
        for i,item in ipairs(list) do
            if args[1] and string.strfind(item.name, args[1]) then
                resp = resp..(i < 10 and " " or "")..tostring(i).." "..item.name.."\n"
            end
            if not args[1] then
                resp = resp..(i < 10 and " " or "")..tostring(i).." "..item.name.."\n"
            end
        end
        return resp
    end
}

function OnCommand(player, cmd)
    local splitted = mysplit(cmd, " ")
    if #splitted == 1 then
        splitted[2]= "help"
    end
    local cmd = splitted[2]
    if not commands[cmd] then
        Events.BroadcastToPlayer(player, "CMDR", "Error: Command '"..cmd.."' unknown.", true)
        return    
    end
    local args = {}
    for i=3,#splitted do -- extract the prompt and the base command
        table.insert(args, splitted[i])
    end
    local resp = commands[cmd].func(player, args)
    Events.BroadcastToPlayer(player, "CMDR", string.sub(resp, 1, 100), true)
    for i=101, #resp + 100, 100 do -- Send big response in several responses
        Task.Wait(0.2)
        Events.BroadcastToPlayer(player, "CMDR", string.sub(resp, i, i + 99), false)
    end
end

local canMountOnGame

Events.ConnectForPlayer("CMD", OnCommand)
Events.ConnectForPlayer("CMDOpen", function(player) 
    player.maxJumpCount = 0
    player.isCrouchEnabled = false
    canMountOnGame = player.canMount
    player.canMount = false
end)
Events.ConnectForPlayer("CMDClose", function(player) 
    player.maxJumpCount = 1
    player.isCrouchEnabled = true
    player.canMount = canMountOnGame
end)
