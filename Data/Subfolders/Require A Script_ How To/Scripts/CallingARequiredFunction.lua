--[[
Within custom properties attatch the TEMPLATED script you want to require (select the edit button on that script to see how it was setup). 
Don't drag a script from your hierarchy into the custom properties section, it won't work.
--]]

--how to require
local UTILITY = require("B0A6D20061461144:UtilityApi")

--Example 1, just printing
print(UTILITY.ExamplePrint())

--example 2, adding an item to a table and then getting the length of the table from the required script
local testTable = {}
testTable["Test"] = true
print(UTILITY.TableLength(testTable))