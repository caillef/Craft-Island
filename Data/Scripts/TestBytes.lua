function utf8_from(t)
    local bytearr = {}
    for _, v in ipairs(t) do
        local utf8byte = v < 0 and (0xff + v + 1) or v
        table.insert(bytearr, string.char(utf8byte))
    end
    return table.concat(bytearr)
end

function SerializeItem(pos, type, qty)
	if type >= 1024 then
	    print("Error: trying to serialize an item id above limit "..type)
	    return nil
	end
	if qty >= 64 then
	    print("Error: trying to serialize an item quantity above limit "..qty)
	    return nil
	end
	if pos >= 32 then
	    print("Error: trying to serialize an item position above limit "..pos)
	    return nil
	end
	A = 1 + ((type >> 4) << 1)
	B = 1 + ((type & 15) << 3) + ((qty >> 4) << 1)
	C = 1 + ((qty & 15) << 3) + ((pos >> 3) << 1)
	D = 1 + ((pos & 7) << 4)
	return utf8_from({A, B, C, D})
end

function DeserializeItem(str)
    chars = {}
    for i=1,#str do
        table.insert(chars, str:sub(i,i):byte())
    end
    item = {
        type = ((chars[1] >> 1) << 4) + (chars[2] >> 3),
        qty = (((chars[2] >> 1) & 3) << 4) + (chars[3] >> 3),
        pos = (((chars[3] >> 1) & 3) << 3) + (chars[4] >> 4)
    }
    return item
end

local str = SerializeItem(1, 1, 1)

local propInventory = script:GetCustomProperty("Inventory")

local data = Storage.GetSharedPlayerData(propInventory, Game.GetPlayers()[1])
data.test = str
Storage.SetSharedPlayerData(propInventory, Game.GetPlayers()[1], data)

local test2 = Storage.GetSharedPlayerData(propInventory, Game.GetPlayers()[1]).test

item = DeserializeItem(test2)
print(item.pos, item.type, item.qty)