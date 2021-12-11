local API = {}

local function mysplit(inputstr, sep)
    return { CoreString.Split(inputstr, { delimiters = { sep }}) }
end

function utf8_from(t)
    local bytearr = {}
    for _, v in ipairs(t) do
        local utf8byte = v < 0 and (0xff + v + 1) or v
        table.insert(bytearr, string.char(utf8byte))
    end
    return table.concat(bytearr)
end

function SerializeItemv3(pos, id, qty)
	if id > 1023 then
	    print("Error: trying to serialize an item id above limit "..id)
	    return nil
	end
	if pos > 31 then
	    print("Error: trying to serialize an item position above limit "..pos)
	    return nil
	end
	if qty > 63 then
        qty = 63
	end
	A = 1 + ((id >> 4) << 1)
	B = 1 + ((id & 15) << 3) + ((qty >> 4) << 1)
	C = 1 + ((qty & 15) << 3) + ((pos >> 3) << 1)
	D = 1 + ((pos & 7) << 4)
	return utf8_from({A, B, C, D})
end

function DeserializeItem(str)
    if #str < 4 then return nil end
    chars = {}
    for i=1,#str do
        table.insert(chars, str:sub(i,i):byte())
    end
    item = {
        id = ((chars[1] >> 1) << 4) + (chars[2] >> 3),
        qty = (((chars[2] >> 1) & 3) << 4) + (chars[3] >> 3),
        pos = (((chars[3] >> 1) & 3) << 3) + (chars[4] >> 4)
    }
    return item
end

function SerializeItemv2(pos, type, qty)
    return pos..";"..type..";"..qty
end

local USED_VERSION = 3
function API.Serialize(list)
    local str = "v2*"
    if USED_VERSION == 2 then
        str = "v2*"
        for key,item in pairs(list) do
            if item ~= nil and item.id ~= nil and item.qty > 0 then
                local serialized = SerializeItemv2(key, item.id, item.qty)
                if serialized then
                    str = str..serialized.."|"
                end
            end
        end
    end
    if USED_VERSION == 3 then
        str = "v3*"
        for key,item in pairs(list) do
            if item ~= nil and item.id ~= nil and item.qty > 0 then
                local serialized = SerializeItemv3(key, item.id, item.qty)
                if serialized then
                    str = str..serialized
                end
            end
        end    
    end
    return str
end

function API.Deserialize(str)
    local inventory = {}
    if type(str) == "table" then
        str = "v1*"
    end
    local version = mysplit(str, "*")[1]
    if version == "v1" then
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
    if version == "v3" then
        local inv = mysplit(str, "*")[2]
        if inv then
            for i=1,#inv,4 do
                local item = DeserializeItem(inv:sub(i, i + 3))
                if not item then
                    return {}
                end
                inventory[item.pos] = { id=item.id, qty=item.qty }
            end
        end
        return inventory
    end
    print("Error: DeserializeInventory, using default value")
    return inventory
end

return API
