--[[
Notice line 8, setup a table
Notice every function starts with line 8's table name, UTILITY_API.AndThenYourFunctionName()
Notice line 20, you must return the table from line 8.
That's it!
]]

local UTILITY_API= {}

function UTILITY_API.ExamplePrint()
	return "Hi from ExamplePrint"
end

function UTILITY_API.TableLength(T)
  local count = 0
  for _ in pairs(T) do count = count + 1 end
  return count
end

return UTILITY_API