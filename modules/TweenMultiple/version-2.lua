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
TweenMultipleV2 = function(TableToTweenThings) -- USE Enum.EasingStyle/Enum.EasingDirection!!!!!!!! 
	for i = 1,#TableToTweenThings, 1 do 
		-- Table Format: {Object; Goaltable; Time; Style; Direction;} - Singluar Data table for an ENTIRE TWEEN
		-- Example: {LogoImage; {ImageTransparency = 0}; 5; Enum.EasingStyle.Sine ; Enum.EasingDirection.Out;}
		local TweenService = game:GetService("TweenService")
		local Data = TableToTweenThings[i]
		local Info = TweenInfo.new(tonumber(Data[3]),Data[4],Data[5],0,false,0)
		TweenService:Create(Data[1],Info,Data[2]):Play()
	end
end
-- The function can also be this way:
function TweenMultipleV2(TableToTweenThings) -- USE Enum.EasingStyle/Enum.EasingDirection!!!!!!!! 
	for i = 1,#TableToTweenThings, 1 do 
		-- Table Format: {Object; Goaltable; Time; Style; Direction;} - Singluar Data table for an ENTIRE TWEEN
		-- Example: {LogoImage; {ImageTransparency = 0}; 5; Enum.EasingStyle.Sine ; Enum.EasingDirection.Out;}
		local TweenService = game:GetService("TweenService")
		local Data = TableToTweenThings[i]
		local Info = TweenInfo.new(tonumber(Data[3]),Data[4],Data[5],0,false,0)
		TweenService:Create(Data[1],Info,Data[2]):Play()
	end
end