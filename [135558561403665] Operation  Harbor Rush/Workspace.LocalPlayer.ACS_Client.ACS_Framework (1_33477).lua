-- Name: ACS_Framework
-- Path: game:GetService("Workspace").LocalPlayer.ACS_Client.ACS_Framework
-- Class: LocalScript
-- Exploit: Xeno 
-- Time to decompile: 1.3504852000005485 seconds

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 07:16:58
-- Luau version 6, Types version 3
-- Time taken: 0.195427 seconds

local var1_upvr
repeat
	wait()
	var1_upvr = game.Players.LocalPlayer
until var1_upvr.Character
var1_upvr = game.Players
local LocalPlayer_upvr = var1_upvr.LocalPlayer
var1_upvr = LocalPlayer_upvr.Character
if not var1_upvr then
	var1_upvr = LocalPlayer_upvr.CharacterAdded:Wait()
end
local mouse = LocalPlayer_upvr:GetMouse()
local CurrentCamera_upvr = workspace.CurrentCamera
local UserInputService_upvr = game:GetService("UserInputService")
local ContextActionService_upvr = game:GetService("ContextActionService")
local RunService_upvr = game:GetService("RunService")
local TweenService_upvr = game:GetService("TweenService")
local ReplicatedStorage_upvr = game.ReplicatedStorage
local module_4 = require(ReplicatedStorage_upvr:WaitForChild("CAS"))
local ACS_WorkSpace_upvr = workspace:WaitForChild("ACS_WorkSpace")
local ACS_Engine = ReplicatedStorage_upvr:WaitForChild("ACS_Engine")
local Events_upvr = ACS_Engine:WaitForChild("Events")
local Modules = ACS_Engine:WaitForChild("Modules")
local module_3_upvr = require(ACS_Engine:WaitForChild("GameRules"):WaitForChild("Config"))
local module = require(Modules:WaitForChild("Spring"))
local module_5_upvr = require(Modules:WaitForChild("Hitmarker"))
local module_upvr = require(Modules:WaitForChild("Thread"))
local module_2_upvr = require(Modules:WaitForChild("Utilities"))
local MarketplaceService_upvr = game:GetService("MarketplaceService")
local var21_upvw
local var22_upvw
local var23_upvw
local var24_upvw
local var25_upvw
local var26_upvw
local var27_upvw
local var28_upvw
local var29_upvw
local var30_upvw
local var31_upvw
local var32_upvw
local var33_upvw
local var34_upvw = 1
local var35_upvw
local var36_upvw
local time_result1_upvw = time()
local any_InvokeServer_result1_upvr = Events_upvr.AcessId:InvokeServer(LocalPlayer_upvr.UserId)
local var39_upvw = 0
local var40_upvw = false
local var41_upvw = false
local var42_upvw = false
local var43_upvw = false
local var44_upvw = false
local var45_upvw = false
local var46_upvw = false
local var47_upvw = false
local var48_upvw = false
local var49_upvw = 0
local var50_upvw = 1
local var51_upvw = 0
local var52_upvw
local var53_upvw
local var54_upvw
local var55_upvw
local var56_upvw = false
local var57_upvw = false
local var58_upvw
local var59_upvw
local var60_upvw = false
local var61_upvw = false
local var62_upvw = false
local var63_upvw = false
local var64_upvw
local var65_upvw = false
local var66_upvw = false
local var67_upvw = false
local var68_upvw = false
local var69_upvw = false
local var70_upvw = false
local var71_upvw = false
local var72_upvw = false
local var73_upvw = 150
local zero_cframe_upvw_2 = CFrame.new()
local tbl_10_upvr = {
	camRecoilMod = {
		RecoilTilt = 1;
		RecoilUp = 1;
		RecoilLeft = 1;
		RecoilRight = 1;
	};
	gunRecoilMod = {
		RecoilUp = 1;
		RecoilTilt = 1;
		RecoilLeft = 1;
		RecoilRight = 1;
	};
	ZoomValue = 70;
	Zoom2Value = 70;
	AimRM = 1;
	SpreadRM = 1;
	DamageMod = 1;
	minDamageMod = 1;
	MinRecoilPower = 1;
	MaxRecoilPower = 1;
	RecoilPowerStepAmount = 1;
	MinSpread = 1;
	MaxSpread = 1;
	AimInaccuracyStepAmount = 1;
	AimInaccuracyDecrease = 1;
	WalkMult = 1;
	adsTime = 1;
	MuzzleVelocity = 1;
}
local zero_cframe_upvw_3 = CFrame.new()
local zero_cframe_upvw = CFrame.new()
local zero_cframe_upvw_6 = CFrame.new()
local TweenInfo_new_result1_upvr = TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut, 0, false, 0)
local tbl_3_upvr = {CurrentCamera_upvr, var1_upvr, ACS_WorkSpace_upvr.Client, ACS_WorkSpace_upvr.Server}
local ModStorage = LocalPlayer_upvr.PlayerGui:FindFirstChild("ModStorage")
if not ModStorage then
	ModStorage = Instance.new("Folder")
end
ModStorage.Parent = LocalPlayer_upvr.PlayerGui
ModStorage.Name = "ModStorage"
function RAND(arg1, arg2, arg3) -- Line 185
	local var84 = 1 / (arg3 or 1)
	return math.random(arg1 * var84, arg2 * var84) / var84
end
local clone_2_upvw = ACS_Engine:WaitForChild("HUD"):WaitForChild("StatusUI"):Clone()
clone_2_upvw.Parent = LocalPlayer_upvr.PlayerGui
local Crosshair_upvr = clone_2_upvw.Crosshair
local any_new_result1_upvr_3 = module.new(Vector3.new())
any_new_result1_upvr_3.d = 0.1
any_new_result1_upvr_3.s = 20
local any_new_result1_upvr = module.new(Vector3.new())
any_new_result1_upvr.d = 0.5
any_new_result1_upvr.s = 20
local any_new_result1_upvr_2 = module.new(Vector3.new())
any_new_result1_upvr_2.d = 0.25
any_new_result1_upvr_2.s = 20
local Stance_upvr = Events_upvr.Stance
local var93_upvw = 0
local var94_upvw = 0
local var95_upvw = 0
local var96_upvw = 0
local var97_upvw = false
local var98_upvw = false
local var99_upvw = true
local var100_upvw = true
local Humanoid_upvr = var1_upvr:WaitForChild("Humanoid")
local Neck_upvr = var1_upvr:WaitForChild("Head"):WaitForChild("Neck")
UserInputService_upvr.MouseIconEnabled = true
LocalPlayer_upvr.CameraMode = Enum.CameraMode.Classic
CurrentCamera_upvr.CameraType = Enum.CameraType.Custom
CurrentCamera_upvr.CameraSubject = Humanoid_upvr
if module_3_upvr.TeamTags then
	local clone = ACS_Engine:WaitForChild("Essential").TeamTag:clone()
	clone.Parent = var1_upvr
	clone.Disabled = false
end
local var104_upvw = false
local PlayerGui_upvr = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
function handleAction(arg1, arg2, arg3) -- Line 264
	--[[ Upvalues[32]:
		[1]: var46_upvw (read and write)
		[2]: var25_upvw (read and write)
		[3]: var71_upvw (read and write)
		[4]: var45_upvw (read and write)
		[5]: var44_upvw (read and write)
		[6]: var51_upvw (read and write)
		[7]: var47_upvw (read and write)
		[8]: var60_upvw (read and write)
		[9]: var65_upvw (read and write)
		[10]: var23_upvw (read and write)
		[11]: var68_upvw (read and write)
		[12]: var69_upvw (read and write)
		[13]: var49_upvw (read and write)
		[14]: var41_upvw (read and write)
		[15]: var42_upvw (read and write)
		[16]: var100_upvw (read and write)
		[17]: var98_upvw (read and write)
		[18]: var97_upvw (read and write)
		[19]: var93_upvw (read and write)
		[20]: var104_upvw (read and write)
		[21]: var96_upvw (read and write)
		[22]: PlayerGui_upvr (readonly)
		[23]: LocalPlayer_upvr (readonly)
		[24]: MarketplaceService_upvr (readonly)
		[25]: var99_upvw (read and write)
		[26]: var94_upvw (read and write)
		[27]: var95_upvw (read and write)
		[28]: var40_upvw (read and write)
		[29]: var1_upvr (readonly)
		[30]: module_3_upvr (readonly)
		[31]: Events_upvr (readonly)
		[32]: var26_upvw (read and write)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [2] 2. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [2] 2. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 4. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 4. Error Block 3 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [22] 16. Error Block 6 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [22] 16. Error Block 6 end (CF ANALYSIS FAILED)
end
function resetMods() -- Line 513
	--[[ Upvalues[1]:
		[1]: tbl_10_upvr (readonly)
	]]
	tbl_10_upvr.camRecoilMod.RecoilUp = 1
	tbl_10_upvr.camRecoilMod.RecoilLeft = 1
	tbl_10_upvr.camRecoilMod.RecoilRight = 1
	tbl_10_upvr.camRecoilMod.RecoilTilt = 1
	tbl_10_upvr.gunRecoilMod.RecoilUp = 1
	tbl_10_upvr.gunRecoilMod.RecoilTilt = 1
	tbl_10_upvr.gunRecoilMod.RecoilLeft = 1
	tbl_10_upvr.gunRecoilMod.RecoilRight = 1
	tbl_10_upvr.AimRM = 1
	tbl_10_upvr.SpreadRM = 1
	tbl_10_upvr.DamageMod = 1
	tbl_10_upvr.minDamageMod = 1
	tbl_10_upvr.MinRecoilPower = 1
	tbl_10_upvr.MaxRecoilPower = 1
	tbl_10_upvr.RecoilPowerStepAmount = 1
	tbl_10_upvr.MinSpread = 1
	tbl_10_upvr.MaxSpread = 1
	tbl_10_upvr.AimInaccuracyStepAmount = 1
	tbl_10_upvr.AimInaccuracyDecrease = 1
	tbl_10_upvr.WalkMult = 1
	tbl_10_upvr.MuzzleVelocity = 1
end
function setMods(arg1) -- Line 543
	--[[ Upvalues[1]:
		[1]: tbl_10_upvr (readonly)
	]]
	tbl_10_upvr.camRecoilMod.RecoilUp = tbl_10_upvr.camRecoilMod.RecoilUp * arg1.camRecoil.RecoilUp
	tbl_10_upvr.camRecoilMod.RecoilLeft = tbl_10_upvr.camRecoilMod.RecoilLeft * arg1.camRecoil.RecoilLeft
	tbl_10_upvr.camRecoilMod.RecoilRight = tbl_10_upvr.camRecoilMod.RecoilRight * arg1.camRecoil.RecoilRight
	tbl_10_upvr.camRecoilMod.RecoilTilt = tbl_10_upvr.camRecoilMod.RecoilTilt * arg1.camRecoil.RecoilTilt
	tbl_10_upvr.gunRecoilMod.RecoilUp = tbl_10_upvr.gunRecoilMod.RecoilUp * arg1.gunRecoil.RecoilUp
	tbl_10_upvr.gunRecoilMod.RecoilTilt = tbl_10_upvr.gunRecoilMod.RecoilTilt * arg1.gunRecoil.RecoilTilt
	tbl_10_upvr.gunRecoilMod.RecoilLeft = tbl_10_upvr.gunRecoilMod.RecoilLeft * arg1.gunRecoil.RecoilLeft
	tbl_10_upvr.gunRecoilMod.RecoilRight = tbl_10_upvr.gunRecoilMod.RecoilRight * arg1.gunRecoil.RecoilRight
	tbl_10_upvr.AimRM *= arg1.AimRecoilReduction
	tbl_10_upvr.SpreadRM *= arg1.AimSpreadReduction
	tbl_10_upvr.DamageMod *= arg1.DamageMod
	tbl_10_upvr.minDamageMod *= arg1.minDamageMod
	tbl_10_upvr.MinRecoilPower *= arg1.MinRecoilPower
	tbl_10_upvr.MaxRecoilPower *= arg1.MaxRecoilPower
	tbl_10_upvr.RecoilPowerStepAmount *= arg1.RecoilPowerStepAmount
	tbl_10_upvr.MinSpread *= arg1.MinSpread
	tbl_10_upvr.MaxSpread *= arg1.MaxSpread
	tbl_10_upvr.AimInaccuracyStepAmount *= arg1.AimInaccuracyStepAmount
	tbl_10_upvr.AimInaccuracyDecrease *= arg1.AimInaccuracyDecrease
	tbl_10_upvr.WalkMult *= arg1.WalkMult
	tbl_10_upvr.MuzzleVelocity *= arg1.MuzzleVelocityMod
end
local var106_upvw
local AttModules_upvr = ACS_Engine:WaitForChild("AttModules")
local AttModels_upvr = ACS_Engine:WaitForChild("AttModels")
local var109_upvw
local var110_upvw
local var111_upvw
function loadAttachment(arg1) -- Line 572
	--[[ Upvalues[21]:
		[1]: var25_upvw (read and write)
		[2]: var106_upvw (read and write)
		[3]: AttModules_upvr (readonly)
		[4]: var52_upvw (read and write)
		[5]: AttModels_upvr (readonly)
		[6]: var53_upvw (read and write)
		[7]: tbl_10_upvr (readonly)
		[8]: module_2_upvr (readonly)
		[9]: var109_upvw (read and write)
		[10]: var55_upvw (read and write)
		[11]: var56_upvw (read and write)
		[12]: var57_upvw (read and write)
		[13]: var110_upvw (read and write)
		[14]: var58_upvw (read and write)
		[15]: var67_upvw (read and write)
		[16]: ContextActionService_upvr (readonly)
		[17]: var111_upvw (read and write)
		[18]: var59_upvw (read and write)
		[19]: var60_upvw (read and write)
		[20]: var65_upvw (read and write)
		[21]: var63_upvw (read and write)
	]]
	if arg1 and arg1:FindFirstChild("Nodes") ~= nil then
		if arg1.Nodes:FindFirstChild("Sight") ~= nil and var25_upvw.SightAtt ~= "" then
			var106_upvw = require(AttModules_upvr[var25_upvw.SightAtt])
			var52_upvw = AttModels_upvr[var25_upvw.SightAtt]:Clone()
			var52_upvw.Parent = arg1
			var52_upvw:SetPrimaryPartCFrame(arg1.Nodes.Sight.CFrame)
			arg1.AimPart.CFrame = var52_upvw.AimPos.CFrame
			var53_upvw = var52_upvw.SightMark.SurfaceGui.Border.Scope
			if 0 < var106_upvw.SightZoom then
				tbl_10_upvr.ZoomValue = var106_upvw.SightZoom
			end
			if 0 < var106_upvw.SightZoom2 then
				tbl_10_upvr.Zoom2Value = var106_upvw.SightZoom2
			end
			setMods(var106_upvw)
			for _, v in pairs(arg1:GetChildren()) do
				if v.Name == "IS" then
					v.Transparency = 1
				end
			end
			for i_2, v_2 in pairs(var52_upvw:GetChildren()) do
				if v_2:IsA("BasePart") then
					module_2_upvr.Weld(arg1:WaitForChild("Handle"), v_2)
					v_2.Anchored = false
					v_2.CanCollide = false
				end
			end
		end
		if arg1.Nodes:FindFirstChild("Barrel") ~= nil and var25_upvw.BarrelAtt ~= "" then
			v_2 = var25_upvw
			i_2 = v_2.BarrelAtt
			var109_upvw = require(AttModules_upvr[i_2])
			i_2 = var25_upvw
			var55_upvw = AttModels_upvr[i_2.BarrelAtt]:Clone()
			var55_upvw.Parent = arg1
			v_2 = arg1.Nodes
			i_2 = v_2.Barrel
			var55_upvw:SetPrimaryPartCFrame(i_2.CFrame)
			if var55_upvw:FindFirstChild("BarrelPos") ~= nil then
				i_2 = var55_upvw
				arg1.Handle.Muzzle.WorldCFrame = i_2.BarrelPos.CFrame
			end
			var56_upvw = var109_upvw.IsSuppressor
			var57_upvw = var109_upvw.IsFlashHider
			setMods(var109_upvw)
			for i_3, v_3 in pairs(var55_upvw:GetChildren()) do
				if v_3:IsA("BasePart") then
					module_2_upvr.Weld(arg1:WaitForChild("Handle"), v_3)
					v_3.Anchored = false
					v_3.CanCollide = false
				end
			end
		end
		if arg1.Nodes:FindFirstChild("UnderBarrel") ~= nil and var25_upvw.UnderBarrelAtt ~= "" then
			v_3 = var25_upvw
			i_3 = v_3.UnderBarrelAtt
			var110_upvw = require(AttModules_upvr[i_3])
			i_3 = var25_upvw
			var58_upvw = AttModels_upvr[i_3.UnderBarrelAtt]:Clone()
			var58_upvw.Parent = arg1
			v_3 = arg1.Nodes
			i_3 = v_3.UnderBarrel
			var58_upvw:SetPrimaryPartCFrame(i_3.CFrame)
			setMods(var110_upvw)
			var67_upvw = var110_upvw.IsBipod
			if var67_upvw then
				i_3 = handleAction
				v_3 = true
				ContextActionService_upvr:BindAction("ToggleBipod", i_3, v_3, Enum.KeyCode.B)
			end
			for i_4, v_4 in pairs(var58_upvw:GetChildren()) do
				if v_4:IsA("BasePart") then
					module_2_upvr.Weld(arg1:WaitForChild("Handle"), v_4)
					v_4.Anchored = false
					v_4.CanCollide = false
				end
			end
		end
		if arg1.Nodes:FindFirstChild("Other") ~= nil and var25_upvw.OtherAtt ~= "" then
			v_4 = var25_upvw
			i_4 = v_4.OtherAtt
			var111_upvw = require(AttModules_upvr[i_4])
			i_4 = var25_upvw
			var59_upvw = AttModels_upvr[i_4.OtherAtt]:Clone()
			var59_upvw.Parent = arg1
			v_4 = arg1.Nodes
			i_4 = v_4.Other
			var59_upvw:SetPrimaryPartCFrame(i_4.CFrame)
			setMods(var111_upvw)
			var60_upvw = var111_upvw.EnableLaser
			var65_upvw = var111_upvw.EnableFlashlight
			if var111_upvw.InfraRed then
				var63_upvw = true
			end
			for _, v_5 in pairs(var59_upvw:GetChildren()) do
				if v_5:IsA("BasePart") then
					module_2_upvr.Weld(arg1:WaitForChild("Handle"), v_5)
					v_5.Anchored = false
					v_5.CanCollide = false
				end
			end
		end
	end
end
function SetLaser() -- Line 693
	--[[ Upvalues[8]:
		[1]: module_3_upvr (readonly)
		[2]: var63_upvw (read and write)
		[3]: var61_upvw (read and write)
		[4]: var62_upvw (read and write)
		[5]: var64_upvw (read and write)
		[6]: var23_upvw (read and write)
		[7]: Events_upvr (readonly)
		[8]: var24_upvw (read and write)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 48 start (CF ANALYSIS FAILED)
	if module_3_upvr.RealisticLaser and var63_upvw then
		if not var61_upvw and not var62_upvw then
			var61_upvw = true
			var62_upvw = true
		elseif var61_upvw and var62_upvw then
			var62_upvw = false
		else
			var61_upvw = false
			var62_upvw = false
		end
	else
		var61_upvw = not var61_upvw
	end
	print(var61_upvw, var62_upvw)
	-- KONSTANTERROR: [0] 1. Error Block 48 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [137] 105. Error Block 39 start (CF ANALYSIS FAILED)
	local _, _, _ = pairs(var23_upvw:GetDescendants())
	-- KONSTANTERROR: [137] 105. Error Block 39 end (CF ANALYSIS FAILED)
end
function SetTorch() -- Line 761
	--[[ Upvalues[4]:
		[1]: var66_upvw (read and write)
		[2]: var23_upvw (read and write)
		[3]: Events_upvr (readonly)
		[4]: var24_upvw (read and write)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	var66_upvw = not var66_upvw
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [5] 6. Error Block 27 start (CF ANALYSIS FAILED)
	for _, v_6 in pairs(var23_upvw:GetDescendants()) do
		if v_6:IsA("BasePart") and v_6.Name == "FlashPoint" then
			v_6.Light.Enabled = true
		end
	end
	Events_upvr.SVFlash:FireServer(var24_upvw, var66_upvw)
	var23_upvw.Handle.Click:play()
	UpdateGui()
	-- KONSTANTERROR: [5] 6. Error Block 27 end (CF ANALYSIS FAILED)
end
function ADS(arg1) -- Line 783
	--[[ Upvalues[9]:
		[1]: var25_upvw (read and write)
		[2]: var23_upvw (read and write)
		[3]: var51_upvw (read and write)
		[4]: var48_upvw (read and write)
		[5]: var49_upvw (read and write)
		[6]: Events_upvr (readonly)
		[7]: var26_upvw (read and write)
		[8]: TweenService_upvr (readonly)
		[9]: Crosshair_upvr (readonly)
	]]
	if var25_upvw and var23_upvw and var51_upvw == 0 then
		if arg1 then
			if var48_upvw then
				var48_upvw = false
				var49_upvw = 0
				IdleAnim()
				UpdateGui()
			end
			game:GetService("UserInputService").MouseDeltaSensitivity = 0.6
			var23_upvw.Handle.AimDown:Play()
			var49_upvw = 2
			Events_upvr.GunStance:FireServer(var49_upvw, var26_upvw)
			TweenService_upvr:Create(Crosshair_upvr.Up, TweenInfo.new(0.2, Enum.EasingStyle.Linear), {
				BackgroundTransparency = 1;
			}):Play()
			TweenService_upvr:Create(Crosshair_upvr.Down, TweenInfo.new(0.2, Enum.EasingStyle.Linear), {
				BackgroundTransparency = 1;
			}):Play()
			TweenService_upvr:Create(Crosshair_upvr.Left, TweenInfo.new(0.2, Enum.EasingStyle.Linear), {
				BackgroundTransparency = 1;
			}):Play()
			TweenService_upvr:Create(Crosshair_upvr.Right, TweenInfo.new(0.2, Enum.EasingStyle.Linear), {
				BackgroundTransparency = 1;
			}):Play()
			TweenService_upvr:Create(Crosshair_upvr.Center, TweenInfo.new(0.2, Enum.EasingStyle.Linear), {
				ImageTransparency = 1;
			}):Play()
			return
		end
		game:GetService("UserInputService").MouseDeltaSensitivity = 1
		var23_upvw.Handle.AimUp:Play()
		var49_upvw = 0
		Events_upvr.GunStance:FireServer(var49_upvw, var26_upvw)
		if var25_upvw.CrossHair then
			TweenService_upvr:Create(Crosshair_upvr.Up, TweenInfo.new(0.2, Enum.EasingStyle.Linear), {
				BackgroundTransparency = 0;
			}):Play()
			TweenService_upvr:Create(Crosshair_upvr.Down, TweenInfo.new(0.2, Enum.EasingStyle.Linear), {
				BackgroundTransparency = 0;
			}):Play()
			TweenService_upvr:Create(Crosshair_upvr.Left, TweenInfo.new(0.2, Enum.EasingStyle.Linear), {
				BackgroundTransparency = 0;
			}):Play()
			TweenService_upvr:Create(Crosshair_upvr.Right, TweenInfo.new(0.2, Enum.EasingStyle.Linear), {
				BackgroundTransparency = 0;
			}):Play()
		end
		if var25_upvw.CenterDot then
			TweenService_upvr:Create(Crosshair_upvr.Center, TweenInfo.new(0.2, Enum.EasingStyle.Linear), {
				ImageTransparency = 0;
			}):Play()
			return
		end
		TweenService_upvr:Create(Crosshair_upvr.Center, TweenInfo.new(0.2, Enum.EasingStyle.Linear), {
			ImageTransparency = 1;
		}):Play()
	end
end
function SetAimpart() -- Line 831
	--[[ Upvalues[4]:
		[1]: var42_upvw (read and write)
		[2]: var50_upvw (read and write)
		[3]: var23_upvw (read and write)
		[4]: var54_upvw (read and write)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [5] 5. Error Block 3 start (CF ANALYSIS FAILED)
	var50_upvw = 2
	-- KONSTANTERROR: [5] 5. Error Block 3 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [20] 18. Error Block 5 start (CF ANALYSIS FAILED)
	var50_upvw = 1
	var54_upvw = var23_upvw:FindFirstChild("AimPart")
	-- KONSTANTERROR: [20] 18. Error Block 5 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [28] 25. Error Block 6 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [28] 25. Error Block 6 end (CF ANALYSIS FAILED)
end
function CantedSight() -- Line 846
	--[[ Upvalues[7]:
		[1]: var72_upvw (read and write)
		[2]: var42_upvw (read and write)
		[3]: var44_upvw (read and write)
		[4]: var46_upvw (read and write)
		[5]: var25_upvw (read and write)
		[6]: var49_upvw (read and write)
		[7]: var51_upvw (read and write)
	]]
	if var72_upvw and not CheckingMag and not var42_upvw and not var44_upvw and var46_upvw and var25_upvw.Type == "Gun" and var49_upvw == 0 then
		if var51_upvw == 0 then
			CantedSightAnim()
			var51_upvw = 1
			return
		end
		IdleAnim()
		var51_upvw = 0
	end
end
function Firemode() -- Line 858
	--[[ Upvalues[3]:
		[1]: var23_upvw (read and write)
		[2]: var45_upvw (read and write)
		[3]: var25_upvw (read and write)
	]]
	var23_upvw.Handle.SafetyClick:Play()
	var45_upvw = false
	if var25_upvw.ShootType == 1 and var25_upvw.FireModes.Burst == true then
		var25_upvw.ShootType = 2
	elseif var25_upvw.ShootType == 1 and var25_upvw.FireModes.Burst == false and var25_upvw.FireModes.Auto == true then
		var25_upvw.ShootType = 3
	elseif var25_upvw.ShootType == 2 and var25_upvw.FireModes.Auto == true then
		var25_upvw.ShootType = 3
	elseif var25_upvw.ShootType == 2 and var25_upvw.FireModes.Semi == true and var25_upvw.FireModes.Auto == false then
		var25_upvw.ShootType = 1
	elseif var25_upvw.ShootType == 3 and var25_upvw.FireModes.Semi == true then
		var25_upvw.ShootType = 1
	elseif var25_upvw.ShootType == 3 and var25_upvw.FireModes.Semi == false and var25_upvw.FireModes.Burst == true then
		var25_upvw.ShootType = 2
	end
	UpdateGui()
end
local GunModels_upvr = ACS_Engine:WaitForChild("GunModels")
local ArmModel_upvr = ACS_Engine:WaitForChild("ArmModel")
local zero_cframe_upvw_7 = CFrame.new()
local zero_cframe_upvw_5 = CFrame.new()
function setup(arg1) -- Line 884
	--[[ Upvalues[37]:
		[1]: var1_upvr (readonly)
		[2]: var72_upvw (read and write)
		[3]: UserInputService_upvr (readonly)
		[4]: LocalPlayer_upvr (readonly)
		[5]: var24_upvw (read and write)
		[6]: var25_upvw (read and write)
		[7]: var26_upvw (read and write)
		[8]: var23_upvw (read and write)
		[9]: GunModels_upvr (readonly)
		[10]: Events_upvr (readonly)
		[11]: var27_upvw (read and write)
		[12]: ArmModel_upvr (readonly)
		[13]: var28_upvw (read and write)
		[14]: var31_upvw (read and write)
		[15]: var32_upvw (read and write)
		[16]: var33_upvw (read and write)
		[17]: CurrentCamera_upvr (readonly)
		[18]: zero_cframe_upvw_3 (read and write)
		[19]: zero_cframe_upvw (read and write)
		[20]: zero_cframe_upvw_7 (read and write)
		[21]: zero_cframe_upvw_5 (read and write)
		[22]: TweenService_upvr (readonly)
		[23]: Crosshair_upvr (readonly)
		[24]: var29_upvw (read and write)
		[25]: var30_upvw (read and write)
		[26]: tbl_10_upvr (readonly)
		[27]: var63_upvw (read and write)
		[28]: ContextActionService_upvr (readonly)
		[29]: var35_upvw (read and write)
		[30]: var36_upvw (read and write)
		[31]: var21_upvw (read and write)
		[32]: var22_upvw (read and write)
		[33]: var54_upvw (read and write)
		[34]: var65_upvw (read and write)
		[35]: var60_upvw (read and write)
		[36]: clone_2_upvw (read and write)
		[37]: module_2_upvr (readonly)
	]]
	if var1_upvr and 0 < var1_upvr:WaitForChild("Humanoid").Health and arg1 ~= nil then
		var72_upvw = true
		UserInputService_upvr.MouseIconEnabled = false
		LocalPlayer_upvr.CameraMode = Enum.CameraMode.LockFirstPerson
		var24_upvw = arg1
		var25_upvw = require(arg1:WaitForChild("ACS_Settings"))
		var26_upvw = require(arg1:WaitForChild("ACS_Animations"))
		var23_upvw = GunModels_upvr:WaitForChild(arg1.Name):Clone()
		var23_upvw.PrimaryPart = var23_upvw:WaitForChild("Handle")
		Events_upvr.Equip:FireServer(arg1, 1, var25_upvw, var26_upvw)
		var27_upvw = ArmModel_upvr:WaitForChild("Arms"):Clone()
		var27_upvw.Name = "Viewmodel"
		if var1_upvr:FindFirstChild("Body Colors") ~= nil then
			var1_upvr:WaitForChild("Body Colors"):Clone().Parent = var27_upvw
		end
		if var1_upvr:FindFirstChild("Shirt") ~= nil then
			var1_upvr:FindFirstChild("Shirt"):Clone().Parent = var27_upvw
		end
		var28_upvw = Instance.new("Part", var27_upvw)
		var28_upvw.Size = Vector3.new(0.10000, 0.10000, 0.10000)
		var28_upvw.Anchored = true
		var28_upvw.CanCollide = false
		var28_upvw.Transparency = 1
		var27_upvw.PrimaryPart = var28_upvw
		var31_upvw = Instance.new("Motor6D", var28_upvw)
		var31_upvw.Name = "LeftArm"
		var31_upvw.Part0 = var28_upvw
		var32_upvw = Instance.new("Motor6D", var28_upvw)
		var32_upvw.Name = "RightArm"
		var32_upvw.Part0 = var28_upvw
		var33_upvw = Instance.new("Motor6D", var28_upvw)
		var33_upvw.Name = "Handle"
		var27_upvw.Parent = CurrentCamera_upvr
		zero_cframe_upvw_3 = var26_upvw.MainCFrame
		zero_cframe_upvw = var26_upvw.GunCFrame
		zero_cframe_upvw_7 = var26_upvw.LArmCFrame
		zero_cframe_upvw_5 = var26_upvw.RArmCFrame
		if var25_upvw.CrossHair then
			TweenService_upvr:Create(Crosshair_upvr.Up, TweenInfo.new(0.2, Enum.EasingStyle.Linear), {
				BackgroundTransparency = 0;
			}):Play()
			TweenService_upvr:Create(Crosshair_upvr.Down, TweenInfo.new(0.2, Enum.EasingStyle.Linear), {
				BackgroundTransparency = 0;
			}):Play()
			TweenService_upvr:Create(Crosshair_upvr.Left, TweenInfo.new(0.2, Enum.EasingStyle.Linear), {
				BackgroundTransparency = 0;
			}):Play()
			TweenService_upvr:Create(Crosshair_upvr.Right, TweenInfo.new(0.2, Enum.EasingStyle.Linear), {
				BackgroundTransparency = 0;
			}):Play()
			if 1 < var25_upvw.Bullets then
				Crosshair_upvr.Up.Rotation = 90
				Crosshair_upvr.Down.Rotation = 90
				Crosshair_upvr.Left.Rotation = 90
				Crosshair_upvr.Right.Rotation = 90
			else
				Crosshair_upvr.Up.Rotation = 0
				Crosshair_upvr.Down.Rotation = 0
				Crosshair_upvr.Left.Rotation = 0
				Crosshair_upvr.Right.Rotation = 0
			end
		else
			TweenService_upvr:Create(Crosshair_upvr.Up, TweenInfo.new(0.2, Enum.EasingStyle.Linear), {
				BackgroundTransparency = 1;
			}):Play()
			TweenService_upvr:Create(Crosshair_upvr.Down, TweenInfo.new(0.2, Enum.EasingStyle.Linear), {
				BackgroundTransparency = 1;
			}):Play()
			TweenService_upvr:Create(Crosshair_upvr.Left, TweenInfo.new(0.2, Enum.EasingStyle.Linear), {
				BackgroundTransparency = 1;
			}):Play()
			TweenService_upvr:Create(Crosshair_upvr.Right, TweenInfo.new(0.2, Enum.EasingStyle.Linear), {
				BackgroundTransparency = 1;
			}):Play()
		end
		if var25_upvw.CenterDot then
			TweenService_upvr:Create(Crosshair_upvr.Center, TweenInfo.new(0.2, Enum.EasingStyle.Linear), {
				ImageTransparency = 0;
			}):Play()
		else
			TweenService_upvr:Create(Crosshair_upvr.Center, TweenInfo.new(0.2, Enum.EasingStyle.Linear), {
				ImageTransparency = 1;
			}):Play()
		end
		var29_upvw = var27_upvw:WaitForChild("Left Arm")
		var29_upvw.CastShadow = false
		var31_upvw.Part1 = var29_upvw
		var31_upvw.C0 = CFrame.new()
		var31_upvw.C1 = CFrame.new(1, -1, -5) * CFrame.Angles(0, 0, 0):inverse()
		var30_upvw = var27_upvw:WaitForChild("Right Arm")
		var30_upvw.CastShadow = false
		var32_upvw.Part1 = var30_upvw
		var32_upvw.C0 = CFrame.new()
		var32_upvw.C1 = CFrame.new(-1, -1, -5) * CFrame.Angles(0, 0, 0):inverse()
		var33_upvw.Part0 = var30_upvw
		var29_upvw.Anchored = false
		var30_upvw.Anchored = false
		tbl_10_upvr.ZoomValue = var25_upvw.Zoom
		tbl_10_upvr.Zoom2Value = var25_upvw.Zoom2
		var63_upvw = var25_upvw.InfraRed
		ContextActionService_upvr:BindAction("Fire", handleAction, false, Enum.UserInputType.MouseButton1, Enum.KeyCode.ButtonR2)
		ContextActionService_upvr:SetPosition("Fire", UDim2.new(0, 84, 0, 36))
		ContextActionService_upvr:SetTitle("Fire", "Fire")
		ContextActionService_upvr:SetImage("Fire", "rbxassetid://17052374731")
		local any_GetButton_result1_7 = ContextActionService_upvr:GetButton("Fire")
		if any_GetButton_result1_7 then
			any_GetButton_result1_7.ImageColor3 = Color3.fromRGB(170, 85, 0)
			any_GetButton_result1_7.ImageTransparency = 0.5
		end
		ContextActionService_upvr:BindAction("ADS", handleAction, false, Enum.UserInputType.MouseButton2, Enum.KeyCode.ButtonL2)
		ContextActionService_upvr:SetPosition("ADS", UDim2.new(0, 157, 0, 36))
		ContextActionService_upvr:SetTitle("ADS", "Scope")
		ContextActionService_upvr:SetImage("ADS", "rbxassetid://17052695030")
		local any_GetButton_result1 = ContextActionService_upvr:GetButton("ADS")
		if any_GetButton_result1 then
			any_GetButton_result1.ImageColor3 = Color3.fromRGB(170, 85, 255)
			any_GetButton_result1.ImageTransparency = 0.5
		end
		ContextActionService_upvr:BindAction("Reload", handleAction, false, Enum.KeyCode.R, Enum.KeyCode.ButtonB)
		ContextActionService_upvr:SetPosition("Reload", UDim2.new(0, 58, 0, 92))
		ContextActionService_upvr:SetTitle("Reload", "Reload")
		ContextActionService_upvr:SetImage("Reload", "rbxassetid://17052535666")
		local any_GetButton_result1_2 = ContextActionService_upvr:GetButton("Reload")
		if any_GetButton_result1_2 then
			any_GetButton_result1_2.ImageColor3 = Color3.fromRGB(255, 255, 0)
			any_GetButton_result1_2.ImageTransparency = 0.5
		end
		ContextActionService_upvr:BindAction("CycleAimpart", handleAction, false, Enum.KeyCode.K)
		ContextActionService_upvr:BindAction("CycleLaser", handleAction, false, Enum.KeyCode.Z, Enum.KeyCode.ButtonY)
		ContextActionService_upvr:SetPosition("CycleLaser", UDim2.new(0, -560, 0, -39))
		ContextActionService_upvr:SetTitle("CycleLaser", "Laser")
		ContextActionService_upvr:SetImage("CycleLaser", "rbxassetid://17052766160")
		local any_GetButton_result1_8 = ContextActionService_upvr:GetButton("CycleLaser")
		if any_GetButton_result1_8 then
			any_GetButton_result1_8.ImageColor3 = Color3.fromRGB(255, 0, 0)
			any_GetButton_result1_8.ImageTransparency = 0.5
		end
		ContextActionService_upvr:BindAction("CycleLight", handleAction, false, Enum.KeyCode.V, Enum.KeyCode.ButtonX)
		ContextActionService_upvr:SetPosition("CycleLight", UDim2.new(0, -560, 0, -105))
		ContextActionService_upvr:SetTitle("CycleLight", "Flashlight")
		ContextActionService_upvr:SetImage("CycleLight", "rbxassetid://17052855432")
		local any_GetButton_result1_9 = ContextActionService_upvr:GetButton("CycleLight")
		if any_GetButton_result1_9 then
			any_GetButton_result1_9.ImageColor3 = Color3.fromRGB(255, 255, 255)
			any_GetButton_result1_9.ImageTransparency = 0.5
		end
		ContextActionService_upvr:BindAction("CycleFiremode", handleAction, false, Enum.KeyCode.X)
		ContextActionService_upvr:BindAction("CheckMag", handleAction, false, Enum.KeyCode.M)
		ContextActionService_upvr:BindAction("ZeroDown", handleAction, false, Enum.KeyCode.World90)
		ContextActionService_upvr:BindAction("ZeroUp", handleAction, false, Enum.KeyCode.World90)
		ContextActionService_upvr:BindAction("CantedSight", handleAction, false, Enum.KeyCode.C)
		loadAttachment(var23_upvw)
		var35_upvw = math.min(var25_upvw.MinSpread * tbl_10_upvr.MinSpread, var25_upvw.MaxSpread * tbl_10_upvr.MaxSpread)
		var36_upvw = math.min(var25_upvw.MinRecoilPower * tbl_10_upvr.MinRecoilPower, var25_upvw.MaxRecoilPower * tbl_10_upvr.MaxRecoilPower)
		var21_upvw = var25_upvw.AmmoInGun
		var22_upvw = var25_upvw.StoredAmmo
		var54_upvw = var23_upvw:FindFirstChild("AimPart")
		for _, v_7 in pairs(var23_upvw:GetDescendants()) do
			if v_7:IsA("BasePart") and v_7.Name == "FlashPoint" then
				var65_upvw = true
			end
			if v_7:IsA("BasePart") and v_7.Name == "LaserPoint" then
				var60_upvw = true
			end
		end
		if var25_upvw.EnableHUD then
			clone_2_upvw.GunHUD.Visible = true
		end
		UpdateGui()
		for _, v_8 in pairs(var23_upvw:GetChildren()) do
			if v_8:IsA("BasePart") and v_8.Name ~= "Handle" then
				if v_8.Name ~= "Bolt" and v_8.Name ~= "Lid" and v_8.Name ~= "Slide" then
					module_2_upvr.Weld(var23_upvw:WaitForChild("Handle"), v_8)
				end
				if v_8.Name == "Bolt" or v_8.Name == "Slide" then
					module_2_upvr.WeldComplex(var23_upvw:WaitForChild("Handle"), v_8, v_8.Name)
				end
				if v_8.Name == "Lid" then
					if var23_upvw:FindFirstChild("LidHinge") then
						module_2_upvr.Weld(v_8, var23_upvw:WaitForChild("LidHinge"))
					else
						module_2_upvr.Weld(v_8, var23_upvw:WaitForChild("Handle"))
					end
				end
			end
		end
		for _, v_9 in pairs(var23_upvw:GetChildren()) do
			if v_9:IsA("BasePart") then
				v_9.Anchored = false
				v_9.CanCollide = false
			end
		end
		if var23_upvw:FindFirstChild("Nodes") then
			for _, v_10 in pairs(var23_upvw.Nodes:GetChildren()) do
				if v_10:IsA("BasePart") then
					module_2_upvr.Weld(var23_upvw:WaitForChild("Handle"), v_10)
					v_10.Anchored = false
					v_10.CanCollide = false
				end
			end
		end
		var33_upvw.Part1 = var23_upvw:WaitForChild("Handle")
		var33_upvw.C1 = zero_cframe_upvw
		var23_upvw.Parent = var27_upvw
		if var21_upvw <= 0 and var25_upvw.Type == "Gun" then
			var23_upvw.Handle.Slide.C0 = var25_upvw.SlideEx:inverse()
		end
		EquipAnim()
		if var25_upvw and var25_upvw.Type ~= "Grenade" then
			RunCheck()
		end
	end
end
local var195_upvw = 0
function unset() -- Line 1152
	--[[ Upvalues[52]:
		[1]: var72_upvw (read and write)
		[2]: Events_upvr (readonly)
		[3]: var24_upvw (read and write)
		[4]: ContextActionService_upvr (readonly)
		[5]: var51_upvw (read and write)
		[6]: var45_upvw (read and write)
		[7]: var42_upvw (read and write)
		[8]: TweenService_upvr (readonly)
		[9]: CurrentCamera_upvr (readonly)
		[10]: TweenInfo_new_result1_upvr (readonly)
		[11]: Crosshair_upvr (readonly)
		[12]: UserInputService_upvr (readonly)
		[13]: LocalPlayer_upvr (readonly)
		[14]: var23_upvw (read and write)
		[15]: var25_upvw (read and write)
		[16]: var21_upvw (read and write)
		[17]: var22_upvw (read and write)
		[18]: var27_upvw (read and write)
		[19]: var29_upvw (read and write)
		[20]: var30_upvw (read and write)
		[21]: var31_upvw (read and write)
		[22]: var32_upvw (read and write)
		[23]: var26_upvw (read and write)
		[24]: var52_upvw (read and write)
		[25]: var53_upvw (read and write)
		[26]: var55_upvw (read and write)
		[27]: var58_upvw (read and write)
		[28]: var59_upvw (read and write)
		[29]: var60_upvw (read and write)
		[30]: var61_upvw (read and write)
		[31]: var62_upvw (read and write)
		[32]: var65_upvw (read and write)
		[33]: var66_upvw (read and write)
		[34]: var67_upvw (read and write)
		[35]: var69_upvw (read and write)
		[36]: var195_upvw (read and write)
		[37]: var64_upvw (read and write)
		[38]: var35_upvw (read and write)
		[39]: var36_upvw (read and write)
		[40]: var56_upvw (read and write)
		[41]: var57_upvw (read and write)
		[42]: var47_upvw (read and write)
		[43]: var44_upvw (read and write)
		[44]: var48_upvw (read and write)
		[45]: var70_upvw (read and write)
		[46]: var71_upvw (read and write)
		[47]: var49_upvw (read and write)
		[48]: var34_upvw (read and write)
		[49]: var50_upvw (read and write)
		[50]: clone_2_upvw (read and write)
		[51]: zero_cframe_upvw_2 (read and write)
		[52]: module_3_upvr (readonly)
	]]
	var72_upvw = false
	Events_upvr.Equip:FireServer(var24_upvw, 2)
	ContextActionService_upvr:UnbindAction("Fire")
	ContextActionService_upvr:UnbindAction("ADS")
	ContextActionService_upvr:UnbindAction("Reload")
	ContextActionService_upvr:UnbindAction("CycleLaser")
	ContextActionService_upvr:UnbindAction("CycleLight")
	ContextActionService_upvr:UnbindAction("CycleFiremode")
	ContextActionService_upvr:UnbindAction("CycleAimpart")
	ContextActionService_upvr:UnbindAction("ZeroUp")
	ContextActionService_upvr:UnbindAction("ZeroDown")
	ContextActionService_upvr:UnbindAction("CheckMag")
	ContextActionService_upvr:UnbindAction("CantedSight")
	var51_upvw = 0
	var45_upvw = false
	var42_upvw = false
	TweenService_upvr:Create(CurrentCamera_upvr, TweenInfo_new_result1_upvr, {
		FieldOfView = 70;
	}):Play()
	TweenService_upvr:Create(Crosshair_upvr.Up, TweenInfo.new(0.2, Enum.EasingStyle.Linear), {
		BackgroundTransparency = 1;
	}):Play()
	TweenService_upvr:Create(Crosshair_upvr.Down, TweenInfo.new(0.2, Enum.EasingStyle.Linear), {
		BackgroundTransparency = 1;
	}):Play()
	TweenService_upvr:Create(Crosshair_upvr.Left, TweenInfo.new(0.2, Enum.EasingStyle.Linear), {
		BackgroundTransparency = 1;
	}):Play()
	TweenService_upvr:Create(Crosshair_upvr.Right, TweenInfo.new(0.2, Enum.EasingStyle.Linear), {
		BackgroundTransparency = 1;
	}):Play()
	TweenService_upvr:Create(Crosshair_upvr.Center, TweenInfo.new(0.2, Enum.EasingStyle.Linear), {
		ImageTransparency = 1;
	}):Play()
	UserInputService_upvr.MouseIconEnabled = true
	game:GetService("UserInputService").MouseDeltaSensitivity = 1
	CurrentCamera_upvr.CameraType = Enum.CameraType.Custom
	LocalPlayer_upvr.CameraMode = Enum.CameraMode.Classic
	if var23_upvw then
		var25_upvw.AmmoInGun = var21_upvw
		var25_upvw.StoredAmmo = var22_upvw
		var27_upvw:Destroy()
		var27_upvw = nil
		var23_upvw = nil
		var24_upvw = nil
		var29_upvw = nil
		var30_upvw = nil
		var31_upvw = nil
		var32_upvw = nil
		var25_upvw = nil
		var26_upvw = nil
		var52_upvw = nil
		var53_upvw = nil
		var55_upvw = nil
		var58_upvw = nil
		var59_upvw = nil
		var60_upvw = false
		var61_upvw = false
		var62_upvw = false
		var65_upvw = false
		var66_upvw = false
		var67_upvw = false
		var69_upvw = false
		var195_upvw = 0
		var64_upvw = nil
		var35_upvw = nil
		var36_upvw = nil
		var56_upvw = false
		var57_upvw = false
		var47_upvw = false
		var44_upvw = false
		var48_upvw = false
		CheckingMag = false -- Setting global
		var70_upvw = false
		var71_upvw = false
		var49_upvw = 0
		resetMods()
		var34_upvw = 1
		var50_upvw = 1
		clone_2_upvw.GunHUD.Visible = false
		clone_2_upvw.GrenadeForce.Visible = false
		zero_cframe_upvw_2 = CFrame.new()
		if module_3_upvr.ReplicatedLaser then
			Events_upvr.SVLaser:FireServer(nil, 2, nil, false, var24_upvw)
		end
	end
end
local var208_upvw = false
local new_upvr = CFrame.new
local Y_upvr = Neck_upvr.C0.Y
local Angles_upvr = CFrame.Angles
local asin_upvr = math.asin
function HeadMovement() -- Line 1239
	--[[ Upvalues[10]:
		[1]: var1_upvr (readonly)
		[2]: CurrentCamera_upvr (readonly)
		[3]: Neck_upvr (readonly)
		[4]: var208_upvw (read and write)
		[5]: new_upvr (readonly)
		[6]: Y_upvr (readonly)
		[7]: Angles_upvr (readonly)
		[8]: asin_upvr (readonly)
		[9]: TweenService_upvr (readonly)
		[10]: Events_upvr (readonly)
	]]
	if 0 < var1_upvr.Humanoid.Health then
		local lookVector = var1_upvr.HumanoidRootPart.CFrame:toObjectSpace(CurrentCamera_upvr.CFrame).lookVector
		if Neck_upvr and var1_upvr.Humanoid.RigType == Enum.HumanoidRigType.R15 and 0 < var1_upvr.Humanoid.Health and var1_upvr.Humanoid.PlatformStand == false then
			var208_upvw = not var208_upvw
			local var216 = new_upvr(0, Y_upvr, 0) * Angles_upvr(-asin_upvr(var1_upvr.UpperTorso.CFrame.lookVector.Y), -asin_upvr(lookVector.X / 1.15), 0) * Angles_upvr(asin_upvr(lookVector.Y), 0, 0)
			TweenService_upvr:Create(Neck_upvr, TweenInfo.new(0.2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), {
				C0 = var216;
			}):Play()
			if var208_upvw then
				Events_upvr.HeadRot:FireServer(var216)
			end
		end
	end
end
function renderCam() -- Line 1255
	--[[ Upvalues[2]:
		[1]: CurrentCamera_upvr (readonly)
		[2]: any_new_result1_upvr (readonly)
	]]
	CurrentCamera_upvr.CFrame *= CFrame.Angles(any_new_result1_upvr.p.x, any_new_result1_upvr.p.y, any_new_result1_upvr.p.z)
end
function renderGunRecoil() -- Line 1259
	--[[ Upvalues[2]:
		[1]: zero_cframe_upvw_6 (read and write)
		[2]: any_new_result1_upvr_3 (readonly)
	]]
	zero_cframe_upvw_6 *= CFrame.Angles(any_new_result1_upvr_3.p.x, any_new_result1_upvr_3.p.y, any_new_result1_upvr_3.p.z)
end
function Recoil() -- Line 1263
	--[[ Upvalues[9]:
		[1]: var25_upvw (read and write)
		[2]: tbl_10_upvr (readonly)
		[3]: var69_upvw (read and write)
		[4]: any_new_result1_upvr (readonly)
		[5]: var42_upvw (read and write)
		[6]: any_new_result1_upvr_3 (readonly)
		[7]: var36_upvw (read and write)
		[8]: zero_cframe_upvw_6 (read and write)
		[9]: module_upvr (readonly)
	]]
	local radians = math.rad(math.random(var25_upvw.camRecoil.camRecoilUp[1], var25_upvw.camRecoil.camRecoilUp[2]) / 2 * tbl_10_upvr.camRecoilMod.RecoilUp * RAND(1, 1, 0.1))
	local radians_2 = math.rad(math.random(-(math.random(var25_upvw.camRecoil.camRecoilRight[1], var25_upvw.camRecoil.camRecoilRight[2]) * tbl_10_upvr.camRecoilMod.RecoilRight), math.random(var25_upvw.camRecoil.camRecoilLeft[1], var25_upvw.camRecoil.camRecoilLeft[2]) * tbl_10_upvr.camRecoilMod.RecoilLeft) / 2 * RAND(-1, 1, 0.1))
	local var220 = math.random(var25_upvw.gunRecoil.gunRecoilUp[1], var25_upvw.gunRecoil.gunRecoilUp[2]) / 10 * tbl_10_upvr.gunRecoilMod.RecoilUp
	local var221 = math.random(-1, 1) * math.random(var25_upvw.gunRecoil.gunRecoilTilt[1], var25_upvw.gunRecoil.gunRecoilTilt[2]) / 10 * tbl_10_upvr.gunRecoilMod.RecoilTilt
	local var222 = math.random(-(math.random(var25_upvw.gunRecoil.gunRecoilRight[1], var25_upvw.gunRecoil.gunRecoilRight[2]) * tbl_10_upvr.gunRecoilMod.RecoilRight), math.random(var25_upvw.gunRecoil.gunRecoilLeft[1], var25_upvw.gunRecoil.gunRecoilLeft[2]) * tbl_10_upvr.gunRecoilMod.RecoilLeft) / 10
	local var223 = var25_upvw.AimRecoilReduction * tbl_10_upvr.AimRM
	if var69_upvw then
		any_new_result1_upvr:accelerate(Vector3.new(radians, radians_2 / 2, 0))
		if not var42_upvw then
			any_new_result1_upvr_3:accelerate(Vector3.new(math.rad(0.25 * var220 * var36_upvw), math.rad(0.25 * var222 * var36_upvw), math.rad(0.25 * var221)))
			zero_cframe_upvw_6 = zero_cframe_upvw_6 * CFrame.new(0, 0, 0.1) * CFrame.Angles(math.rad(0.25 * var220 * var36_upvw), math.rad(0.25 * var222 * var36_upvw), math.rad(0.25 * var221 * var36_upvw))
		else
			any_new_result1_upvr_3:accelerate(Vector3.new(math.rad(0.25 * var220 * var36_upvw / var223), math.rad(0.25 * var222 * var36_upvw / var223), math.rad(0.25 * var221 / var223)))
			zero_cframe_upvw_6 = zero_cframe_upvw_6 * CFrame.new(0, 0, 0.1) * CFrame.Angles(math.rad(0.25 * var220 * var36_upvw / var223), math.rad(0.25 * var222 * var36_upvw / var223), math.rad(0.25 * var221 * var36_upvw / var223))
		end
		module_upvr:Wait(0.05)
		any_new_result1_upvr:accelerate(Vector3.new(-radians, -radians_2 / 2, 0))
	else
		any_new_result1_upvr:accelerate(Vector3.new(radians, radians_2, math.rad(math.random(var25_upvw.camRecoil.camRecoilTilt[1], var25_upvw.camRecoil.camRecoilTilt[2]) / 2 * tbl_10_upvr.camRecoilMod.RecoilTilt * RAND(-1, 1, 0.1))))
		if not var42_upvw then
			any_new_result1_upvr_3:accelerate(Vector3.new(math.rad(var220 * var36_upvw), math.rad(var222 * var36_upvw), math.rad(var221)))
			zero_cframe_upvw_6 = zero_cframe_upvw_6 * CFrame.new(0, -0.05, 0.1) * CFrame.Angles(math.rad(var220 * var36_upvw), math.rad(var222 * var36_upvw), math.rad(var221 * var36_upvw))
			return
		end
		any_new_result1_upvr_3:accelerate(Vector3.new(math.rad(var220 * var36_upvw / var223), math.rad(var222 * var36_upvw / var223), math.rad(var221 / var223)))
		zero_cframe_upvw_6 = zero_cframe_upvw_6 * CFrame.new(0, 0, 0.1) * CFrame.Angles(math.rad(var220 * var36_upvw / var223), math.rad(var222 * var36_upvw / var223), math.rad(var221 * var36_upvw / var223))
	end
end
function CheckForHumanoid(arg1) -- Line 1311
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [35] 27. Error Block 7 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [35] 27. Error Block 7 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [54] 40. Error Block 9 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [54] 40. Error Block 9 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [55] 41. Error Block 10 start (CF ANALYSIS FAILED)
	do
		return false, nil
	end
	-- KONSTANTERROR: [55] 41. Error Block 10 end (CF ANALYSIS FAILED)
end
function CastRay(arg1, arg2, arg3) -- Line 1329
	--[[ Upvalues[11]:
		[1]: CurrentCamera_upvr (readonly)
		[2]: tbl_3_upvr (readonly)
		[3]: RunService_upvr (readonly)
		[4]: LocalPlayer_upvr (readonly)
		[5]: Events_upvr (readonly)
		[6]: ReplicatedStorage_upvr (readonly)
		[7]: module_5_upvr (readonly)
		[8]: var25_upvw (read and write)
		[9]: any_InvokeServer_result1_upvr (readonly)
		[10]: var24_upvw (read and write)
		[11]: tbl_10_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [25] 18. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [25] 18. Error Block 3 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [26] 19. Error Block 4 start (CF ANALYSIS FAILED)
	RunService_upvr.Heartbeat:Wait()
	-- KONSTANTERROR: [26] 19. Error Block 4 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [563] 337. Error Block 103 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [563.5]
	-- KONSTANTERROR: [563] 337. Error Block 103 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [564] 338. Error Block 104 start (CF ANALYSIS FAILED)
	arg1:Destroy()
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [570.8]
	local CheckForHumanoid_result1_2, CheckForHumanoid_result2 = CheckForHumanoid(nil.Instance)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x4)
	module_5_upvr.HitEffect(tbl_3_upvr, nil.Position, nil.Instance, nil.Normal, nil.Material, var25_upvw)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x4)
	Events_upvr.HitEffect:FireServer(nil.Position, nil.Instance, nil.Normal, nil.Material, var25_upvw)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
	-- KONSTANTERROR: [564] 338. Error Block 104 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [611] 367. Error Block 105 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [611] 367. Error Block 105 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [616] 370. Error Block 106 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [616] 370. Error Block 106 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [774] 464. Error Block 137 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [774] 464. Error Block 137 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [798] 484. Error Block 143 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [798] 484. Error Block 143 end (CF ANALYSIS FAILED)
end
local var226_upvw = 0
function TracerCalculation() -- Line 1449
	--[[ Upvalues[2]:
		[1]: var25_upvw (read and write)
		[2]: var226_upvw (read and write)
	]]
	if var25_upvw.Tracer or var25_upvw.BulletFlare then
		if var25_upvw.RandomTracer.Enabled then
			if math.random(1, 100) <= var25_upvw.RandomTracer.Chance then
				return true
			end
			return false
		end
		if var25_upvw.TracerEveryXShots <= var226_upvw then
			var226_upvw = 0
			return true
		end
		var226_upvw += 1
		return false
	end
end
function CreateBullet() -- Line 1469
	--[[ Upvalues[10]:
		[1]: ACS_WorkSpace_upvr (readonly)
		[2]: LocalPlayer_upvr (readonly)
		[3]: var23_upvw (read and write)
		[4]: var25_upvw (read and write)
		[5]: tbl_10_upvr (readonly)
		[6]: var42_upvw (read and write)
		[7]: var35_upvw (read and write)
		[8]: var39_upvw (read and write)
		[9]: module_3_upvr (readonly)
		[10]: Events_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local Part_upvr = Instance.new("Part", ACS_WorkSpace_upvr.Client)
	Part_upvr.Name = LocalPlayer_upvr.Name.."_Bullet"
	Part_upvr.CanCollide = false
	Part_upvr.Shape = Enum.PartType.Ball
	Part_upvr.Transparency = 1
	Part_upvr.Size = Vector3.new(1, 1, 1)
	local WorldPosition = var23_upvw.Handle.Muzzle.WorldPosition
	local var229 = var23_upvw.Handle.Muzzle.WorldCFrame.LookVector + (var23_upvw.Handle.Muzzle.WorldCFrame.UpVector) * (var25_upvw.BulletDrop * var25_upvw.CurrentZero / 4 / var25_upvw.MuzzleVelocity) / 2
	local var230 = var25_upvw.WalkMult * tbl_10_upvr.WalkMult
	local var231
	if var42_upvw and var25_upvw.Bullets <= 1 then
		var231 = CFrame.Angles(math.rad((RAND(-var35_upvw - var39_upvw / 1 * var230, var35_upvw + var39_upvw / 1 * var230)) / (10 * var25_upvw.AimSpreadReduction)), math.rad((RAND(-var35_upvw - var39_upvw / 1 * var230, var35_upvw + var39_upvw / 1 * var230)) / (10 * var25_upvw.AimSpreadReduction)), math.rad((RAND(-var35_upvw - var39_upvw / 1 * var230, var35_upvw + var39_upvw / 1 * var230)) / (10 * var25_upvw.AimSpreadReduction)))
	else
		var231 = CFrame.Angles(math.rad(RAND(-var35_upvw - var39_upvw / 1 * var230, var35_upvw + var39_upvw / 1 * var230) / 10), math.rad(RAND(-var35_upvw - var39_upvw / 1 * var230, var35_upvw + var39_upvw / 1 * var230) / 10), math.rad(RAND(-var35_upvw - var39_upvw / 1 * var230, var35_upvw + var39_upvw / 1 * var230) / 10))
	end
	if var25_upvw.RainbowMode then
		local _ = Color3.fromRGB(math.random(0, 255), math.random(0, 255), math.random(0, 255))
	else
	end
	if TracerCalculation() then
		if module_3_upvr.ReplicatedBullets then
			Events_upvr.ServerBullet:FireServer(WorldPosition, var231 * var229, var25_upvw, tbl_10_upvr)
		end
		if var25_upvw.Tracer == true then
			local Attachment_2 = Instance.new("Attachment")
			Attachment_2.Name = "At1"
			Attachment_2.Position = Vector3.new(-0.0500, 0, 0)
			Attachment_2.Parent = Part_upvr
			local Attachment = Instance.new("Attachment")
			Attachment.Name = "At2"
			Attachment.Position = Vector3.new(0.05000, 0, 0)
			Attachment.Parent = Part_upvr
			local Trail = Instance.new("Trail")
			Trail.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0, 0), NumberSequenceKeypoint.new(1, 1)})
			Trail.WidthScale = NumberSequence.new({NumberSequenceKeypoint.new(0, 2, 0), NumberSequenceKeypoint.new(1, 1)})
			Trail.Color = ColorSequence.new(var25_upvw.TracerColor)
			Trail.Texture = "rbxassetid://232918622"
			Trail.TextureMode = Enum.TextureMode.Stretch
			Trail.FaceCamera = true
			Trail.LightEmission = 1
			Trail.LightInfluence = 0
			Trail.Lifetime = 0.25
			Trail.Attachment0 = Attachment_2
			Trail.Attachment1 = Attachment
			Trail.Parent = Part_upvr
		end
		if var25_upvw.BulletFlare == true then
			local BillboardGui = Instance.new("BillboardGui", Part_upvr)
			BillboardGui.Adornee = Part_upvr
			BillboardGui.Enabled = false
			local var239 = math.random(275, 375) / 10
			BillboardGui.Size = UDim2.new(var239, 0, var239, 0)
			BillboardGui.LightInfluence = 0
			local ImageLabel = Instance.new("ImageLabel", BillboardGui)
			ImageLabel.BackgroundTransparency = 1
			ImageLabel.Size = UDim2.new(1, 0, 1, 0)
			ImageLabel.Position = UDim2.new(0, 0, 0, 0)
			ImageLabel.Image = "http://www.roblox.com/asset/?id=1047066405"
			ImageLabel.ImageTransparency = math.random(2, 5) / 15
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			ImageLabel.ImageColor3 = var25_upvw.TracerColor
			spawn(function() -- Line 1567
				--[[ Upvalues[1]:
					[1]: Part_upvr (readonly)
				]]
				wait(0.1)
				if Part_upvr:FindFirstChild("BillboardGui") ~= nil then
					Part_upvr.BillboardGui.Enabled = true
				end
			end)
		end
	end
	Part_upvr.CFrame = CFrame.new(WorldPosition, var229)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	Part_upvr:ApplyImpulse(var231 * var229 * var25_upvw.MuzzleVelocity * tbl_10_upvr.MuzzleVelocity)
	Instance.new("BodyForce", Part_upvr).Force = Vector3.new(0, Part_upvr:GetMass() * 196.2 - var25_upvw.BulletDrop * 196.2, 0)
	game.Debris:AddItem(Part_upvr, 5)
	if var25_upvw.gunName == "M870" then
		CastRay(Part_upvr, WorldPosition, "BREACHER")
	else
		CastRay(Part_upvr, WorldPosition)
	end
end
function meleeCast() -- Line 1596
	--[[ Upvalues[10]:
		[1]: CurrentCamera_upvr (readonly)
		[2]: var25_upvw (read and write)
		[3]: tbl_3_upvr (readonly)
		[4]: module_5_upvr (readonly)
		[5]: Events_upvr (readonly)
		[6]: any_InvokeServer_result1_upvr (readonly)
		[7]: LocalPlayer_upvr (readonly)
		[8]: module_upvr (readonly)
		[9]: var24_upvw (read and write)
		[10]: tbl_10_upvr (readonly)
	]]
	local RaycastParams_new_result1_2 = RaycastParams.new()
	RaycastParams_new_result1_2.FilterDescendantsInstances = tbl_3_upvr
	RaycastParams_new_result1_2.FilterType = Enum.RaycastFilterType.Blacklist
	RaycastParams_new_result1_2.IgnoreWater = true
	local workspace_Raycast_result1_2 = workspace:Raycast(CurrentCamera_upvr.CFrame.Position, CurrentCamera_upvr.CFrame.LookVector * var25_upvw.BladeRange, RaycastParams_new_result1_2)
	if workspace_Raycast_result1_2 then
		local Instance_2 = workspace_Raycast_result1_2.Instance
		if Instance_2 and Instance_2.Parent:IsA("Accessory") or Instance_2.Parent:IsA("Hat") then
			for _, v_11 in pairs(game.Players:GetPlayers()) do
				if v_11.Character then
					for _, v_12 in pairs(v_11.Character:GetChildren()) do
						if v_12:IsA("Accessory") then
							table.insert(tbl_3_upvr, v_12)
						end
					end
				end
			end
			return meleeCast()
		end
		if Instance_2 and Instance_2.Name == "Ignorable" or Instance_2.Name == "Glass" or Instance_2.Name == "Ignore" or Instance_2.Parent.Name == "Top" or Instance_2.Parent.Name == "Helmet" or Instance_2.Parent.Name == "Up" or Instance_2.Parent.Name == "Down" or Instance_2.Parent.Name == "Face" or Instance_2.Parent.Name == "Olho" or Instance_2.Parent.Name == "Headset" or Instance_2.Parent.Name == "Numero" or Instance_2.Parent.Name == "Vest" or Instance_2.Parent.Name == "Chest" or Instance_2.Parent.Name == "Waist" or Instance_2.Parent.Name == "Back" or Instance_2.Parent.Name == "Belt" or Instance_2.Parent.Name == "Leg1" or Instance_2.Parent.Name == "Leg2" or Instance_2.Parent.Name == "Arm1" or Instance_2.Parent.Name == "Arm2" then
			table.insert(tbl_3_upvr, Instance_2)
			return meleeCast()
		end
		if Instance_2 and Instance_2.Parent.Name == "Top" or Instance_2.Parent.Name == "Helmet" or Instance_2.Parent.Name == "Up" or Instance_2.Parent.Name == "Down" or Instance_2.Parent.Name == "Face" or Instance_2.Parent.Name == "Olho" or Instance_2.Parent.Name == "Headset" or Instance_2.Parent.Name == "Numero" or Instance_2.Parent.Name == "Vest" or Instance_2.Parent.Name == "Chest" or Instance_2.Parent.Name == "Waist" or Instance_2.Parent.Name == "Back" or Instance_2.Parent.Name == "Belt" or Instance_2.Parent.Name == "Leg1" or Instance_2.Parent.Name == "Leg2" or Instance_2.Parent.Name == "Arm1" or Instance_2.Parent.Name == "Arm2" then
			table.insert(tbl_3_upvr, Instance_2.Parent)
			return meleeCast()
		end
		if Instance_2 and (1 <= Instance_2.Transparency or Instance_2.CanCollide == false) or Instance_2.Name ~= "Head" and Instance_2.Name ~= "Right Arm" and Instance_2.Name ~= "Left Arm" and Instance_2.Name ~= "Right Leg" and Instance_2.Name ~= "Left Leg" and Instance_2.Name ~= "UpperTorso" and Instance_2.Name ~= "LowerTorso" and Instance_2.Name ~= "RightUpperArm" and Instance_2.Name ~= "RightLowerArm" and Instance_2.Name ~= "RightHand" and Instance_2.Name ~= "LeftUpperArm" and Instance_2.Name ~= "LeftLowerArm" and Instance_2.Name ~= "LeftHand" and Instance_2.Name ~= "RightUpperLeg" and Instance_2.Name ~= "RightLowerLeg" and Instance_2.Name ~= "RightFoot" and Instance_2.Name ~= "LeftUpperLeg" and Instance_2.Name ~= "LeftLowerLeg" and Instance_2.Name ~= "LeftFoot" and Instance_2.Name ~= "Armor" and Instance_2.Name ~= "EShield" then
			table.insert(tbl_3_upvr, Instance_2)
			return meleeCast()
		end
	end
	if workspace_Raycast_result1_2 then
		local CheckForHumanoid_result1_3, CheckForHumanoid_result2_2_upvr = CheckForHumanoid(workspace_Raycast_result1_2.Instance)
		module_5_upvr.HitEffect(tbl_3_upvr, workspace_Raycast_result1_2.Position, workspace_Raycast_result1_2.Instance, workspace_Raycast_result1_2.Normal, workspace_Raycast_result1_2.Material, var25_upvw)
		Events_upvr.HitEffect:FireServer(workspace_Raycast_result1_2.Position, workspace_Raycast_result1_2.Instance, workspace_Raycast_result1_2.Normal, workspace_Raycast_result1_2.Material, var25_upvw)
		local Instance_3 = workspace_Raycast_result1_2.Instance
		if CheckForHumanoid_result1_3 == true and 0 < CheckForHumanoid_result2_2_upvr.Health then
			local var282_upvr = any_InvokeServer_result1_upvr..'-'..LocalPlayer_upvr.UserId
			if Instance_3.Name == "Head" or Instance_3.Parent.Name == "Top" or Instance_3.Parent.Name == "Headset" or Instance_3.Parent.Name == "Olho" or Instance_3.Parent.Name == "Face" or Instance_3.Parent.Name == "Numero" then
				module_upvr:Spawn(function() -- Line 1657
					--[[ Upvalues[6]:
						[1]: Events_upvr (copied, readonly)
						[2]: var24_upvw (copied, read and write)
						[3]: CheckForHumanoid_result2_2_upvr (readonly)
						[4]: var25_upvw (copied, read and write)
						[5]: tbl_10_upvr (copied, readonly)
						[6]: var282_upvr (readonly)
					]]
					Events_upvr.Damage:InvokeServer(var24_upvw, CheckForHumanoid_result2_2_upvr, 0, 1, var25_upvw, tbl_10_upvr, nil, nil, var282_upvr)
				end)
				return
			end
			if Instance_3.Name == "Torso" or Instance_3.Name == "UpperTorso" or Instance_3.Name == "LowerTorso" or Instance_3.Parent.Name == "Chest" or Instance_3.Parent.Name == "Waist" or Instance_3.Name == "RightUpperArm" or Instance_3.Name == "RightLowerArm" or Instance_3.Name == "RightHand" or Instance_3.Name == "LeftUpperArm" or Instance_3.Name == "LeftLowerArm" or Instance_3.Name == "LeftHand" then
				module_upvr:Spawn(function() -- Line 1662
					--[[ Upvalues[6]:
						[1]: Events_upvr (copied, readonly)
						[2]: var24_upvw (copied, read and write)
						[3]: CheckForHumanoid_result2_2_upvr (readonly)
						[4]: var25_upvw (copied, read and write)
						[5]: tbl_10_upvr (copied, readonly)
						[6]: var282_upvr (readonly)
					]]
					Events_upvr.Damage:InvokeServer(var24_upvw, CheckForHumanoid_result2_2_upvr, 0, 2, var25_upvw, tbl_10_upvr, nil, nil, var282_upvr)
				end)
				return
			end
			if Instance_3.Name == "Right Arm" or Instance_3.Name == "Right Leg" or Instance_3.Name == "Left Leg" or Instance_3.Name == "Left Arm" or Instance_3.Name == "RightUpperLeg" or Instance_3.Name == "RightLowerLeg" or Instance_3.Name == "RightFoot" or Instance_3.Name == "LeftUpperLeg" or Instance_3.Name == "LeftLowerLeg" or Instance_3.Name == "LeftFoot" then
				module_upvr:Spawn(function() -- Line 1667
					--[[ Upvalues[6]:
						[1]: Events_upvr (copied, readonly)
						[2]: var24_upvw (copied, read and write)
						[3]: CheckForHumanoid_result2_2_upvr (readonly)
						[4]: var25_upvw (copied, read and write)
						[5]: tbl_10_upvr (copied, readonly)
						[6]: var282_upvr (readonly)
					]]
					Events_upvr.Damage:InvokeServer(var24_upvw, CheckForHumanoid_result2_2_upvr, 0, 3, var25_upvw, tbl_10_upvr, nil, nil, var282_upvr)
				end)
			end
		end
	end
end
function UpdateGui() -- Line 1676
	--[[ Upvalues[13]:
		[1]: clone_2_upvw (read and write)
		[2]: var25_upvw (read and write)
		[3]: var48_upvw (read and write)
		[4]: var21_upvw (read and write)
		[5]: var22_upvw (read and write)
		[6]: var56_upvw (read and write)
		[7]: var60_upvw (read and write)
		[8]: var61_upvw (read and write)
		[9]: var62_upvw (read and write)
		[10]: TweenService_upvr (readonly)
		[11]: var67_upvw (read and write)
		[12]: var65_upvw (read and write)
		[13]: var66_upvw (read and write)
	]]
	if clone_2_upvw then
		local GunHUD_3 = clone_2_upvw.GunHUD
		if var25_upvw ~= nil then
			if var25_upvw.Jammed then
				GunHUD_3.B.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
			else
				GunHUD_3.B.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			end
			if var48_upvw then
				GunHUD_3.A.Visible = true
			else
				GunHUD_3.A.Visible = false
			end
			if 0 < var21_upvw then
				GunHUD_3.B.Visible = true
			else
				GunHUD_3.B.Visible = false
			end
			if var25_upvw.ShootType == 1 then
				GunHUD_3.FText.Text = "Semi"
			elseif var25_upvw.ShootType == 2 then
				GunHUD_3.FText.Text = "Burst"
			elseif var25_upvw.ShootType == 3 then
				GunHUD_3.FText.Text = "Auto"
			elseif var25_upvw.ShootType == 4 then
				GunHUD_3.FText.Text = "Pump-Action"
			elseif var25_upvw.ShootType == 5 then
				GunHUD_3.FText.Text = "Bolt-Action"
			end
			GunHUD_3.Sens.Text = 0.6
			GunHUD_3.BText.Text = var25_upvw.BulletType
			GunHUD_3.NText.Text = var25_upvw.gunName
			if var25_upvw.EnableZeroing then
				GunHUD_3.ZeText.Visible = true
				GunHUD_3.ZeText.Text = var25_upvw.CurrentZero.." m"
			else
				GunHUD_3.ZeText.Visible = false
			end
			if var25_upvw.MagCount then
				GunHUD_3.SAText.Text = math.ceil(var22_upvw / var25_upvw.Ammo)
				GunHUD_3.Magazines.Visible = true
				GunHUD_3.Bullets.Visible = false
			else
				GunHUD_3.SAText.Text = var22_upvw
				GunHUD_3.Magazines.Visible = false
				GunHUD_3.Bullets.Visible = true
			end
			if var56_upvw then
				GunHUD_3.Att.Silencer.Visible = true
			else
				GunHUD_3.Att.Silencer.Visible = false
			end
			if var60_upvw then
				GunHUD_3.Att.Laser.Visible = true
				if var61_upvw then
					if var62_upvw then
						TweenService_upvr:Create(GunHUD_3.Att.Laser, TweenInfo.new(0.1, Enum.EasingStyle.Linear), {
							ImageColor3 = Color3.fromRGB(0, 255, 0);
							ImageTransparency = 0.123;
						}):Play()
					else
						TweenService_upvr:Create(GunHUD_3.Att.Laser, TweenInfo.new(0.1, Enum.EasingStyle.Linear), {
							ImageColor3 = Color3.fromRGB(255, 255, 255);
							ImageTransparency = 0.123;
						}):Play()
					end
				else
					TweenService_upvr:Create(GunHUD_3.Att.Laser, TweenInfo.new(0.1, Enum.EasingStyle.Linear), {
						ImageColor3 = Color3.fromRGB(0, 0, 0);
						ImageTransparency = 1;
					}):Play()
				end
			else
				GunHUD_3.Att.Laser.Visible = false
			end
			if var67_upvw then
				GunHUD_3.Att.Bipod.Visible = true
			else
				GunHUD_3.Att.Bipod.Visible = false
			end
			if var65_upvw then
				GunHUD_3.Att.Flash.Visible = true
				if var66_upvw then
					TweenService_upvr:Create(GunHUD_3.Att.Flash, TweenInfo.new(0.1, Enum.EasingStyle.Linear), {
						ImageColor3 = Color3.fromRGB(255, 255, 255);
						ImageTransparency = 0.123;
					}):Play()
				else
					TweenService_upvr:Create(GunHUD_3.Att.Flash, TweenInfo.new(0.1, Enum.EasingStyle.Linear), {
						ImageColor3 = Color3.fromRGB(0, 0, 0);
						ImageTransparency = 1;
					}):Play()
				end
			else
				GunHUD_3.Att.Flash.Visible = false
			end
			if var25_upvw.Type == "Grenade" then
				clone_2_upvw.GrenadeForce.Visible = true
				return
			end
			clone_2_upvw.GrenadeForce.Visible = false
		end
	end
end
function CheckMagFunction() -- Line 1798
	--[[ Upvalues[11]:
		[1]: var42_upvw (read and write)
		[2]: clone_2_upvw (read and write)
		[3]: TweenService_upvr (readonly)
		[4]: var21_upvw (read and write)
		[5]: var25_upvw (read and write)
		[6]: var45_upvw (read and write)
		[7]: var48_upvw (read and write)
		[8]: var49_upvw (read and write)
		[9]: Events_upvr (readonly)
		[10]: var26_upvw (read and write)
		[11]: var51_upvw (read and write)
	]]
	if var42_upvw then
		var42_upvw = false
		ADS(var42_upvw)
	end
	if clone_2_upvw then
		local GunHUD_2_upvr = clone_2_upvw.GunHUD
		TweenService_upvr:Create(GunHUD_2_upvr.CMText, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {
			TextTransparency = 0;
			TextStrokeTransparency = 0.75;
		}):Play()
		if var25_upvw.Ammo <= var21_upvw then
			GunHUD_2_upvr.CMText.Text = "Full"
		elseif math.floor(var25_upvw.Ammo * 0.75) < var21_upvw and var21_upvw < var25_upvw.Ammo then
			GunHUD_2_upvr.CMText.Text = "Nearly full"
		elseif var21_upvw < math.floor(var25_upvw.Ammo * 0.75) and math.floor(var25_upvw.Ammo * 0.5) < var21_upvw then
			GunHUD_2_upvr.CMText.Text = "Almost half"
		elseif var21_upvw == math.floor(var25_upvw.Ammo * 0.5) then
			GunHUD_2_upvr.CMText.Text = "Half"
		elseif math.ceil(var25_upvw.Ammo * 0.25) < var21_upvw and var21_upvw < math.floor(var25_upvw.Ammo * 0.5) then
			GunHUD_2_upvr.CMText.Text = "Less than half"
		elseif var21_upvw < math.ceil(var25_upvw.Ammo * 0.25) and 0 < var21_upvw then
			GunHUD_2_upvr.CMText.Text = "Almost empty"
		elseif var21_upvw == 0 then
			GunHUD_2_upvr.CMText.Text = "Empty"
		end
		delay(0.25, function() -- Line 1826
			--[[ Upvalues[2]:
				[1]: TweenService_upvr (copied, readonly)
				[2]: GunHUD_2_upvr (readonly)
			]]
			TweenService_upvr:Create(GunHUD_2_upvr.CMText, TweenInfo.new(0.25, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 5), {
				TextTransparency = 1;
				TextStrokeTransparency = 1;
			}):Play()
		end)
	end
	GunHUD_2_upvr = false
	var45_upvw = GunHUD_2_upvr
	GunHUD_2_upvr = false
	var48_upvw = GunHUD_2_upvr
	GunHUD_2_upvr = 0
	var49_upvw = GunHUD_2_upvr
	GunHUD_2_upvr = Events_upvr.GunStance:FireServer
	GunHUD_2_upvr(var49_upvw, var26_upvw)
	GunHUD_2_upvr = UpdateGui
	GunHUD_2_upvr()
	GunHUD_2_upvr = MagCheckAnim
	GunHUD_2_upvr()
	GunHUD_2_upvr = var51_upvw
	if GunHUD_2_upvr == 0 then
		GunHUD_2_upvr = IdleAnim
		GunHUD_2_upvr()
	else
		GunHUD_2_upvr = CantedSightAnim
		GunHUD_2_upvr()
	end
	GunHUD_2_upvr = RunCheck
	GunHUD_2_upvr()
end
function Grenade() -- Line 1844
	--[[ Upvalues[2]:
		[1]: var70_upvw (read and write)
		[2]: var71_upvw (read and write)
	]]
	if not var70_upvw then
		var70_upvw = true
		GrenadeReady()
		repeat
			wait()
		until not var71_upvw
		TossGrenade()
	end
end
function TossGrenade() -- Line 1856
	--[[ Upvalues[8]:
		[1]: var24_upvw (read and write)
		[2]: var25_upvw (read and write)
		[3]: var70_upvw (read and write)
		[4]: any_InvokeServer_result1_upvr (readonly)
		[5]: LocalPlayer_upvr (readonly)
		[6]: Events_upvr (readonly)
		[7]: CurrentCamera_upvr (readonly)
		[8]: var73_upvw (read and write)
	]]
	if var24_upvw then
		if var25_upvw and var70_upvw == true then
			GrenadeThrow()
			if var24_upvw and var25_upvw then
				Events_upvr.Grenade:FireServer(var24_upvw, var25_upvw, CurrentCamera_upvr.CFrame, CurrentCamera_upvr.CFrame.LookVector, var73_upvw, any_InvokeServer_result1_upvr..'-'..LocalPlayer_upvr.UserId)
				unset()
			end
		end
	end
end
function GrenadeMode() -- Line 1867
	--[[ Upvalues[2]:
		[1]: var73_upvw (read and write)
		[2]: clone_2_upvw (read and write)
	]]
	if 150 <= var73_upvw then
		var73_upvw = 100
		clone_2_upvw.GrenadeForce.Text = "Mid Throw"
	else
		if 100 <= var73_upvw then
			var73_upvw = 50
			clone_2_upvw.GrenadeForce.Text = "Low Throw"
			return
		end
		if 50 <= var73_upvw then
			var73_upvw = 150
			clone_2_upvw.GrenadeForce.Text = "High Throw"
		end
	end
end
function JamChance() -- Line 1880
	--[[ Upvalues[3]:
		[1]: var25_upvw (read and write)
		[2]: var21_upvw (read and write)
		[3]: var23_upvw (read and write)
	]]
	if var25_upvw.CanBreak == true and not var25_upvw.Jammed then
		if 0 < var21_upvw - 1 and math.random(1000) <= 2 then
			var25_upvw.Jammed = true
			var23_upvw.Handle.Click:Play()
		end
	end
end
function Jammed() -- Line 1890
	--[[ Upvalues[7]:
		[1]: var25_upvw (read and write)
		[2]: var45_upvw (read and write)
		[3]: var44_upvw (read and write)
		[4]: var48_upvw (read and write)
		[5]: var49_upvw (read and write)
		[6]: Events_upvr (readonly)
		[7]: var26_upvw (read and write)
	]]
	if var25_upvw.Type == "Gun" and var25_upvw.Jammed then
		var45_upvw = false
		var44_upvw = true
		var48_upvw = false
		var49_upvw = 0
		Events_upvr.GunStance:FireServer(var49_upvw, var26_upvw)
		UpdateGui()
		JammedAnim()
		var25_upvw.Jammed = false
		UpdateGui()
		var44_upvw = false
		RunCheck()
	end
end
function Reload() -- Line 1908
	--[[ Upvalues[12]:
		[1]: var25_upvw (read and write)
		[2]: var22_upvw (read and write)
		[3]: var21_upvw (read and write)
		[4]: var41_upvw (read and write)
		[5]: var45_upvw (read and write)
		[6]: var44_upvw (read and write)
		[7]: var48_upvw (read and write)
		[8]: var49_upvw (read and write)
		[9]: Events_upvr (readonly)
		[10]: var26_upvw (read and write)
		[11]: var47_upvw (read and write)
		[12]: var51_upvw (read and write)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [5] 4. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [5] 4. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [15] 11. Error Block 4 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [15] 11. Error Block 4 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [19] 14. Error Block 5 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [19] 14. Error Block 5 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [26] 19. Error Block 56 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [26] 19. Error Block 56 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [223] 181. Error Block 61 start (CF ANALYSIS FAILED)
	var47_upvw = false
	var44_upvw = false
	if var51_upvw == 0 then
		IdleAnim()
	else
		CantedSightAnim()
	end
	RunCheck()
	UpdateGui()
	-- KONSTANTERROR: [223] 181. Error Block 61 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [243] 196. Error Block 48 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [243] 196. Error Block 48 end (CF ANALYSIS FAILED)
end
function GunFx() -- Line 1986
	--[[ Upvalues[11]:
		[1]: var56_upvw (read and write)
		[2]: var23_upvw (read and write)
		[3]: var57_upvw (read and write)
		[4]: var35_upvw (read and write)
		[5]: var25_upvw (read and write)
		[6]: tbl_10_upvr (readonly)
		[7]: var36_upvw (read and write)
		[8]: var34_upvw (read and write)
		[9]: time_result1_upvw (read and write)
		[10]: var21_upvw (read and write)
		[11]: TweenService_upvr (readonly)
	]]
	if var56_upvw == true then
		var23_upvw.Handle.Muzzle.Supressor:Play()
	else
		var23_upvw.Handle.Muzzle.Fire:Play()
	end
	if var57_upvw == true then
		var23_upvw.Handle.Muzzle.Smoke:Emit(10)
	else
		var23_upvw.Handle.Muzzle["FlashFX[Flash]"]:Emit(10)
		var23_upvw.Handle.Muzzle.Smoke:Emit(10)
	end
	if var35_upvw then
		var35_upvw = math.min(var25_upvw.MaxSpread * tbl_10_upvr.MaxSpread, var35_upvw + var25_upvw.AimInaccuracyStepAmount * tbl_10_upvr.AimInaccuracyStepAmount)
		var36_upvw = math.min(var25_upvw.MaxRecoilPower * tbl_10_upvr.MaxRecoilPower, var36_upvw + var25_upvw.RecoilPowerStepAmount * tbl_10_upvr.RecoilPowerStepAmount)
	end
	var34_upvw += 1
	time_result1_upvw = time()
	if 0 < var21_upvw or not var25_upvw.SlideLock then
		TweenService_upvr:Create(var23_upvw.Handle.Slide, TweenInfo.new(30 / var25_upvw.ShootRate, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, true, 0), {
			C0 = var25_upvw.SlideEx:inverse();
		}):Play()
	elseif var21_upvw <= 0 and var25_upvw.SlideLock then
		TweenService_upvr:Create(var23_upvw.Handle.Slide, TweenInfo.new(30 / var25_upvw.ShootRate, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {
			C0 = var25_upvw.SlideEx:inverse();
		}):Play()
	end
	var23_upvw.Handle.Chamber.Smoke:Emit(10)
	var23_upvw.Handle.Chamber.Shell:Emit(1)
end
function Shoot() -- Line 2017
	--[[ Upvalues[13]:
		[1]: var25_upvw (read and write)
		[2]: var43_upvw (read and write)
		[3]: var44_upvw (read and write)
		[4]: var48_upvw (read and write)
		[5]: var45_upvw (read and write)
		[6]: var21_upvw (read and write)
		[7]: var23_upvw (read and write)
		[8]: Events_upvr (readonly)
		[9]: var24_upvw (read and write)
		[10]: var56_upvw (read and write)
		[11]: var57_upvw (read and write)
		[12]: module_upvr (readonly)
		[13]: var41_upvw (read and write)
	]]
	if var25_upvw then
		if var25_upvw.Type == "Gun" then
			if not var43_upvw and not var44_upvw then
				if var44_upvw or var48_upvw or CheckingMag then
					var45_upvw = false
				else
					if var21_upvw <= 0 or var25_upvw.Jammed then
						var23_upvw.Handle.Click:Play()
						var45_upvw = false
						return
					end
					var45_upvw = true
					delay(0, function() -- Line 2033
						--[[ Upvalues[9]:
							[1]: var25_upvw (copied, read and write)
							[2]: var43_upvw (copied, read and write)
							[3]: Events_upvr (copied, readonly)
							[4]: var24_upvw (copied, read and write)
							[5]: var56_upvw (copied, read and write)
							[6]: var57_upvw (copied, read and write)
							[7]: module_upvr (copied, readonly)
							[8]: var21_upvw (copied, read and write)
							[9]: var45_upvw (copied, read and write)
						]]
						if var25_upvw then
							if var25_upvw.ShootType == 1 then
								var43_upvw = true
								Events_upvr.Atirar:FireServer(var24_upvw, var56_upvw, var57_upvw)
								for _ = 1, var25_upvw.Bullets do
									module_upvr:Spawn(CreateBullet)
								end
								var21_upvw -= 1
								GunFx()
								JamChance()
								UpdateGui()
								module_upvr:Spawn(Recoil)
								wait(60 / var25_upvw.ShootRate)
								var43_upvw = false
								return
							end
						end
						if var25_upvw and var25_upvw.ShootType == 2 then
							if not var43_upvw and var21_upvw > 0 and var45_upvw ~= false and not var25_upvw.Jammed then
								var43_upvw = true
								Events_upvr.Atirar:FireServer(var24_upvw, var56_upvw, var57_upvw)
								for _ = 1, var25_upvw.Bullets do
									module_upvr:Spawn(CreateBullet)
								end
								var21_upvw -= 1
								GunFx()
								JamChance()
								UpdateGui()
								module_upvr:Spawn(Recoil)
								wait(60 / var25_upvw.ShootRate)
								var43_upvw = false
								-- KONSTANTWARNING: GOTO [72] #56
							end
						elseif var25_upvw and var25_upvw.ShootType == 3 then
							if var45_upvw and not var43_upvw and var21_upvw > 0 and not var25_upvw.Jammed then
								var43_upvw = true
								Events_upvr.Atirar:FireServer(var24_upvw, var56_upvw, var57_upvw)
								for _ = 1, var25_upvw.Bullets do
									module_upvr:Spawn(CreateBullet)
								end
								var21_upvw -= 1
								GunFx()
								JamChance()
								UpdateGui()
								module_upvr:Spawn(Recoil)
								wait(60 / var25_upvw.ShootRate)
								var43_upvw = false
								-- KONSTANTWARNING: GOTO [145] #112
							end
						elseif var25_upvw and var25_upvw.ShootType == 4 or var25_upvw and var25_upvw.ShootType == 5 then
							var43_upvw = true
							Events_upvr.Atirar:FireServer(var24_upvw, var56_upvw, var57_upvw)
							for _ = 1, var25_upvw.Bullets do
								module_upvr:Spawn(CreateBullet)
							end
							var21_upvw -= 1
							GunFx()
							UpdateGui()
							module_upvr:Spawn(Recoil)
							PumpAnim()
							RunCheck()
							var43_upvw = false
						end
					end)
				end
			end
		end
	end
	if var25_upvw and var25_upvw.Type == "Melee" and not var41_upvw and not var43_upvw then
		var43_upvw = true
		meleeCast()
		meleeAttack()
		RunCheck()
		var43_upvw = false
	end
end
local tbl_13 = {}
local tbl_14_upvr = {
	cornerPeek = module.new(0);
}
tbl_14_upvr.cornerPeek.d = 1
tbl_14_upvr.cornerPeek.s = 20
tbl_14_upvr.peekFactor = -0.2617993877991494
tbl_14_upvr.dirPeek = 0
function tbl_13.Update() -- Line 2123
	--[[ Upvalues[3]:
		[1]: tbl_14_upvr (readonly)
		[2]: var94_upvw (read and write)
		[3]: CurrentCamera_upvr (readonly)
	]]
	tbl_14_upvr.cornerPeek.t = tbl_14_upvr.peekFactor * var94_upvw
	CurrentCamera_upvr.CFrame *= CFrame.fromAxisAngle(Vector3.new(0, 0, 1), tbl_14_upvr.cornerPeek.p)
end
game:GetService("RunService"):BindToRenderStep("Camera Update", 200, tbl_13.Update)
function RunCheck() -- Line 2132
	--[[ Upvalues[7]:
		[1]: var41_upvw (read and write)
		[2]: var44_upvw (read and write)
		[3]: var45_upvw (read and write)
		[4]: var49_upvw (read and write)
		[5]: Events_upvr (readonly)
		[6]: var26_upvw (read and write)
		[7]: var42_upvw (read and write)
	]]
	if var41_upvw then
		if not var44_upvw then
			var45_upvw = false
			var49_upvw = 3
			Events_upvr.GunStance:FireServer(var49_upvw, var26_upvw)
			return
		end
	end
	if var42_upvw then
		var49_upvw = 2
		Events_upvr.GunStance:FireServer(var49_upvw, var26_upvw)
	else
		var49_upvw = 0
		Events_upvr.GunStance:FireServer(var49_upvw, var26_upvw)
	end
	IdleAnim()
end
function Stand() -- Line 2150
	--[[ Upvalues[11]:
		[1]: Stance_upvr (readonly)
		[2]: var93_upvw (read and write)
		[3]: var94_upvw (read and write)
		[4]: TweenService_upvr (readonly)
		[5]: var1_upvr (readonly)
		[6]: var95_upvw (read and write)
		[7]: var96_upvw (read and write)
		[8]: clone_2_upvw (read and write)
		[9]: module_3_upvr (readonly)
		[10]: MarketplaceService_upvr (readonly)
		[11]: LocalPlayer_upvr (readonly)
	]]
	Stance_upvr:FireServer(var93_upvw, var94_upvw)
	TweenService_upvr:Create(var1_upvr.Humanoid, TweenInfo.new(0.3), {
		CameraOffset = Vector3.new(var95_upvw, var96_upvw, 0);
	}):Play()
	clone_2_upvw.MainFrame.Poses.Levantado.Visible = true
	clone_2_upvw.MainFrame.Poses.Agaixado.Visible = false
	clone_2_upvw.MainFrame.Poses.Deitado.Visible = false
	if script.Parent:GetAttribute("Injured") then
		var1_upvr.Humanoid.WalkSpeed = module_3_upvr.InjuredWalksSpeed
		var1_upvr.Humanoid.JumpPower = module_3_upvr.JumpPower
	else
		if MarketplaceService_upvr:UserOwnsGamePassAsync(LocalPlayer_upvr.UserId, 779974280) then
			var1_upvr.Humanoid.WalkSpeed = 7.3
		else
			var1_upvr.Humanoid.WalkSpeed = module_3_upvr.NormalWalkSpeed
		end
		var1_upvr.Humanoid.JumpPower = module_3_upvr.JumpPower
	end
	IsStanced = false -- Setting global
end
function Crouch() -- Line 2180
	--[[ Upvalues[9]:
		[1]: Stance_upvr (readonly)
		[2]: var93_upvw (read and write)
		[3]: var94_upvw (read and write)
		[4]: TweenService_upvr (readonly)
		[5]: var1_upvr (readonly)
		[6]: var95_upvw (read and write)
		[7]: var96_upvw (read and write)
		[8]: clone_2_upvw (read and write)
		[9]: module_3_upvr (readonly)
	]]
	Stance_upvr:FireServer(var93_upvw, var94_upvw)
	TweenService_upvr:Create(var1_upvr.Humanoid, TweenInfo.new(0.3), {
		CameraOffset = Vector3.new(var95_upvw, var96_upvw, 0);
	}):Play()
	clone_2_upvw.MainFrame.Poses.Levantado.Visible = false
	clone_2_upvw.MainFrame.Poses.Agaixado.Visible = true
	clone_2_upvw.MainFrame.Poses.Deitado.Visible = false
	if script.Parent:GetAttribute("Injured") then
		var1_upvr.Humanoid.WalkSpeed = module_3_upvr.InjuredCrouchWalkSpeed
		var1_upvr.Humanoid.JumpPower = 0
	else
		var1_upvr.Humanoid.WalkSpeed = module_3_upvr.CrouchWalkSpeed
		var1_upvr.Humanoid.JumpPower = 0
	end
	IsStanced = true -- Setting global
end
function Lean() -- Line 2199
	--[[ Upvalues[8]:
		[1]: TweenService_upvr (readonly)
		[2]: var1_upvr (readonly)
		[3]: var95_upvw (read and write)
		[4]: var96_upvw (read and write)
		[5]: Stance_upvr (readonly)
		[6]: var93_upvw (read and write)
		[7]: var94_upvw (read and write)
		[8]: clone_2_upvw (read and write)
	]]
	TweenService_upvr:Create(var1_upvr.Humanoid, TweenInfo.new(0.3), {
		CameraOffset = Vector3.new(var95_upvw, var96_upvw, 0);
	}):Play()
	Stance_upvr:FireServer(var93_upvw, var94_upvw)
	if var94_upvw == 0 then
		clone_2_upvw.MainFrame.Poses.Esg_Left.Visible = false
		clone_2_upvw.MainFrame.Poses.Esg_Right.Visible = false
	else
		if var94_upvw == 1 then
			clone_2_upvw.MainFrame.Poses.Esg_Left.Visible = false
			clone_2_upvw.MainFrame.Poses.Esg_Right.Visible = true
			return
		end
		if var94_upvw == -1 then
			clone_2_upvw.MainFrame.Poses.Esg_Left.Visible = true
			clone_2_upvw.MainFrame.Poses.Esg_Right.Visible = false
		end
	end
end
function EquipAnim() -- Line 2216
	--[[ Upvalues[7]:
		[1]: var46_upvw (read and write)
		[2]: var26_upvw (read and write)
		[3]: var32_upvw (read and write)
		[4]: var31_upvw (read and write)
		[5]: var33_upvw (read and write)
		[6]: var23_upvw (read and write)
		[7]: var27_upvw (read and write)
	]]
	var46_upvw = false
	pcall(function() -- Line 2218
		--[[ Upvalues[6]:
			[1]: var26_upvw (copied, read and write)
			[2]: var32_upvw (copied, read and write)
			[3]: var31_upvw (copied, read and write)
			[4]: var33_upvw (copied, read and write)
			[5]: var23_upvw (copied, read and write)
			[6]: var27_upvw (copied, read and write)
		]]
		var26_upvw.EquipAnim({var32_upvw, var31_upvw, var33_upvw, var23_upvw, var27_upvw})
	end)
	var46_upvw = true
end
function IdleAnim() -- Line 2231
	--[[ Upvalues[7]:
		[1]: var26_upvw (read and write)
		[2]: var32_upvw (read and write)
		[3]: var31_upvw (read and write)
		[4]: var33_upvw (read and write)
		[5]: var23_upvw (read and write)
		[6]: var27_upvw (read and write)
		[7]: var46_upvw (read and write)
	]]
	pcall(function() -- Line 2232
		--[[ Upvalues[6]:
			[1]: var26_upvw (copied, read and write)
			[2]: var32_upvw (copied, read and write)
			[3]: var31_upvw (copied, read and write)
			[4]: var33_upvw (copied, read and write)
			[5]: var23_upvw (copied, read and write)
			[6]: var27_upvw (copied, read and write)
		]]
		var26_upvw.IdleAnim({var32_upvw, var31_upvw, var33_upvw, var23_upvw, var27_upvw})
	end)
	var46_upvw = true
end
function SprintAnim() -- Line 2244
	--[[ Upvalues[7]:
		[1]: var46_upvw (read and write)
		[2]: var26_upvw (read and write)
		[3]: var32_upvw (read and write)
		[4]: var31_upvw (read and write)
		[5]: var33_upvw (read and write)
		[6]: var23_upvw (read and write)
		[7]: var27_upvw (read and write)
	]]
	var46_upvw = false
	pcall(function() -- Line 2246
		--[[ Upvalues[6]:
			[1]: var26_upvw (copied, read and write)
			[2]: var32_upvw (copied, read and write)
			[3]: var31_upvw (copied, read and write)
			[4]: var33_upvw (copied, read and write)
			[5]: var23_upvw (copied, read and write)
			[6]: var27_upvw (copied, read and write)
		]]
		var26_upvw.SprintAnim({var32_upvw, var31_upvw, var33_upvw, var23_upvw, var27_upvw})
	end)
end
function HighReady() -- Line 2257
	--[[ Upvalues[6]:
		[1]: var26_upvw (read and write)
		[2]: var32_upvw (read and write)
		[3]: var31_upvw (read and write)
		[4]: var33_upvw (read and write)
		[5]: var23_upvw (read and write)
		[6]: var27_upvw (read and write)
	]]
	pcall(function() -- Line 2258
		--[[ Upvalues[6]:
			[1]: var26_upvw (copied, read and write)
			[2]: var32_upvw (copied, read and write)
			[3]: var31_upvw (copied, read and write)
			[4]: var33_upvw (copied, read and write)
			[5]: var23_upvw (copied, read and write)
			[6]: var27_upvw (copied, read and write)
		]]
		var26_upvw.HighReady({var32_upvw, var31_upvw, var33_upvw, var23_upvw, var27_upvw})
	end)
end
function CantedSightAnim() -- Line 2269
	--[[ Upvalues[6]:
		[1]: var26_upvw (read and write)
		[2]: var32_upvw (read and write)
		[3]: var31_upvw (read and write)
		[4]: var33_upvw (read and write)
		[5]: var23_upvw (read and write)
		[6]: var27_upvw (read and write)
	]]
	pcall(function() -- Line 2270
		--[[ Upvalues[6]:
			[1]: var26_upvw (copied, read and write)
			[2]: var32_upvw (copied, read and write)
			[3]: var31_upvw (copied, read and write)
			[4]: var33_upvw (copied, read and write)
			[5]: var23_upvw (copied, read and write)
			[6]: var27_upvw (copied, read and write)
		]]
		var26_upvw.CantedSight({var32_upvw, var31_upvw, var33_upvw, var23_upvw, var27_upvw})
	end)
end
function LowReady() -- Line 2281
	--[[ Upvalues[6]:
		[1]: var26_upvw (read and write)
		[2]: var32_upvw (read and write)
		[3]: var31_upvw (read and write)
		[4]: var33_upvw (read and write)
		[5]: var23_upvw (read and write)
		[6]: var27_upvw (read and write)
	]]
	pcall(function() -- Line 2282
		--[[ Upvalues[6]:
			[1]: var26_upvw (copied, read and write)
			[2]: var32_upvw (copied, read and write)
			[3]: var31_upvw (copied, read and write)
			[4]: var33_upvw (copied, read and write)
			[5]: var23_upvw (copied, read and write)
			[6]: var27_upvw (copied, read and write)
		]]
		var26_upvw.LowReady({var32_upvw, var31_upvw, var33_upvw, var23_upvw, var27_upvw})
	end)
end
function Patrol() -- Line 2293
	--[[ Upvalues[6]:
		[1]: var26_upvw (read and write)
		[2]: var32_upvw (read and write)
		[3]: var31_upvw (read and write)
		[4]: var33_upvw (read and write)
		[5]: var23_upvw (read and write)
		[6]: var27_upvw (read and write)
	]]
	pcall(function() -- Line 2294
		--[[ Upvalues[6]:
			[1]: var26_upvw (copied, read and write)
			[2]: var32_upvw (copied, read and write)
			[3]: var31_upvw (copied, read and write)
			[4]: var33_upvw (copied, read and write)
			[5]: var23_upvw (copied, read and write)
			[6]: var27_upvw (copied, read and write)
		]]
		var26_upvw.Patrol({var32_upvw, var31_upvw, var33_upvw, var23_upvw, var27_upvw})
	end)
end
function ReloadAnim() -- Line 2305
	--[[ Upvalues[6]:
		[1]: var26_upvw (read and write)
		[2]: var32_upvw (read and write)
		[3]: var31_upvw (read and write)
		[4]: var33_upvw (read and write)
		[5]: var23_upvw (read and write)
		[6]: var27_upvw (read and write)
	]]
	pcall(function() -- Line 2306
		--[[ Upvalues[6]:
			[1]: var26_upvw (copied, read and write)
			[2]: var32_upvw (copied, read and write)
			[3]: var31_upvw (copied, read and write)
			[4]: var33_upvw (copied, read and write)
			[5]: var23_upvw (copied, read and write)
			[6]: var27_upvw (copied, read and write)
		]]
		var26_upvw.ReloadAnim({var32_upvw, var31_upvw, var33_upvw, var23_upvw, var27_upvw})
	end)
end
function TacticalReloadAnim() -- Line 2317
	--[[ Upvalues[6]:
		[1]: var26_upvw (read and write)
		[2]: var32_upvw (read and write)
		[3]: var31_upvw (read and write)
		[4]: var33_upvw (read and write)
		[5]: var23_upvw (read and write)
		[6]: var27_upvw (read and write)
	]]
	pcall(function() -- Line 2318
		--[[ Upvalues[6]:
			[1]: var26_upvw (copied, read and write)
			[2]: var32_upvw (copied, read and write)
			[3]: var31_upvw (copied, read and write)
			[4]: var33_upvw (copied, read and write)
			[5]: var23_upvw (copied, read and write)
			[6]: var27_upvw (copied, read and write)
		]]
		var26_upvw.TacticalReloadAnim({var32_upvw, var31_upvw, var33_upvw, var23_upvw, var27_upvw})
	end)
end
function JammedAnim() -- Line 2329
	--[[ Upvalues[6]:
		[1]: var26_upvw (read and write)
		[2]: var32_upvw (read and write)
		[3]: var31_upvw (read and write)
		[4]: var33_upvw (read and write)
		[5]: var23_upvw (read and write)
		[6]: var27_upvw (read and write)
	]]
	pcall(function() -- Line 2330
		--[[ Upvalues[6]:
			[1]: var26_upvw (copied, read and write)
			[2]: var32_upvw (copied, read and write)
			[3]: var31_upvw (copied, read and write)
			[4]: var33_upvw (copied, read and write)
			[5]: var23_upvw (copied, read and write)
			[6]: var27_upvw (copied, read and write)
		]]
		var26_upvw.JammedAnim({var32_upvw, var31_upvw, var33_upvw, var23_upvw, var27_upvw})
	end)
end
function PumpAnim() -- Line 2341
	--[[ Upvalues[7]:
		[1]: var44_upvw (read and write)
		[2]: var26_upvw (read and write)
		[3]: var32_upvw (read and write)
		[4]: var31_upvw (read and write)
		[5]: var33_upvw (read and write)
		[6]: var23_upvw (read and write)
		[7]: var27_upvw (read and write)
	]]
	var44_upvw = true
	pcall(function() -- Line 2343
		--[[ Upvalues[6]:
			[1]: var26_upvw (copied, read and write)
			[2]: var32_upvw (copied, read and write)
			[3]: var31_upvw (copied, read and write)
			[4]: var33_upvw (copied, read and write)
			[5]: var23_upvw (copied, read and write)
			[6]: var27_upvw (copied, read and write)
		]]
		var26_upvw.PumpAnim({var32_upvw, var31_upvw, var33_upvw, var23_upvw, var27_upvw})
	end)
	var44_upvw = false
end
function MagCheckAnim() -- Line 2355
	--[[ Upvalues[6]:
		[1]: var26_upvw (read and write)
		[2]: var32_upvw (read and write)
		[3]: var31_upvw (read and write)
		[4]: var33_upvw (read and write)
		[5]: var23_upvw (read and write)
		[6]: var27_upvw (read and write)
	]]
	CheckingMag = true -- Setting global
	pcall(function() -- Line 2357
		--[[ Upvalues[6]:
			[1]: var26_upvw (copied, read and write)
			[2]: var32_upvw (copied, read and write)
			[3]: var31_upvw (copied, read and write)
			[4]: var33_upvw (copied, read and write)
			[5]: var23_upvw (copied, read and write)
			[6]: var27_upvw (copied, read and write)
		]]
		var26_upvw.MagCheck({var32_upvw, var31_upvw, var33_upvw, var23_upvw, var27_upvw})
	end)
	CheckingMag = false -- Setting global
end
function meleeAttack() -- Line 2369
	--[[ Upvalues[6]:
		[1]: var26_upvw (read and write)
		[2]: var32_upvw (read and write)
		[3]: var31_upvw (read and write)
		[4]: var33_upvw (read and write)
		[5]: var23_upvw (read and write)
		[6]: var27_upvw (read and write)
	]]
	pcall(function() -- Line 2370
		--[[ Upvalues[6]:
			[1]: var26_upvw (copied, read and write)
			[2]: var32_upvw (copied, read and write)
			[3]: var31_upvw (copied, read and write)
			[4]: var33_upvw (copied, read and write)
			[5]: var23_upvw (copied, read and write)
			[6]: var27_upvw (copied, read and write)
		]]
		var26_upvw.meleeAttack({var32_upvw, var31_upvw, var33_upvw, var23_upvw, var27_upvw})
	end)
end
function GrenadeReady() -- Line 2381
	--[[ Upvalues[6]:
		[1]: var26_upvw (read and write)
		[2]: var32_upvw (read and write)
		[3]: var31_upvw (read and write)
		[4]: var33_upvw (read and write)
		[5]: var23_upvw (read and write)
		[6]: var27_upvw (read and write)
	]]
	pcall(function() -- Line 2382
		--[[ Upvalues[6]:
			[1]: var26_upvw (copied, read and write)
			[2]: var32_upvw (copied, read and write)
			[3]: var31_upvw (copied, read and write)
			[4]: var33_upvw (copied, read and write)
			[5]: var23_upvw (copied, read and write)
			[6]: var27_upvw (copied, read and write)
		]]
		var26_upvw.GrenadeReady({var32_upvw, var31_upvw, var33_upvw, var23_upvw, var27_upvw})
	end)
end
function GrenadeThrow() -- Line 2393
	--[[ Upvalues[6]:
		[1]: var26_upvw (read and write)
		[2]: var32_upvw (read and write)
		[3]: var31_upvw (read and write)
		[4]: var33_upvw (read and write)
		[5]: var23_upvw (read and write)
		[6]: var27_upvw (read and write)
	]]
	pcall(function() -- Line 2394
		--[[ Upvalues[6]:
			[1]: var26_upvw (copied, read and write)
			[2]: var32_upvw (copied, read and write)
			[3]: var31_upvw (copied, read and write)
			[4]: var33_upvw (copied, read and write)
			[5]: var23_upvw (copied, read and write)
			[6]: var27_upvw (copied, read and write)
		]]
		var26_upvw.GrenadeThrow({var32_upvw, var31_upvw, var33_upvw, var23_upvw, var27_upvw})
	end)
end
ContextActionService_upvr:BindAction("Run", handleAction, false, Enum.KeyCode.LeftShift, Enum.KeyCode.ButtonR1)
local any_CreateButton_result1_3 = module_4.CreateButton("ToggleWalk", "Sprinting", UDim2.new(-2.07, 0, -0.07, 0), "rbxassetid://17052924675", Color3.fromRGB(0, 0, 255))
if any_CreateButton_result1_3 then
	any_CreateButton_result1_3.Event:Connect(handleAction)
end
ContextActionService_upvr:SetPosition("Run", UDim2.new(-2.07, 0, -0.07, 0))
ContextActionService_upvr:SetTitle("Run", "Sprint")
ContextActionService_upvr:SetImage("Run", "rbxassetid://17052924675")
local any_GetButton_result1_5 = ContextActionService_upvr:GetButton("Run")
if any_GetButton_result1_5 then
	any_GetButton_result1_5.ImageColor3 = Color3.fromRGB(0, 0, 255)
	any_GetButton_result1_5.ImageTransparency = 0.5
end
ContextActionService_upvr:BindAction("Stand", handleAction, false, Enum.KeyCode.World90)
ContextActionService_upvr:BindAction("Crouch", handleAction, false, Enum.KeyCode.LeftControl, Enum.KeyCode.ButtonL1)
local any_CreateButton_result1_2_upvr = module_4.CreateButton("Crouch", "Crouch", UDim2.new(-2.32, 0, -0.07, 0), "rbxassetid://17053009667", Color3.fromRGB(170, 0, 255))
if any_CreateButton_result1_2_upvr then
	any_CreateButton_result1_2_upvr.Event:Connect(handleAction)
end
ContextActionService_upvr:SetPosition("Crouch", UDim2.new(0, -493, 0, -105))
ContextActionService_upvr:SetTitle("Crouch", "Crouch")
ContextActionService_upvr:SetImage("Crouch", "rbxassetid://17053009667")
local any_GetButton_result1_4 = ContextActionService_upvr:GetButton("Crouch")
if any_GetButton_result1_4 then
	any_GetButton_result1_4.ImageColor3 = Color3.fromRGB(170, 0, 255)
	any_GetButton_result1_4.ImageTransparency = 0.5
end
local any_CreateButton_result1_6 = module_4.CreateButton("Fire", "Fire", UDim2.new(0.2, 0, 0.12, 0), "rbxassetid://17052695030", Color3.fromRGB(170, 85, 0))
if any_CreateButton_result1_6 then
	any_CreateButton_result1_6.Event:Connect(handleAction)
end
local any_CreateButton_result1_5 = module_4.CreateButton("Reload", "Reload", UDim2.new(0.2, 0, 0.5, 0), "rbxassetid://17052535666", Color3.fromRGB(255, 255, 0))
if any_CreateButton_result1_5 then
	any_CreateButton_result1_5.Event:Connect(handleAction)
end
local any_CreateButton_result1_9 = module_4.CreateButton("ADS", "Scope", UDim2.new(0.6, 0, 0.2, 0), "rbxassetid://17052695030", Color3.fromRGB(170, 85, 255))
if any_CreateButton_result1_9 then
	any_CreateButton_result1_9.Event:Connect(handleAction)
end
local any_CreateButton_result1_8 = module_4.CreateButton("LeanLeft", "Lean Left", UDim2.new(0.45, 0, -0.21, 0), "rbxassetid://17053133578", Color3.fromRGB(0, 170, 127))
if any_CreateButton_result1_8 then
	any_CreateButton_result1_8.Event:Connect(handleAction)
end
local any_CreateButton_result1_4 = module_4.CreateButton("LeanRight", "Lean Right", UDim2.new(0.71, 0, -0.21, 0), "rbxassetid://17056303684", Color3.fromRGB(0, 170, 127))
if any_CreateButton_result1_4 then
	any_CreateButton_result1_4.Event:Connect(handleAction)
end
ContextActionService_upvr:BindAction("ToggleWalk", handleAction, false, Enum.KeyCode.World90)
ContextActionService_upvr:BindAction("LeanLeft", handleAction, false, Enum.KeyCode.Q, Enum.KeyCode.DPadLeft)
ContextActionService_upvr:SetPosition("LeanLeft", UDim2.new(0, 95, 0, -71))
ContextActionService_upvr:SetTitle("LeanLeft", "Lean Left")
ContextActionService_upvr:SetImage("LeanLeft", "rbxassetid://17053133578")
local any_GetButton_result1_3 = ContextActionService_upvr:GetButton("LeanLeft")
if any_GetButton_result1_3 then
	any_GetButton_result1_3.ImageColor3 = Color3.fromRGB(0, 170, 127)
	any_GetButton_result1_3.ImageTransparency = 0.5
end
ContextActionService_upvr:BindAction("LeanRight", handleAction, false, Enum.KeyCode.E, Enum.KeyCode.DPadRight)
ContextActionService_upvr:SetPosition("LeanRight", UDim2.new(0, 157, 0, -70))
ContextActionService_upvr:SetTitle("LeanRight", "Lean Right")
ContextActionService_upvr:SetImage("LeanRight", "rbxassetid://17053133578")
local any_GetButton_result1_6 = ContextActionService_upvr:GetButton("LeanRight")
if any_GetButton_result1_6 then
	any_GetButton_result1_6.ImageColor3 = Color3.fromRGB(255, 255, 255)
	any_GetButton_result1_6.ImageTransparency = 0.5
end
local any_CreateButton_result1_7 = module_4.CreateButton("CycleLaser", "Laser", UDim2.new(0.71, 0, -0.5, 0), "rbxassetid://17052766160", Color3.fromRGB(255, 0, 0))
if any_CreateButton_result1_7 then
	any_CreateButton_result1_7.Event:Connect(handleAction)
end
local any_CreateButton_result1 = module_4.CreateButton("CycleLight", "Flashlight", UDim2.new(0.45, 0, -0.5, 0), "rbxassetid://17052855432", Color3.fromRGB(255, 255, 255))
if any_CreateButton_result1 then
	any_CreateButton_result1.Event:Connect(handleAction)
end
local var358_upvw
var1_upvr.ChildAdded:connect(function(arg1) -- Line 2504
	--[[ Upvalues[4]:
		[1]: Humanoid_upvr (readonly)
		[2]: var72_upvw (read and write)
		[3]: var1_upvr (readonly)
		[4]: var358_upvw (read and write)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local function INLINED() -- Internal function, doesn't exist in bytecode
		local var359
		return var359 ~= nil
	end
	if arg1:IsA("Tool") and 0 < Humanoid_upvr.Health and not var72_upvw and INLINED() and (require(arg1.ACS_Settings).Type == "Gun" or require(arg1.ACS_Settings).Type == "Melee" or require(arg1.ACS_Settings).Type == "Grenade") then
		if var1_upvr:WaitForChild("Humanoid").Sit and var1_upvr.Humanoid.SeatPart:IsA("VehicleSeat") or var1_upvr:WaitForChild("Humanoid").Sit and var1_upvr.Humanoid.SeatPart:IsA("VehicleSeat") then
		end
		if false then
			var358_upvw = arg1
			if not var72_upvw then
				setup(arg1)
				return
			end
			if var72_upvw then
				pcall(function() -- Line 2519
					--[[ Upvalues[1]:
						[1]: arg1 (readonly)
					]]
					unset()
					setup(arg1)
				end)
			end
		end
	end
end)
var1_upvr.ChildRemoved:connect(function(arg1) -- Line 2529
	--[[ Upvalues[2]:
		[1]: var24_upvw (read and write)
		[2]: var72_upvw (read and write)
	]]
	if arg1 == var24_upvw then
		if var72_upvw then
			unset()
		end
	end
end)
Humanoid_upvr.Running:Connect(function(arg1) -- Line 2537
	--[[ Upvalues[2]:
		[1]: var39_upvw (read and write)
		[2]: var40_upvw (read and write)
	]]
	var39_upvw = arg1
	if 0.1 < arg1 then
		var40_upvw = true
	else
		var40_upvw = false
	end
end)
Humanoid_upvr.Swimming:Connect(function(arg1) -- Line 2546
	--[[ Upvalues[3]:
		[1]: var98_upvw (read and write)
		[2]: var39_upvw (read and write)
		[3]: var40_upvw (read and write)
	]]
	if var98_upvw then
		var39_upvw = arg1
		if 0.1 < arg1 then
			var40_upvw = true
			return
		end
		var40_upvw = false
	end
end)
local var365_upvw = 0
Humanoid_upvr.Died:Connect(function(arg1) -- Line 2557
	--[[ Upvalues[10]:
		[1]: TweenService_upvr (readonly)
		[2]: var1_upvr (readonly)
		[3]: var100_upvw (read and write)
		[4]: var93_upvw (read and write)
		[5]: var94_upvw (read and write)
		[6]: var95_upvw (read and write)
		[7]: var96_upvw (read and write)
		[8]: var365_upvw (read and write)
		[9]: var51_upvw (read and write)
		[10]: Events_upvr (readonly)
	]]
	TweenService_upvr:Create(var1_upvr.Humanoid, TweenInfo.new(1), {
		CameraOffset = Vector3.new(0, 0, 0);
	}):Play()
	var100_upvw = false
	Stand()
	var93_upvw = 0
	var94_upvw = 0
	var95_upvw = 0
	var96_upvw = 0
	Lean()
	var365_upvw = 0
	var51_upvw = 0
	unset()
	Events_upvr.NVG:Fire(false)
end)
Humanoid_upvr.Seated:Connect(function(arg1, arg2) -- Line 2572
	--[[ Upvalues[9]:
		[1]: Humanoid_upvr (readonly)
		[2]: var99_upvw (read and write)
		[3]: LocalPlayer_upvr (readonly)
		[4]: module_3_upvr (readonly)
		[5]: var97_upvw (read and write)
		[6]: var93_upvw (read and write)
		[7]: var94_upvw (read and write)
		[8]: var95_upvw (read and write)
		[9]: var96_upvw (read and write)
	]]
	if arg1 and arg2 then
		if arg2:IsA("VehicleSeat") then
			unset()
			Humanoid_upvr:UnequipTools()
			var99_upvw = false
			LocalPlayer_upvr.CameraMaxZoomDistance = module_3_upvr.VehicleMaxZoom
			-- KONSTANTWARNING: GOTO [32] #24
		end
	end
	LocalPlayer_upvr.CameraMaxZoomDistance = game.StarterPlayer.CameraMaxZoomDistance
	if arg1 then
		var97_upvw = true
		var93_upvw = 0
		var94_upvw = 0
		var95_upvw = 0
		var96_upvw = 0
		Stand()
		Lean()
	else
		var97_upvw = false
		var99_upvw = true
	end
end)
local var369_upvw = false
Humanoid_upvr.Changed:connect(function(arg1) -- Line 2597
	--[[ Upvalues[3]:
		[1]: module_3_upvr (readonly)
		[2]: Humanoid_upvr (readonly)
		[3]: var369_upvw (read and write)
	]]
	if module_3_upvr.AntiBunnyHop then
		if arg1 == "Jump" and Humanoid_upvr.Sit == true and Humanoid_upvr.SeatPart ~= nil then
			Humanoid_upvr.Sit = false
			return
		end
		if arg1 == "Jump" and Humanoid_upvr.Sit == false then
			if var369_upvw then
				Humanoid_upvr.Jump = false
				return false
			end
			var369_upvw = true
			delay(0, function() -- Line 2607
				--[[ Upvalues[2]:
					[1]: module_3_upvr (copied, readonly)
					[2]: var369_upvw (copied, read and write)
				]]
				wait(module_3_upvr.JumpCoolDown)
				var369_upvw = false
			end)
		end
	end
end)
local var372_upvw = false
local HumanoidRootPart_upvr = var1_upvr:WaitForChild("HumanoidRootPart")
local FX_upvr = ACS_Engine:WaitForChild("FX")
local Debris_upvr = game:GetService("Debris")
Humanoid_upvr.StateChanged:connect(function(arg1, arg2) -- Line 2615
	--[[ Upvalues[17]:
		[1]: var98_upvw (read and write)
		[2]: var93_upvw (read and write)
		[3]: var94_upvw (read and write)
		[4]: var95_upvw (read and write)
		[5]: var96_upvw (read and write)
		[6]: module_3_upvr (readonly)
		[7]: var372_upvw (read and write)
		[8]: HumanoidRootPart_upvr (readonly)
		[9]: module_upvr (readonly)
		[10]: any_InvokeServer_result1_upvr (readonly)
		[11]: LocalPlayer_upvr (readonly)
		[12]: any_new_result1_upvr (readonly)
		[13]: any_new_result1_upvr_2 (readonly)
		[14]: FX_upvr (readonly)
		[15]: Humanoid_upvr (readonly)
		[16]: Debris_upvr (readonly)
		[17]: Events_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 25 start (CF ANALYSIS FAILED)
	if arg2 == Enum.HumanoidStateType.Swimming then
		var98_upvw = true
		var93_upvw = 0
		var94_upvw = 0
		var95_upvw = 0
		var96_upvw = 0
		Stand()
		Lean()
	else
		var98_upvw = false
	end
	local var376 = module_3_upvr
	local EnableFallDamage = var376.EnableFallDamage
	-- KONSTANTERROR: [0] 1. Error Block 25 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [50] 41. Error Block 21 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [50] 41. Error Block 21 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [61] 49. Error Block 13 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [61] 49. Error Block 13 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [146] 115. Error Block 23 start (CF ANALYSIS FAILED)
	if arg2 == Enum.HumanoidStateType.Landed or arg2 == Enum.HumanoidStateType.Dead then
		var372_upvw = false
		any_new_result1_upvr_2:accelerate(Vector3.new(0, 2.5, 0))
	end
	-- KONSTANTERROR: [146] 115. Error Block 23 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [161] 125. Error Block 19 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [161] 125. Error Block 19 end (CF ANALYSIS FAILED)
end)
mouse.WheelBackward:Connect(function() -- Line 2663
	--[[ Upvalues[11]:
		[1]: var72_upvw (read and write)
		[2]: var42_upvw (read and write)
		[3]: var44_upvw (read and write)
		[4]: var46_upvw (read and write)
		[5]: var25_upvw (read and write)
		[6]: var51_upvw (read and write)
		[7]: var45_upvw (read and write)
		[8]: var49_upvw (read and write)
		[9]: var48_upvw (read and write)
		[10]: Events_upvr (readonly)
		[11]: var26_upvw (read and write)
	]]
	if var72_upvw then
		if not CheckingMag and not var42_upvw then
			if not var44_upvw and var46_upvw and var25_upvw.Type == "Gun" and var51_upvw == 0 then
				var45_upvw = false
				if var49_upvw == 0 then
					var48_upvw = true
					var49_upvw = -1
					UpdateGui()
					Events_upvr.GunStance:FireServer(var49_upvw, var26_upvw)
					LowReady()
					return
				end
				if var49_upvw == -1 then
					var48_upvw = true
					var49_upvw = -2
					UpdateGui()
					Events_upvr.GunStance:FireServer(var49_upvw, var26_upvw)
					Patrol()
					return
				end
				if var49_upvw == 1 then
					var48_upvw = false
					var49_upvw = 0
					UpdateGui()
					Events_upvr.GunStance:FireServer(var49_upvw, var26_upvw)
					IdleAnim()
				end
			end
		end
	end
end)
mouse.WheelForward:Connect(function() -- Line 2697
	--[[ Upvalues[11]:
		[1]: var72_upvw (read and write)
		[2]: var42_upvw (read and write)
		[3]: var44_upvw (read and write)
		[4]: var46_upvw (read and write)
		[5]: var25_upvw (read and write)
		[6]: var45_upvw (read and write)
		[7]: var49_upvw (read and write)
		[8]: var48_upvw (read and write)
		[9]: var51_upvw (read and write)
		[10]: Events_upvr (readonly)
		[11]: var26_upvw (read and write)
	]]
	if var72_upvw then
		if not CheckingMag and not var42_upvw then
			if not var44_upvw and var46_upvw and var25_upvw.Type == "Gun" then
				var45_upvw = false
				if var49_upvw == 0 then
					var48_upvw = true
					var51_upvw = 0
					var49_upvw = 1
					UpdateGui()
					Events_upvr.GunStance:FireServer(var49_upvw, var26_upvw)
					HighReady()
					return
				end
				if var49_upvw == -1 then
					var48_upvw = false
					var51_upvw = 0
					var49_upvw = 0
					UpdateGui()
					Events_upvr.GunStance:FireServer(var49_upvw, var26_upvw)
					IdleAnim()
					return
				end
				if var49_upvw == -2 then
					var48_upvw = true
					var51_upvw = 0
					var49_upvw = -1
					UpdateGui()
					Events_upvr.GunStance:FireServer(var49_upvw, var26_upvw)
					LowReady()
				end
			end
		end
	end
end)
script.Parent:GetAttributeChangedSignal("Injured"):Connect(function() -- Line 2733
	--[[ Upvalues[8]:
		[1]: var41_upvw (read and write)
		[2]: var44_upvw (read and write)
		[3]: var25_upvw (read and write)
		[4]: var49_upvw (read and write)
		[5]: Events_upvr (readonly)
		[6]: var26_upvw (read and write)
		[7]: var93_upvw (read and write)
		[8]: any_CreateButton_result1_2_upvr (readonly)
	]]
	if script.Parent:GetAttribute("Injured") then
		local function INLINED_2() -- Internal function, doesn't exist in bytecode
			Stand()
			var41_upvw = false
			return CheckingMag
		end
		if var41_upvw and not INLINED_2() and not var44_upvw and var25_upvw and var25_upvw.Type ~= "Grenade" and (var49_upvw == 0 or var49_upvw == 2 or var49_upvw == 3) then
			var49_upvw = 0
			Events_upvr.GunStance:FireServer(var49_upvw, var26_upvw)
			IdleAnim()
		end
	end
	if var93_upvw == 0 then
		Stand()
	elseif var93_upvw == 1 then
		any_CreateButton_result1_2_upvr()
	end
end)
TweenService_upvr:Create(clone_2_upvw.Efeitos.Health, TweenInfo.new(1, Enum.EasingStyle.Circular, Enum.EasingDirection.InOut, -1, true), {
	Size = UDim2.new(1.2, 0, 1.4, 0);
}):Play()
TweenService_upvr:Create(clone_2_upvw.Efeitos.LowHealth, TweenInfo.new(1, Enum.EasingStyle.Circular, Enum.EasingDirection.InOut, -1, true), {
	Size = UDim2.new(1.2, 0, 1.4, 0);
}):Play()
Humanoid_upvr.HealthChanged:Connect(function(arg1) -- Line 2759
	--[[ Upvalues[2]:
		[1]: clone_2_upvw (read and write)
		[2]: Humanoid_upvr (readonly)
	]]
	if workspace:GetAttribute("GameOver") == true then
		clone_2_upvw.Efeitos.Health.ImageTransparency = 1
		clone_2_upvw.Efeitos.LowHealth.ImageTransparency = 1
	else
		clone_2_upvw.Efeitos.Health.ImageTransparency = (arg1 - Humanoid_upvr.MaxHealth / 2) / (Humanoid_upvr.MaxHealth / 2)
		clone_2_upvw.Efeitos.LowHealth.ImageTransparency = (arg1) / (Humanoid_upvr.MaxHealth / 2)
	end
end)
local cframe_upvr = CFrame.new(0, 0, -0.5)
local zero_cframe_upvw_4 = CFrame.new()
local zero_cframe_upvr = CFrame.new()
RunService_upvr.RenderStepped:Connect(function(arg1) -- Line 2772
	--[[ Upvalues[46]:
		[1]: var27_upvw (read and write)
		[2]: var29_upvw (read and write)
		[3]: var30_upvw (read and write)
		[4]: var23_upvw (read and write)
		[5]: UserInputService_upvr (readonly)
		[6]: any_new_result1_upvr_2 (readonly)
		[7]: var67_upvw (read and write)
		[8]: var58_upvw (read and write)
		[9]: tbl_3_upvr (readonly)
		[10]: var68_upvw (read and write)
		[11]: var69_upvw (read and write)
		[12]: var41_upvw (read and write)
		[13]: var49_upvw (read and write)
		[14]: TweenService_upvr (readonly)
		[15]: clone_2_upvw (read and write)
		[16]: var42_upvw (read and write)
		[17]: zero_cframe_upvw_2 (read and write)
		[18]: var28_upvw (read and write)
		[19]: CurrentCamera_upvr (readonly)
		[20]: cframe_upvr (readonly)
		[21]: zero_cframe_upvw_3 (read and write)
		[22]: zero_cframe_upvw_4 (read and write)
		[23]: zero_cframe_upvr (readonly)
		[24]: var26_upvw (read and write)
		[25]: zero_cframe_upvw (read and write)
		[26]: var40_upvw (read and write)
		[27]: var39_upvw (read and write)
		[28]: var54_upvw (read and write)
		[29]: var46_upvw (read and write)
		[30]: var50_upvw (read and write)
		[31]: TweenInfo_new_result1_upvr (readonly)
		[32]: tbl_10_upvr (readonly)
		[33]: zero_cframe_upvw_6 (read and write)
		[34]: any_new_result1_upvr_3 (readonly)
		[35]: var35_upvw (read and write)
		[36]: time_result1_upvw (read and write)
		[37]: var25_upvw (read and write)
		[38]: var43_upvw (read and write)
		[39]: var36_upvw (read and write)
		[40]: var61_upvw (read and write)
		[41]: var64_upvw (read and write)
		[42]: module_3_upvr (readonly)
		[43]: var62_upvw (read and write)
		[44]: var208_upvw (read and write)
		[45]: Events_upvr (readonly)
		[46]: var24_upvw (read and write)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	HeadMovement()
	renderGunRecoil()
	renderCam()
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [11] 9. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [11] 9. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [13] 11. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [13] 11. Error Block 3 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [15] 13. Error Block 4 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [15] 13. Error Block 4 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [689] 523. Error Block 51 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [689] 523. Error Block 51 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [691] 525. Error Block 52 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [691] 525. Error Block 52 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [739] 560. Error Block 97 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [741.11]
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	local workspace_FindPartOnRayWithIgnoreList_result1, workspace_FindPartOnRayWithIgnoreList_result2, workspace_FindPartOnRayWithIgnoreList_result3 = workspace:FindPartOnRayWithIgnoreList(Ray.new(nil.CFrame.Position, nil.CFrame.LookVector * 1000), tbl_3_upvr, false, true)
	if workspace_FindPartOnRayWithIgnoreList_result1 then
		var64_upvw.CFrame = CFrame.new(workspace_FindPartOnRayWithIgnoreList_result2, workspace_FindPartOnRayWithIgnoreList_result2 + workspace_FindPartOnRayWithIgnoreList_result3)
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
		var64_upvw.CFrame = CFrame.new(CurrentCamera_upvr.CFrame.Position + nil.CFrame.LookVector * 2000, nil.CFrame.LookVector)
	end
	-- KONSTANTERROR: [739] 560. Error Block 97 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [793] 597. Error Block 69 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [793] 597. Error Block 69 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [813] 612. Error Block 72 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [813] 612. Error Block 72 end (CF ANALYSIS FAILED)
end)
Events_upvr.Refil.OnClientEvent:Connect(function(arg1, arg2, arg3) -- Line 2965
	--[[ Upvalues[2]:
		[1]: var22_upvw (read and write)
		[2]: Events_upvr (readonly)
	]]
	local ACS_Settings = require(arg1.ACS_Settings)
	local minimum = math.min(ACS_Settings.MaxStoredAmmo - var22_upvw, arg3.Value)
	var22_upvw += minimum
	ACS_Settings.StoredAmmo = var22_upvw
	UpdateGui()
	if not arg2 then
		Events_upvr.Refil:FireServer(arg3, minimum)
	end
end)