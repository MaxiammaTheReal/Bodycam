-- Name: Indoor Audio Adjustment
-- Path: game:GetService("StarterPlayer").StarterCharacterScripts['Indoor Audio Adjustment']
-- Class: LocalScript
-- Exploit: Xeno 
-- Time to decompile: 0.25851390000025276 seconds

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 07:16:53
-- Luau version 6, Types version 3
-- Time taken: 0.001308 seconds

local Head_upvr = game.Players.LocalPlayer.Character:WaitForChild("Head")
game:GetService("RunService").RenderStepped:connect(function() -- Line 8
	--[[ Upvalues[1]:
		[1]: Head_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local SoundService = game:GetService("SoundService")
	local RaycastParams_new_result1 = RaycastParams.new()
	RaycastParams_new_result1.FilterDescendantsInstances = {Head_upvr.Parent, workspace.CurrentCamera}
	RaycastParams_new_result1.FilterType = Enum.RaycastFilterType.Blacklist
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [50] 32. Error Block 4 start (CF ANALYSIS FAILED)
	SoundService.AmbientReverb = "CarpettedHallway"
	do
		return
	end
	-- KONSTANTERROR: [50] 32. Error Block 4 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [54] 35. Error Block 5 start (CF ANALYSIS FAILED)
	SoundService.AmbientReverb = "Forest"
	-- KONSTANTERROR: [54] 35. Error Block 5 end (CF ANALYSIS FAILED)
end)