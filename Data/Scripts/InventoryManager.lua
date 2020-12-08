local allUIItem = script:GetChildren()[1]:GetChildren()

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

function getItemType(itemMuid)
    for key,i in pairs(allUIItem) do
        if i.sourceTemplateId == mysplit(itemMuid, ":")[1] then
            return key
        end
    end
    return nil
end

function getItemMuid(itemType)
    if not allUIItem[itemType] then
        print("Error: can't find item of type "..itemType)
        return nil
    end
    return allUIItem[itemType].sourceTemplateId
end

function SerializeInventory(list)
    local str = "v1*"
    for key,item in pairs(list) do
        if item ~= nil and item.muid ~= nil then
            local type = getItemType(item.muid)
            if type ~= nil and item.qty > 0 then
                str = str..key..";"..type..";"..item.qty.."|"
            end
        end
    end
    -- print("SerializeInventory", str)
    return str
end

function DeserializeInventory(str)
    -- print("DeserializeInventory", str)
    local inventory = {}
    if type(str) == "table" then
        str = "v1*1;1;1|2;2;1"
    end

    local version = mysplit(str, "*")[1]
    if version ~= "v1" then
        str = "v1*1;1;1|2;2;1"
    end

    version = mysplit(str, "*")[1]
    if version == "v1" then
        local items = mysplit(mysplit(str, "*")[2], "|")
        for _,item in pairs(items) do
            local data = mysplit(item, ";")
            inventory[tonumber(data[1])] = { muid=getItemMuid(tonumber(data[2])), qty=tonumber(data[3]) }
        end
    end
    return inventory
end

function OnSaveInventory(player, d)
    local data = Storage.GetPlayerData(player)
    data.inventory = SerializeInventory(d)
    Storage.SetPlayerData(player, data)
end

Events.Connect("inventorySaveEvent", OnSaveInventory)