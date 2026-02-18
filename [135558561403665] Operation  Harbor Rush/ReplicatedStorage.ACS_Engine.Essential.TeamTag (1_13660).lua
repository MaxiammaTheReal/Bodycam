-- Name: TeamTag
-- Path: game:GetService("ReplicatedStorage").ACS_Engine.Essential.TeamTag
-- Class: LocalScript
-- Exploit: Xeno 
-- Time to decompile: 0.5501796000007744 seconds

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 07:18:26
-- Luau version 6, Types version 3
-- Time taken: 0.002176 seconds

repeat
	wait()
until game.Players.LocalPlayer.Character
local LocalPlayer_upvr = game.Players.LocalPlayer
local _ = game.ReplicatedStorage:WaitForChild("ACS_Engine")
function UpdateTag(arg1) -- Line 17
	--[[ Upvalues[1]:
		[1]: LocalPlayer_upvr (readonly)
	]]
	if arg1 ~= LocalPlayer_upvr and arg1.Character and arg1.Character:FindFirstChild("TeamTagUI") then
		local TeamTagUI = arg1.Character:FindFirstChild("TeamTagUI")
		if arg1.Team == LocalPlayer_upvr.Team then
			TeamTagUI.Enabled = true
			if arg1.Character:FindFirstChild("ACS_Client") and arg1.Character.ACS_Client:FindFirstChild("FireTeam") and arg1.Character.ACS_Client.FireTeam.SquadName.Value ~= "" then
				TeamTagUI.Frame.Icon.ImageColor3 = arg1.Character.ACS_Client.FireTeam.SquadColor.Value
			else
				TeamTagUI.Frame.Icon.ImageColor3 = Color3.fromRGB(255, 255, 255)
			end
		end
		TeamTagUI.Enabled = false
	end
end
game:GetService("RunService").Heartbeat:connect(function() -- Line 35
	for _, v in pairs(game.Players:GetChildren()) do
		UpdateTag(v)
	end
end)