-- Name: ReplayButton
-- Path: game:GetService("StarterGui").GameOver.Container.REPLAY.ReplayButton
-- Class: LocalScript
-- Exploit: Xeno 
-- Time to decompile: 0.25787490000038815 seconds

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 07:17:23
-- Luau version 6, Types version 3
-- Time taken: 0.001185 seconds

local Parent = script.Parent
local Players = game:GetService("Players")
Parent.Text = "REPLAY (0/"..(#Players:GetPlayers())..')'
local var4_upvw = false
local ReplayButtonFired_upvr = game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("ReplayButtonFired")
Parent.MouseButton1Click:Connect(function() -- Line 11
	--[[ Upvalues[2]:
		[1]: var4_upvw (read and write)
		[2]: ReplayButtonFired_upvr (readonly)
	]]
	if var4_upvw then
	else
		var4_upvw = true
		ReplayButtonFired_upvr:FireServer()
	end
end)
task.wait(6)
Parent.Text = "REPLAY (0/"..(#Players:GetPlayers())..')'