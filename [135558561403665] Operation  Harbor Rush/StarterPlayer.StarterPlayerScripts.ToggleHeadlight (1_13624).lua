-- Name: ToggleHeadlight
-- Path: game:GetService("StarterPlayer").StarterPlayerScripts.ToggleHeadlight
-- Class: LocalScript
-- Exploit: Xeno 
-- Time to decompile: 0.26158619999841903 seconds

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 07:17:04
-- Luau version 6, Types version 3
-- Time taken: 0.004662 seconds

local ToggleHeadlight_upvr_2 = game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("ToggleHeadlight")
local Toggled_upvr_2 = script:FindFirstChild("Toggled")
local Character = game.Players.LocalPlayer.Character
if not Character then
	Character = game.Players.LocalPlayer.CharacterAdded:Wait()
end
local Humanoid_upvr_2 = Character:WaitForChild("Humanoid")
if game:GetService("MarketplaceService"):UserOwnsGamePassAsync(game.Players.LocalPlayer.UserId, 795850635) then
	local any_CreateButton_result1 = require(game:GetService("ReplicatedStorage"):FindFirstChild("CAS")).CreateButton("ToggleHeadlight", "Toggle Headlight", UDim2.new(-0.6, 0, -0.87, 0), "rbxassetid://17517447587", Color3.new(0.486275, 0.486275, 0.486275))
	if any_CreateButton_result1 then
		any_CreateButton_result1.Event:Connect(function() -- Line 23, Named "toggleHeadlight"
			--[[ Upvalues[3]:
				[1]: Humanoid_upvr_2 (readonly)
				[2]: ToggleHeadlight_upvr_2 (readonly)
				[3]: Toggled_upvr_2 (readonly)
			]]
			if Humanoid_upvr_2.Health <= 0 then
			else
				ToggleHeadlight_upvr_2:FireServer()
				Toggled_upvr_2.Looped = false
				Toggled_upvr_2:Play()
			end
		end)
	end
end
local ButtonA_upvr_2 = Enum.KeyCode.ButtonA
local L_upvr_2 = Enum.KeyCode.L
game:GetService("UserInputService").InputBegan:Connect(function(arg1, arg2) -- Line 37
	--[[ Upvalues[5]:
		[1]: ButtonA_upvr_2 (readonly)
		[2]: Humanoid_upvr_2 (readonly)
		[3]: ToggleHeadlight_upvr_2 (readonly)
		[4]: Toggled_upvr_2 (readonly)
		[5]: L_upvr_2 (readonly)
	]]
	if arg1.KeyCode == ButtonA_upvr_2 then
		if Humanoid_upvr_2.Health <= 0 then
		else
			ToggleHeadlight_upvr_2:FireServer()
			Toggled_upvr_2.Looped = false
			Toggled_upvr_2:Play()
		end
	end
	if arg1.KeyCode == L_upvr_2 and not arg2 then
		if Humanoid_upvr_2.Health <= 0 then return end
		ToggleHeadlight_upvr_2:FireServer()
		Toggled_upvr_2.Looped = false
		Toggled_upvr_2:Play()
	end
end)