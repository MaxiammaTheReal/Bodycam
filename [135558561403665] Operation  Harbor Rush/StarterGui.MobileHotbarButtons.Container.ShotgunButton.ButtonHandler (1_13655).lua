-- Name: ButtonHandler
-- Path: game:GetService("StarterGui").MobileHotbarButtons.Container.ShotgunButton.ButtonHandler
-- Class: LocalScript
-- Exploit: Xeno 
-- Time to decompile: 0.2615779999996448 seconds

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 07:17:34
-- Luau version 6, Types version 3
-- Time taken: 0.002509 seconds

local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local Character = LocalPlayer_upvr.Character
if not Character then
	Character = LocalPlayer_upvr.CharacterAdded:Wait()
end
local Parent_upvr = script.Parent
local any_UserOwnsGamePassAsync_result1_upvr = game:GetService("MarketplaceService"):UserOwnsGamePassAsync(LocalPlayer_upvr.UserId, 780028006)
if any_UserOwnsGamePassAsync_result1_upvr then
	Parent_upvr.Active = true
	Parent_upvr.Visible = true
end
local Humanoid_upvr = Character:WaitForChild("Humanoid")
local function findTool_upvr(arg1) -- Line 21, Named "findTool"
	--[[ Upvalues[2]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: Humanoid_upvr (readonly)
	]]
	for _, v in LocalPlayer_upvr.Backpack:GetChildren() do
		if v:IsA("Tool") and v.Name == arg1 then
			Humanoid_upvr:EquipTool(v)
		end
	end
end
local var12_upvw = false
Parent_upvr.MouseButton1Click:Connect(function() -- Line 29
	--[[ Upvalues[4]:
		[1]: var12_upvw (read and write)
		[2]: any_UserOwnsGamePassAsync_result1_upvr (readonly)
		[3]: findTool_upvr (readonly)
		[4]: Parent_upvr (readonly)
	]]
	if var12_upvw then
	else
		var12_upvw = true
		if any_UserOwnsGamePassAsync_result1_upvr then
			findTool_upvr("M870")
		else
			Parent_upvr:Destroy()
		end
		var12_upvw = false
	end
end)