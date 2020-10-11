--[[
    This module allows you to take a table of numbers/variables as numbers, and get a total out of them
    This is the second version of this function and I plan to create a 3rd to allow more math operations then add/subtract.
    I do not mind if you use this, but please credit me in the description, I know most of the people who read this won't, though I'd appriciate it if you did.
    Coding modules like this can take a lot of time and usually are not perfect first try. Which means more time needs to be dedicated to them to perfect them to a useable state.
    Thanks, - Coolman15246/MCEpic_Nation
]]--
--[[
    Anyways, with the short explanation out of the way, here's the actual function
]]--
function CalculateTableValues(TableToCalc)
    local Numbers = {}
    for i,v in pairs(TableToCalc) do
        table.insert(Numbers,v)
    end
    local Product = 0
    for i = 1,#Numbers,1 do
        Product = Product + Numbers[i]
    end
    return Product
-- This one may be kinda confusing, but it's simple to use.
--DEMO--
local Maths = {Yaboy1 = 3,yaboy2 = -3, yaboy3 = 33}
CalculateTableValues(Maths) --> Returns 33
----------------
--[[
    This one is not the best and not the worst.
]]--