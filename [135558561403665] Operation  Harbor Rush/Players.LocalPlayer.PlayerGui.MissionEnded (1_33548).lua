-- Name: MissionEnded
-- Path: game:GetService("Players").LocalPlayer.PlayerGui.MissionEnded
-- Class: LocalScript
-- Exploit: Xeno 
-- Time to decompile: 0.5499817999989318 seconds

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 07:17:17
-- Luau version 6, Types version 3
-- Time taken: 0.003300 seconds

local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local Character = LocalPlayer_upvr.Character
if not Character then
	Character = LocalPlayer_upvr.CharacterAdded:Wait()
end
local Humanoid_upvr = Character:WaitForChild("Humanoid")
local function _() -- Line 10, Named "unEequipTools"
	--[[ Upvalues[1]:
		[1]: Humanoid_upvr (readonly)
	]]
	Humanoid_upvr:UnequipTools()
end
local function clearBackpack_upvr() -- Line 14, Named "clearBackpack"
	--[[ Upvalues[1]:
		[1]: LocalPlayer_upvr (readonly)
	]]
	for _, v in ipairs(LocalPlayer_upvr.Backpack:GetChildren()) do
		if v:IsA("Tool") then
			v:Destroy()
		end
	end
	for _, v_2 in ipairs(LocalPlayer_upvr.Character:GetChildren()) do
		if v_2:IsA("Tool") then
			v_2:Destroy()
		end
	end
end
local UserInputService_upvr = game:GetService("UserInputService")
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("MissionEnded").OnClientEvent:Connect(function() -- Line 28
	--[[ Upvalues[4]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: Humanoid_upvr (readonly)
		[3]: clearBackpack_upvr (readonly)
		[4]: UserInputService_upvr (readonly)
	]]
	wait()
	require(LocalPlayer_upvr:WaitForChild("PlayerScripts"):WaitForChild("PlayerModule")):GetControls():Disable()
	Humanoid_upvr:UnequipTools()
	wait()
	clearBackpack_upvr()
	wait()
	UserInputService_upvr.MouseIconEnabled = true
	LocalPlayer_upvr.CameraMode = Enum.CameraMode.Classic
	LocalPlayer_upvr.CameraMinZoomDistance = 1
	LocalPlayer_upvr.CameraMaxZoomDistance = 1
end)