-- Name: ButtonHandler
-- Path: game:GetService("Players").LocalPlayer.PlayerGui.MobileHotbarButtons.Container.FlashbangButton.ButtonHandler
-- Class: LocalScript
-- Exploit: Xeno 
-- Time to decompile: 0.5449527999990096 seconds

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 07:17:30
-- Luau version 6, Types version 3
-- Time taken: 0.001788 seconds

local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local Character = LocalPlayer_upvr.Character
if not Character then
	Character = LocalPlayer_upvr.CharacterAdded:Wait()
end
local Humanoid_upvr = Character:WaitForChild("Humanoid")
local function findTool_upvr(arg1) -- Line 11, Named "findTool"
	--[[ Upvalues[2]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: Humanoid_upvr (readonly)
	]]
	for _, v in ipairs(LocalPlayer_upvr.Backpack:GetChildren()) do
		if v:IsA("Tool") and v.Name == arg1 then
			Humanoid_upvr:EquipTool(v)
		end
	end
end
local var10_upvw = false
script.Parent.MouseButton1Click:Connect(function() -- Line 19
	--[[ Upvalues[2]:
		[1]: var10_upvw (read and write)
		[2]: findTool_upvr (readonly)
	]]
	if var10_upvw then
	else
		var10_upvw = true
		findTool_upvr("Flashbang")
		var10_upvw = false
	end
end)