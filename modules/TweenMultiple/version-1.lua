--[[
    This module allows you to tween multiple instances/things at once, using 1 style, direction and time for all the . Without modifying the code internally.
    This is the second version of this function and it does not need a 3rd, I plan to create a seperate version of this where it's different, so keep an eye out for it.
    I do not mind if you use this, but please credit me in the description, I know most of the people who read this won't, though I'd appriciate it if you did.
    Coding modules like this can take a lot of time and usually are not perfect first try. Which means more time needs to be dedicated to them to perfect them to a useable state.
    Thanks, - Coolman15246/MCEpic_Nation
]]--
--[[
    This function follow the same things a normal Tween would. (goals, styles, etc.)
    A few issues with this function is that you CANNOT touch the tweens (stop, pause, etc).
    Anyways, with the short explanation out of the way, here's the actual function
]]--
TweenMultiple = function(ThingsToTweenTable,GoalTable,Time,Style,Direction) -- USE Enum.EasingStyle/Enum.EasingDirection!!!!!!!! 
	for i = 1,#ThingsToTweenTable, 1 do 
		local TweenService = game:GetService("TweenService")
		local Info = TweenInfo.new(tonumber(Time),Style,Direction,0,false,0)
		TweenService:Create(ThingsToTweenTable[i],Info,GoalTable[i]):Play()
	end
end
-- The function can also be this way:
function TweenMultiple(ThingsToTweenTable,GoalTable,Time,Style,Direction) -- USE Enum.EasingStyle/Enum.EasingDirection!!!!!!!! 
	for i = 1,#ThingsToTweenTable, 1 do 
		local TweenService = game:GetService("TweenService")
		local Info = TweenInfo.new(tonumber(Time),Style,Direction,0,false,0)
		TweenService:Create(ThingsToTweenTable[i],Info,GoalTable[i]):Play()
	end
end
--[[
    Notice how I stated to use Enum.EasingStyle.* and Enum.EasingDirection.*
    This is because Roblox occasionally throws and error if you use "Style" or "Direction" as a String.
    Using Enum does not allow a failure due to that since you're stating which one you want with Enum.

    I'm going to post an example here and dissect it so that you can easily see how it works.
    For this demonstration I will have 2 things to Tween, just so you get the gist of it. The limit is not known, but you can probably get a few or more in at once.
]]--

-- DEMO USAGE --
TweenMultiple(
    { -- List of things we want to tween, if you've never used tweenservice before, take a look at this, it'll help you. https://developer.roblox.com/en-us/api-reference/class/TweenService
        MakeMeInvis; -- Remember that this is a list of the instances we want to tween, we specify the properties/goals later in the function!
        MoveMe; -- This instance we want to move, whilst the one above only wants to turn transparent.
    }, -- This first table is the list of instances/things we want to tween, hence why the variable name is "ThingsToTweenTable".

    { -- This next table gets a bit tricky, but not too much. We're simple stating the "Goal Tables" (see api-reference link above) for the objects, THEY MUST BE IN ORDER OF THE INSTANCES.
        {Transparency = 1}; -- This is for the first thing we listed, which we want to make transparent.
        {Position = Vector3.new(0,0,0)}; -- This is for the second thing we listed, the MoveMe Instance, which we want to move to the new vector3.
    }, -- Each goal needs to be wrapped in a table, or "{}", which makes it a table. In each we need the Property of said Instance we want to tween.
    5, -- Just the time the tween will take to complete.
    Enum.EasingStyle.Quad, -- The style we want, valid styles: https://developer.roblox.com/en-us/api-reference/enum/EasingStyle
    Enum.EasingDirection.Out -- the Direction we want, valid directions: https://developer.roblox.com/en-us/api-reference/enum/EasingDirection
) -- And that's it!

-- So the compacted version (1 line) would be this:
TweenMultiple({MakeMeInvis;MoveMe;},{{Transparency = 1};{Position = Vector3.new(0,0,0)};},5,Enum.EasingStyle.Quad,Enum.EasingDirection.Out)
-- And at once it will do the tweens! 