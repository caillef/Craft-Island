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

function utf8_from(t)
    local bytearr = {}
    for _, v in ipairs(t) do
        local utf8byte = v < 0 and (0xff + v + 1) or v
        table.insert(bytearr, string.char(utf8byte))
    end
    return table.concat(bytearr)
end

-- function SerializeItem(pos, type, qty)
-- if type >= 0x3FF then
--     print("Error: trying to serialize an item id above limit "..type)
--     return nil
-- end
-- if qty >= 0x3FFF then
--     print("Error: trying to serialize an item quantity above limit "..qty)
--     return nil
-- end
-- A = (type >> 2) + 1
-- B = ((type & 0x03) << 6) + (qty >> 8) + 1
-- C = (qty & 0xFF) + 1
-- D = pos + 1
-- return utf8_from({A, B, C, D})
-- end

-- function DeserializeItem(str)
--     if #str ~= 4 then
--         print("Error: item serialized in less than 4 characters.")
--         return nil
--     end
--     chars = {}
--     for i=1,#str do
--         table.insert(chars, str:sub(i,i):byte() - 1)
--     end
--     item = {
--         type = (chars[1] << 2) + (chars[2] >> 6),
--         qty = ((chars[2] & 0x3F) << 8) + chars[3],
--         pos = chars[4]
--     }
--     return item
-- end

function SerializeItem(pos, type, qty)
    return pos..";"..type..";"..qty
end

local logs = {}
function GetLogs()
    return logs
end

local function AddLogEntry(entry)
    table.insert(logs, entry)
    while #logs > 100 do
        table.remove(logs, 1)
    end
end

function ClearLogs()
    logs = {}
end

function SerializeInventory(list)
    local str = "v2*"
    for key,item in pairs(list) do
        if item ~= nil and item.id ~= nil and item.qty > 0 then
            AddLogEntry(SerializeItem(key, item.id, item.qty))
            str = str..SerializeItem(key, item.id, item.qty)..'|'
        end
    end
    return str
end

function DeserializeInventory(str)
    local inventory = {}
    if type(str) == "table" then
        str = "v1*"
    end
    local version = mysplit(str, "*")[1]
    if version == "v1" then
        --TODO: show popup explaining rework
        return inventory
    end
    if version == "v2" then
        if mysplit(str, "*")[2] then
            local items = mysplit(mysplit(str, "*")[2], "|")
            for _,item in pairs(items) do
                local data = mysplit(item, ";")
                local itemId = tonumber(data[2])
                local qty = tonumber(data[3])
                if itemId and qty > 0 then
                    inventory[tonumber(data[1])] = { qty=qty, id=itemId }
                end
            end
        end
        return inventory
    end
    -- if version == "v3" then
    --     local inv = mysplit(str, "*")[2]
    --     for i=1,#inv,4 do
    --         local item = DeserializeItem(inv:sub(i, i + 3))
    --         inventory[item.pos] = { muid=chopermuid, qty=item.qty }
    --     end
    --     return inventory
    -- end
    print("Error: DeserializeInventory, using default value")
    return inventory
end

function OnSaveInventory(player, d)
    local data = Storage.GetPlayerData(player)
    data.inventory = SerializeInventory(d)
    Storage.SetPlayerData(player, data)
end

_G["caillef.craftisland.inventorySerializer"] = {
    Serialize = SerializeInventory,
    Deserialize = DeserializeInventory
}

Events.Connect("inventorySaveEvent", OnSaveInventory)