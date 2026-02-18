-- Name: Prompts
-- Path: game:GetService("Players").LocalPlayer.PlayerScripts.Prompts
-- Class: LocalScript
-- Exploit: Xeno 
-- Time to decompile: 0.7284981999982847 seconds

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 07:17:02
-- Luau version 6, Types version 3
-- Time taken: 0.003299 seconds

local ProximityPrompt_upvr = script.ProximityPrompt
local UserInputService_upvr = game:GetService("UserInputService")
local module_upvr = require(script:WaitForChild("InputChecker"))
local PlayerGui_upvr = game:GetService("Players").LocalPlayer.PlayerGui
local TweenService_upvr = game:GetService("TweenService")
game:GetService("ProximityPromptService").PromptShown:Connect(function(arg1, arg2) -- Line 12
	--[[ Upvalues[5]:
		[1]: ProximityPrompt_upvr (readonly)
		[2]: UserInputService_upvr (readonly)
		[3]: module_upvr (readonly)
		[4]: PlayerGui_upvr (readonly)
		[5]: TweenService_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 41 start (CF ANALYSIS FAILED)
	local Key = ProximityPrompt_upvr:Clone().Frame.Key
	if UserInputService_upvr:GetLastInputType() == Enum.UserInputType.Gamepad1 or UserInputService_upvr:GetLastInputType() == Enum.UserInputType.Gamepad2 or UserInputService_upvr:GetLastInputType() == Enum.UserInputType.Gamepad3 or UserInputService_upvr:GetLastInputType() == Enum.UserInputType.Gamepad4 or UserInputService_upvr:GetLastInputType() == Enum.UserInputType.Gamepad5 or UserInputService_upvr:GetLastInputType() == Enum.UserInputType.Gamepad6 or UserInputService_upvr:GetLastInputType() == Enum.UserInputType.Gamepad7 or UserInputService_upvr:GetLastInputType() == Enum.UserInputType.Gamepad8 then
		Key.Button.Text = ""
		Key.ButtonBack.Text = ""
		if module_upvr.gamepadType == "Xbox" then
			Key.ControllerButtonXBOX.Visible = true
			Key.ControllerButtonPS.Visible = false
		else
			Key.ControllerButtonXBOX.Visible = false
			Key.ControllerButtonPS.Visible = true
		end
		-- KONSTANTWARNING: GOTO [152] #97
	end
	-- KONSTANTERROR: [0] 1. Error Block 41 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [112] 72. Error Block 38 start (CF ANALYSIS FAILED)
	Key.ControllerButtonPS.Visible = false
	Key.ControllerButtonXBOX.Visible = false
	if arg2 == Enum.ProximityPromptInputType.Touch then
		-- KONSTANTWARNING: GOTO [134] #86
	end
	-- KONSTANTERROR: [112] 72. Error Block 38 end (CF ANALYSIS FAILED)
end)