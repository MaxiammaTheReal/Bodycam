-- Name: ButtonHandler
-- Path: game:GetService("Players").LocalPlayer.PlayerGui.MobileHotbarButtons.Container.RifleButton.ButtonHandler
-- Class: LocalScript
-- Exploit: Xeno 
-- Time to decompile: 0.5588069000004907 seconds

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 07:17:30
-- Luau version 6, Types version 3
-- Time taken: 0.002579 seconds

local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local Character = LocalPlayer_upvr.Character
if not Character then
	Character = LocalPlayer_upvr.CharacterAdded:Wait()
end
local MarketplaceService = game:GetService("MarketplaceService")
local Humanoid_upvr = Character:WaitForChild("Humanoid")
local function findTool_upvr(arg1) -- Line 15, Named "findTool"
	--[[ Upvalues[2]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: Humanoid_upvr (readonly)
	]]
	for _, v in ipairs(LocalPlayer_upvr.Backpack:GetChildren()) do
		if v:IsA("Tool") and v.Name:find(arg1) then
			Humanoid_upvr:EquipTool(v)
			return
		end
	end
end
local var11_upvw = false
local any_UserOwnsGamePassAsync_result1_upvr_2 = MarketplaceService:UserOwnsGamePassAsync(LocalPlayer_upvr.UserId, 950570797)
local any_UserOwnsGamePassAsync_result1_upvr = MarketplaceService:UserOwnsGamePassAsync(LocalPlayer_upvr.UserId, 790313436)
script.Parent.MouseButton1Click:Connect(function() -- Line 24
	--[[ Upvalues[4]:
		[1]: var11_upvw (read and write)
		[2]: any_UserOwnsGamePassAsync_result1_upvr_2 (readonly)
		[3]: findTool_upvr (readonly)
		[4]: any_UserOwnsGamePassAsync_result1_upvr (readonly)
	]]
	if var11_upvw then
	else
		var11_upvw = true
		if any_UserOwnsGamePassAsync_result1_upvr_2 then
			findTool_upvr("HK416A5")
		elseif any_UserOwnsGamePassAsync_result1_upvr then
			findTool_upvr("HK416")
		else
			findTool_upvr("M4")
		end
		var11_upvw = false
	end
end)