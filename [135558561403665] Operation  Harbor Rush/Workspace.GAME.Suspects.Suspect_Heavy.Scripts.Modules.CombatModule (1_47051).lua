-- Name: CombatModule
-- Path: game:GetService("Workspace").GAME.Suspects.Suspect_Heavy.Scripts.Modules.CombatModule
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.2623775000010937 seconds

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 07:15:34
-- Luau version 6, Types version 3
-- Time taken: 0.008494 seconds

local module_upvr = {}
local Debris_upvr = game:GetService("Debris")
local Parent = script.Parent
local CoreModule_upvr = require(Parent.CoreModule)
local Status_upvr = require(Parent.Status)
local Parent_2 = script.Parent.Parent.Parent
local Humanoid = Parent_2.Humanoid
local M4_upvr = Parent_2.M4
local Barrel_upvr = M4_upvr.Barrel
Humanoid:LoadAnimation(Parent_2.Stab).Priority = Enum.AnimationPriority.Action
Humanoid:LoadAnimation(Parent_2.StabPunch).Priority = Enum.AnimationPriority.Action
local any_LoadAnimation_result1 = Humanoid:LoadAnimation(Parent_2.ThrowAnimation)
any_LoadAnimation_result1.Priority = Enum.AnimationPriority.Action
any_LoadAnimation_result1.Looped = false
function module_upvr.getBullet() -- Line 40
	local Part = Instance.new("Part")
	Part.Size = Vector3.new(0.10000, 0.10000, 0.30000)
	Part.BrickColor = BrickColor.new("New Yeller")
	Part.Material = Enum.Material.Neon
	Part.Anchored = true
	Part.Transparency = 1
	Part.CanCollide = false
	Part.Name = "Bullet"
	Part.Parent = workspace
	local Sound = Instance.new("Sound")
	Sound.Name = "Whiz"
	Sound.Volume = 0
	Sound.PlaybackSpeed = 7
	Sound.Looped = true
	Sound.SoundId = "rbxasset://sounds/Rocket whoosh 01.wav"
	Sound.Parent = Part
	Sound:Play()
	local Attachment_2 = Instance.new("Attachment")
	Attachment_2.Parent = Part
	Attachment_2.Position = Vector3.new(-0.1000, -0.1000, 0)
	local Attachment = Instance.new("Attachment")
	Attachment.Parent = Part
	Attachment.Position = Vector3.new(0.10000, 0.10000, 0)
	local Trail = Instance.new("Trail")
	Trail.Parent = Part
	Trail.Attachment0 = Attachment_2
	Trail.Attachment1 = Attachment
	Trail.Color = ColorSequence.new(Part.Color)
	Trail.WidthScale = NumberSequence.new(1, 0)
	Trail.Lifetime = 0.1
	Trail.MinLength = 1
	Trail.FaceCamera = true
	return Part
end
function module_upvr.getCase() -- Line 80
	local Part_2 = Instance.new("Part")
	Part_2.Size = Vector3.new(0.10000, 0.10000, 0.40000)
	Part_2.Material = Enum.Material.Metal
	Part_2.CanCollide = false
	Part_2.BrickColor = BrickColor.new("Really black")
	Part_2.Parent = workspace
	local FileMesh = Instance.new("FileMesh")
	FileMesh.MeshId = "rbxassetid://5435476321"
	FileMesh.TextureId = "rbxassetid://5435476346"
	FileMesh.Scale = Vector3.new(0.10000, 0.10000, 0.10000)
	FileMesh.Parent = Part_2
	return Part_2
end
function removeBullet(arg1) -- Line 96
	--[[ Upvalues[1]:
		[1]: Debris_upvr (readonly)
	]]
	arg1.Transparency = 1
	arg1.Whiz:Stop()
	arg1.Parent = workspace.Terrain
	Debris_upvr:AddItem(arg1, 0.5)
end
local RunService_upvr = game:GetService("RunService")
local Impact_upvr = M4_upvr.Impact
local TargetModule_upvr = require(Parent.TargetModule)
function pushBullet(arg1) -- Line 104
	--[[ Upvalues[6]:
		[1]: RunService_upvr (readonly)
		[2]: M4_upvr (readonly)
		[3]: CoreModule_upvr (readonly)
		[4]: Impact_upvr (readonly)
		[5]: TargetModule_upvr (readonly)
		[6]: Debris_upvr (readonly)
	]]
	local RaycastParams_new_result1_upvr = RaycastParams.new()
	RaycastParams_new_result1_upvr.FilterDescendantsInstances = {workspace.Terrain}
	RunService_upvr.Heartbeat:Wait()
	arg1.CFrame = M4_upvr.CFrame * CFrame.new(0, 0.2, -2.5)
	RunService_upvr.Heartbeat:Wait()
	local var24_upvw = 20
	CoreModule_upvr.spawn(function() -- Line 117
		--[[ Upvalues[7]:
			[1]: arg1 (readonly)
			[2]: RaycastParams_new_result1_upvr (readonly)
			[3]: CoreModule_upvr (copied, readonly)
			[4]: Impact_upvr (copied, readonly)
			[5]: TargetModule_upvr (copied, readonly)
			[6]: Debris_upvr (copied, readonly)
			[7]: var24_upvw (read and write)
		]]
		-- KONSTANTERROR: [178] 125. Error Block 19 start (CF ANALYSIS FAILED)
		arg1.CFrame *= CFrame.new(Vector3.new(-0, -0, -12))
		var24_upvw -= 1
		if var24_upvw < 0 then
			arg1:Destroy()
			return
		end
		game:GetService("RunService").Heartbeat:Wait()
		-- KONSTANTERROR: [178] 125. Error Block 19 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 21 start (CF ANALYSIS FAILED)
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [212.2]
		-- KONSTANTERROR: [0] 1. Error Block 21 end (CF ANALYSIS FAILED)
	end)
end
local HumanoidRootPart_upvr = Parent_2.HumanoidRootPart
local var26_upvw = 1
local PointLight_upvr = Barrel_upvr.PointLight
local Chamber_upvr = M4_upvr.Chamber
local Fire_upvr = M4_upvr.Fire
local TweenService_upvr = game:GetService("TweenService")
local ActionsModule_upvr = require(Parent.ActionsModule)
local Settings_upvr = Parent_2.Settings
function module_upvr.shoot(arg1) -- Line 167
	--[[ Upvalues[13]:
		[1]: Status_upvr (readonly)
		[2]: CoreModule_upvr (readonly)
		[3]: HumanoidRootPart_upvr (readonly)
		[4]: Barrel_upvr (readonly)
		[5]: var26_upvw (read and write)
		[6]: PointLight_upvr (readonly)
		[7]: module_upvr (readonly)
		[8]: Chamber_upvr (readonly)
		[9]: Fire_upvr (readonly)
		[10]: M4_upvr (readonly)
		[11]: TweenService_upvr (readonly)
		[12]: ActionsModule_upvr (readonly)
		[13]: Settings_upvr (readonly)
	]]
	if Status_upvr:get("weaponCool") and not Status_upvr:get("reloading") then
		Status_upvr:set("weaponCool", false)
		local var35
		if 60 < CoreModule_upvr.checkDist(arg1, HumanoidRootPart_upvr) then
			var35 = 1
		else
			var35 = 3
		end
		for _ = 1, var35 do
			wait(0.1)
			Status_upvr:set("mag", Status_upvr:get("mag") - 1)
			CoreModule_upvr.spawn(function() -- Line 182
				--[[ Upvalues[3]:
					[1]: Barrel_upvr (copied, readonly)
					[2]: var26_upvw (copied, read and write)
					[3]: PointLight_upvr (copied, readonly)
				]]
				Barrel_upvr.FlashBG["Flash"..var26_upvw].Visible = true
				PointLight_upvr.Enabled = true
				wait(0.1)
				PointLight_upvr.Enabled = false
				Barrel_upvr.FlashBG["Flash"..var26_upvw].Visible = false
				var26_upvw += 1
				if 3 < var26_upvw then
					var26_upvw = 1
				end
			end)
			pushBullet(module_upvr.getBullet())
			local any_getCase_result1_upvr = module_upvr.getCase()
			any_getCase_result1_upvr.CFrame = Chamber_upvr.WorldCFrame
			any_getCase_result1_upvr.Velocity = any_getCase_result1_upvr.CFrame.RightVector * -20 * Vector3.new(1, -3, 1)
			CoreModule_upvr.spawn(function() -- Line 200
				--[[ Upvalues[1]:
					[1]: any_getCase_result1_upvr (readonly)
				]]
				wait(0.05)
				any_getCase_result1_upvr.CanCollide = true
				wait(2)
				any_getCase_result1_upvr:Destroy()
			end)
			Fire_upvr:Play()
			local Position = M4_upvr.HingeAttach1.Position
			M4_upvr.HingeAttach1.Position = Position - Vector3.new(0, 0, 0.20000)
			TweenService_upvr:Create(M4_upvr.HingeAttach1, TweenInfo.new(0.1), {
				Position = Position;
			}):Play()
		end
		if Status_upvr:get("mag") <= 0 then
			ActionsModule_upvr.reload()
		end
		any_getCase_result1_upvr = Settings_upvr.M4
		wait(any_getCase_result1_upvr.Delay.Value)
		any_getCase_result1_upvr = true
		Status_upvr:set("weaponCool", any_getCase_result1_upvr)
	end
end
function module_upvr.checkCluster(arg1) -- Line 226
	--[[ Upvalues[2]:
		[1]: Status_upvr (readonly)
		[2]: CoreModule_upvr (readonly)
	]]
	for _, v in ipairs(Status_upvr:get("activeAllies")) do
		if CoreModule_upvr.checkDist(arg1, v) < 30 then
			return false
		end
	end
	for _, v_2 in ipairs(Status_upvr:get("potentialTargets")) do
		if v_2 ~= arg1 and CoreModule_upvr.checkDist(arg1, v_2) < 15 then
			return true
		end
	end
	return false
end
return module_upvr