-- Name: ACS_EventHandler
-- Path: game:GetService("StarterPlayer").StarterPlayerScripts.ACS_EventHandler
-- Class: LocalScript
-- Exploit: Xeno 
-- Time to decompile: 0.2620167000004585 seconds

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 07:17:00
-- Luau version 6, Types version 3
-- Time taken: 0.045409 seconds

local LocalPlayer_upvr = game.Players.LocalPlayer
local CurrentCamera_upvr = workspace.CurrentCamera
local TweenService_upvr = game:GetService("TweenService")
local Debris_upvr = game:GetService("Debris")
local ACS_WorkSpace_upvr = workspace:WaitForChild("ACS_WorkSpace")
local ACS_Engine = game.ReplicatedStorage:WaitForChild("ACS_Engine")
local Events_upvr = ACS_Engine:WaitForChild("Events")
local tbl_upvr_2 = {"5209157502"}
local tbl_upvr = {CurrentCamera_upvr, LocalPlayer_upvr.Character, ACS_WorkSpace_upvr.Client, ACS_WorkSpace_upvr.Server}
local module_upvr = require(ACS_Engine:WaitForChild("Modules"):WaitForChild("Hitmarker"))
Events_upvr.HitEffect.OnClientEvent:Connect(function(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 39
	--[[ Upvalues[3]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: tbl_upvr (readonly)
	]]
	if arg1 ~= LocalPlayer_upvr then
		module_upvr.HitEffect(tbl_upvr, arg2, arg3, arg4, arg5, arg6)
	end
end)
Events_upvr.Atirar.OnClientEvent:Connect(function(arg1, arg2, arg3, arg4) -- Line 45
	--[[ Upvalues[2]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: TweenService_upvr (readonly)
	]]
	if arg1 ~= LocalPlayer_upvr and arg2 then
		if arg1.Character:FindFirstChild('S'..arg2.Name) and arg1.Character:FindFirstChild('S'..arg2.Name).Handle:FindFirstChild("Muzzle") then
			local Muzzle = arg1.Character:FindFirstChild('S'..arg2.Name).Handle.Muzzle
			if arg3 then
				Muzzle.Supressor:Play()
			else
				Muzzle.Fire:Play()
			end
			if arg4 then
				Muzzle.Smoke:Emit(10)
			else
				Muzzle["FlashFX[Flash]"]:Emit(10)
				Muzzle.Smoke:Emit(10)
			end
		end
		if arg1.Character:FindFirstChild("AnimBase") ~= nil and arg1.Character.AnimBase:FindFirstChild("AnimBaseW") then
			local AnimBaseW_upvr = arg1.Character:WaitForChild("AnimBase"):WaitForChild("AnimBaseW")
			TweenService_upvr:Create(AnimBaseW_upvr, TweenInfo.new(0.05, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, 0, false, 0), {
				C1 = CFrame.new(0, 0, 0.15):Inverse();
			}):Play()
			delay(0.1, function() -- Line 68
				--[[ Upvalues[2]:
					[1]: TweenService_upvr (copied, readonly)
					[2]: AnimBaseW_upvr (readonly)
				]]
				TweenService_upvr:Create(AnimBaseW_upvr, TweenInfo.new(0.05, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, 0, false, 0), {
					C1 = CFrame.new():Inverse();
				}):Play()
			end)
		end
	end
end)
Events_upvr.SVLaser.OnClientEvent:Connect(function(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 75
	--[[ Upvalues[2]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: ACS_WorkSpace_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [3] 3. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [3] 3. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 5. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 5. Error Block 3 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [123] 84. Error Block 9 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [123] 84. Error Block 9 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [134] 92. Error Block 23 start (CF ANALYSIS FAILED)
	local SOME_2 = ACS_WorkSpace_upvr.Server:FindFirstChild(arg1.Name.."_Laser")
	SOME_2.Shape = "Ball"
	SOME_2.Size = Vector3.new(0.20000, 0.20000, 0.20000)
	SOME_2.CanCollide = false
	SOME_2.Anchored = true
	SOME_2.Color = arg4
	SOME_2.Material = Enum.Material.Neon
	SOME_2.Position = arg2
	if arg5 then
		SOME_2.Transparency = 1
	else
		SOME_2.Transparency = 0
	end
	-- KONSTANTERROR: [134] 92. Error Block 23 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [183] 125. Error Block 20 start (CF ANALYSIS FAILED)
	if arg3 == 2 and ACS_WorkSpace_upvr.Server:FindFirstChild(arg1.Name.."_Laser") then
		ACS_WorkSpace_upvr.Server:FindFirstChild(arg1.Name.."_Laser"):Destroy()
	end
	-- KONSTANTERROR: [183] 125. Error Block 20 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [209] 143. Error Block 19 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [209] 143. Error Block 19 end (CF ANALYSIS FAILED)
end)
Events_upvr.SVFlash.OnClientEvent:Connect(function(arg1, arg2, arg3) -- Line 142
	--[[ Upvalues[1]:
		[1]: LocalPlayer_upvr (readonly)
	]]
	if arg1 ~= LocalPlayer_upvr and arg1.Character and arg2 then
		local SOME_3 = arg1.Character:FindFirstChild('S'..arg2.Name)
		if SOME_3 then
			if arg3 then
				for _, v in pairs(SOME_3:GetDescendants()) do
					if v:IsA("BasePart") and v.Name == "FlashPoint" then
						v.Light.Enabled = true
					end
				end
				return
			end
			for _, v_2 in pairs(SOME_3:GetDescendants()) do
				if v_2:IsA("BasePart") and v_2.Name == "FlashPoint" then
					v_2.Light.Enabled = false
				end
			end
		end
	end
end)
Events_upvr.Whizz.OnClientEvent:connect(function() -- Line 164
	--[[ Upvalues[2]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: tbl_upvr_2 (readonly)
	]]
	local Sound = Instance.new("Sound")
	Sound.Parent = LocalPlayer_upvr.PlayerGui
	Sound.SoundId = "rbxassetid://"..tbl_upvr_2[math.random(1, #tbl_upvr_2)]
	Sound.Volume = 2
	Sound.PlayOnRemove = true
	Sound:Destroy()
end)
Events_upvr.MedSys.MedHandler.OnClientEvent:connect(function(arg1) -- Line 175
	--[[ Upvalues[3]:
		[1]: CurrentCamera_upvr (readonly)
		[2]: TweenService_upvr (readonly)
		[3]: Debris_upvr (readonly)
	]]
	if arg1 == 4 then
		local ColorCorrectionEffect_upvr = Instance.new("ColorCorrectionEffect")
		ColorCorrectionEffect_upvr.Parent = CurrentCamera_upvr
		TweenService_upvr:Create(ColorCorrectionEffect_upvr, TweenInfo.new(0.15, Enum.EasingStyle.Linear), {
			Contrast = -0.25;
		}):Play()
		delay(0.15, function() -- Line 182
			--[[ Upvalues[3]:
				[1]: TweenService_upvr (copied, readonly)
				[2]: ColorCorrectionEffect_upvr (readonly)
				[3]: Debris_upvr (copied, readonly)
			]]
			TweenService_upvr:Create(ColorCorrectionEffect_upvr, TweenInfo.new(1.5, Enum.EasingStyle.Sine, Enum.EasingDirection.In, 0, false, 0.15), {
				Contrast = 0;
			}):Play()
			Debris_upvr:AddItem(ColorCorrectionEffect_upvr, 1.5)
		end)
	else
		if arg1 == 5 then
			ColorCorrectionEffect_upvr = Instance.new("ColorCorrectionEffect")
			local var51_upvr = ColorCorrectionEffect_upvr
			var51_upvr.Parent = CurrentCamera_upvr
			TweenService_upvr:Create(var51_upvr, TweenInfo.new(0.15, Enum.EasingStyle.Linear), {
				Contrast = 0.5;
			}):Play()
			delay(0.15, function() -- Line 192
				--[[ Upvalues[3]:
					[1]: TweenService_upvr (copied, readonly)
					[2]: var51_upvr (readonly)
					[3]: Debris_upvr (copied, readonly)
				]]
				TweenService_upvr:Create(var51_upvr, TweenInfo.new(1.5, Enum.EasingStyle.Sine, Enum.EasingDirection.In, 0, false, 0.15), {
					Contrast = 0;
				}):Play()
				Debris_upvr:AddItem(var51_upvr, 1.5)
			end)
			return
		end
		if arg1 == 6 then
			var51_upvr = Instance.new("ColorCorrectionEffect")
			local var55_upvr = var51_upvr
			var55_upvr.Parent = CurrentCamera_upvr
			TweenService_upvr:Create(var55_upvr, TweenInfo.new(0.15, Enum.EasingStyle.Linear), {
				Contrast = -0.25;
			}):Play()
			delay(0.15, function() -- Line 202
				--[[ Upvalues[3]:
					[1]: TweenService_upvr (copied, readonly)
					[2]: var55_upvr (readonly)
					[3]: Debris_upvr (copied, readonly)
				]]
				TweenService_upvr:Create(var55_upvr, TweenInfo.new(60, Enum.EasingStyle.Sine, Enum.EasingDirection.In, 0, false, 0.15), {
					Contrast = 0;
				}):Play()
				Debris_upvr:AddItem(var55_upvr, 60)
			end)
			return
		end
		if arg1 == 7 then
			var55_upvr = Instance.new("ColorCorrectionEffect")
			local var59_upvr = var55_upvr
			var59_upvr.Parent = CurrentCamera_upvr
			TweenService_upvr:Create(var59_upvr, TweenInfo.new(0.15, Enum.EasingStyle.Linear), {
				Contrast = 0.5;
			}):Play()
			delay(0.15, function() -- Line 212
				--[[ Upvalues[3]:
					[1]: TweenService_upvr (copied, readonly)
					[2]: var59_upvr (readonly)
					[3]: Debris_upvr (copied, readonly)
				]]
				TweenService_upvr:Create(var59_upvr, TweenInfo.new(30, Enum.EasingStyle.Sine, Enum.EasingDirection.In, 0, false, 0.15), {
					Contrast = 0;
				}):Play()
				Debris_upvr:AddItem(var59_upvr, 30)
			end)
		end
	end
end)
local FX_upvr = ACS_Engine:WaitForChild("FX")
Events_upvr.Suppression.OnClientEvent:Connect(function(arg1, arg2, arg3) -- Line 220
	--[[ Upvalues[4]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: TweenService_upvr (readonly)
		[3]: FX_upvr (readonly)
		[4]: Debris_upvr (readonly)
	]]
	local StatusUI_upvr = LocalPlayer_upvr.PlayerGui:FindFirstChild("StatusUI")
	if LocalPlayer_upvr.Character and 0 < LocalPlayer_upvr.Character.Humanoid.Health and StatusUI_upvr then
		if arg1 == 1 then
			TweenService_upvr:Create(StatusUI_upvr.Efeitos.Suppress, TweenInfo.new(0.1), {
				ImageTransparency = 0;
				Size = UDim2.fromScale(1, 1.15);
			}):Play()
			delay(0.1, function() -- Line 226
				--[[ Upvalues[2]:
					[1]: TweenService_upvr (copied, readonly)
					[2]: StatusUI_upvr (readonly)
				]]
				TweenService_upvr:Create(StatusUI_upvr.Efeitos.Suppress, TweenInfo.new(1, Enum.EasingStyle.Exponential, Enum.EasingDirection.InOut, 0, false, 0.15), {
					ImageTransparency = 1;
					Size = UDim2.fromScale(2, 2);
				}):Play()
			end)
			return
		end
		if arg1 == 2 then
			local clone_upvr = FX_upvr.EarRing:Clone()
			clone_upvr.Parent = LocalPlayer_upvr.PlayerGui
			clone_upvr.Volume = 0
			clone_upvr:Play()
			Debris_upvr:AddItem(clone_upvr, arg3)
			TweenService_upvr:Create(clone_upvr, TweenInfo.new(0.1), {
				Volume = 2;
			}):Play()
			delay(0.1, function() -- Line 238
				--[[ Upvalues[3]:
					[1]: TweenService_upvr (copied, readonly)
					[2]: clone_upvr (readonly)
					[3]: arg3 (readonly)
				]]
				TweenService_upvr:Create(clone_upvr, TweenInfo.new(arg3, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0.15), {
					Volume = 0;
				}):Play()
			end)
			return
		end
		clone_upvr = FX_upvr.EarRing:Clone()
		local var73_upvr = clone_upvr
		var73_upvr.Parent = LocalPlayer_upvr.PlayerGui
		var73_upvr.Volume = 0
		var73_upvr:Play()
		Debris_upvr:AddItem(var73_upvr, arg3)
		TweenService_upvr:Create(var73_upvr, TweenInfo.new(0.1), {
			Volume = 2;
		}):Play()
		delay(0.1, function() -- Line 256
			--[[ Upvalues[3]:
				[1]: TweenService_upvr (copied, readonly)
				[2]: var73_upvr (readonly)
				[3]: arg3 (readonly)
			]]
			TweenService_upvr:Create(var73_upvr, TweenInfo.new(arg3, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0.15), {
				Volume = 0;
			}):Play()
		end)
	end
end)
Events_upvr.GunStance.OnClientEvent:Connect(function(arg1, arg2, arg3) -- Line 263
	--[[ Upvalues[1]:
		[1]: TweenService_upvr (readonly)
	]]
	if 0 < arg1.Character.Humanoid.Health then
		if arg1.Character:FindFirstChild("AnimBase") ~= nil and arg1.Character.AnimBase:FindFirstChild("RAW") ~= nil and arg1.Character.AnimBase:FindFirstChild("LAW") ~= nil then
			local RAW = arg1.Character.AnimBase:WaitForChild("RAW")
			local LAW = arg1.Character.AnimBase:WaitForChild("LAW")
			local RLAW = arg1.Character.AnimBase:WaitForChild("RLAW")
			local LLAW = arg1.Character.AnimBase:WaitForChild("LLAW")
			local RHW = arg1.Character.AnimBase:WaitForChild("RHW")
			local LHW = arg1.Character.AnimBase:WaitForChild("LHW")
			local cframe = CFrame.new(0, arg1.Character.RightUpperArm.Size.Y / 2, 0)
			local cframe_4 = CFrame.new(0, arg1.Character.RightLowerArm.Size.Y / 1.9, 0)
			local cframe_3 = CFrame.new(0, arg1.Character.LeftUpperArm.Size.Y / 2, 0)
			local cframe_2 = CFrame.new(0, arg1.Character.LeftLowerArm.Size.Y / 1.9, 0)
			if arg2 == 0 then
				TweenService_upvr:Create(RAW, TweenInfo.new(0.25, Enum.EasingStyle.Sine), {
					C0 = arg3.SV_RightArmPos;
				}):Play()
				TweenService_upvr:Create(RLAW, TweenInfo.new(0.25, Enum.EasingStyle.Sine), {
					C0 = cframe * arg3.SV_RightElbowPos;
				}):Play()
				TweenService_upvr:Create(RHW, TweenInfo.new(0.25, Enum.EasingStyle.Sine), {
					C0 = cframe_4 * arg3.SV_RightWristPos;
				}):Play()
				TweenService_upvr:Create(LAW, TweenInfo.new(0.25, Enum.EasingStyle.Sine), {
					C0 = arg3.SV_LeftArmPos;
				}):Play()
				TweenService_upvr:Create(LLAW, TweenInfo.new(0.25, Enum.EasingStyle.Sine), {
					C0 = cframe_3 * arg3.SV_LeftElbowPos;
				}):Play()
				TweenService_upvr:Create(LHW, TweenInfo.new(0.25, Enum.EasingStyle.Sine), {
					C0 = cframe_2 * arg3.SV_LeftWristPos;
				}):Play()
				return
			end
			if arg2 == 2 then
				TweenService_upvr:Create(RAW, TweenInfo.new(0.25, Enum.EasingStyle.Sine), {
					C0 = arg3.RightAim;
				}):Play()
				TweenService_upvr:Create(RLAW, TweenInfo.new(0.25, Enum.EasingStyle.Sine), {
					C0 = cframe * arg3.RightElbowAim;
				}):Play()
				TweenService_upvr:Create(RHW, TweenInfo.new(0.25, Enum.EasingStyle.Sine), {
					C0 = cframe_4 * arg3.RightWristAim;
				}):Play()
				TweenService_upvr:Create(LAW, TweenInfo.new(0.25, Enum.EasingStyle.Sine), {
					C0 = arg3.LeftAim;
				}):Play()
				TweenService_upvr:Create(LLAW, TweenInfo.new(0.25, Enum.EasingStyle.Sine), {
					C0 = cframe_3 * arg3.LeftElbowAim;
				}):Play()
				TweenService_upvr:Create(LHW, TweenInfo.new(0.25, Enum.EasingStyle.Sine), {
					C0 = cframe_2 * arg3.LeftWristAim;
				}):Play()
				return
			end
			if arg2 == 1 then
				TweenService_upvr:Create(RAW, TweenInfo.new(0.25, Enum.EasingStyle.Sine), {
					C0 = arg3.RightHighReady;
				}):Play()
				TweenService_upvr:Create(RLAW, TweenInfo.new(0.25, Enum.EasingStyle.Sine), {
					C0 = cframe * arg3.RightElbowHighReady;
				}):Play()
				TweenService_upvr:Create(RHW, TweenInfo.new(0.25, Enum.EasingStyle.Sine), {
					C0 = cframe_4 * arg3.RightWristHighReady;
				}):Play()
				TweenService_upvr:Create(LAW, TweenInfo.new(0.25, Enum.EasingStyle.Sine), {
					C0 = arg3.LeftHighReady;
				}):Play()
				TweenService_upvr:Create(LLAW, TweenInfo.new(0.25, Enum.EasingStyle.Sine), {
					C0 = cframe_3 * arg3.LeftElbowHighReady;
				}):Play()
				TweenService_upvr:Create(LHW, TweenInfo.new(0.25, Enum.EasingStyle.Sine), {
					C0 = cframe_2 * arg3.LeftWristHighReady;
				}):Play()
				return
			end
			if arg2 == -1 then
				TweenService_upvr:Create(RAW, TweenInfo.new(0.25, Enum.EasingStyle.Sine), {
					C0 = arg3.RightLowReady;
				}):Play()
				TweenService_upvr:Create(RLAW, TweenInfo.new(0.25, Enum.EasingStyle.Sine), {
					C0 = cframe * arg3.RightElbowLowReady;
				}):Play()
				TweenService_upvr:Create(RHW, TweenInfo.new(0.25, Enum.EasingStyle.Sine), {
					C0 = cframe_4 * arg3.RightWristLowReady;
				}):Play()
				TweenService_upvr:Create(LAW, TweenInfo.new(0.25, Enum.EasingStyle.Sine), {
					C0 = arg3.LeftLowReady;
				}):Play()
				TweenService_upvr:Create(LLAW, TweenInfo.new(0.25, Enum.EasingStyle.Sine), {
					C0 = cframe_3 * arg3.LeftElbowLowReady;
				}):Play()
				TweenService_upvr:Create(LHW, TweenInfo.new(0.25, Enum.EasingStyle.Sine), {
					C0 = cframe_2 * arg3.LeftWristLowReady;
				}):Play()
				return
			end
			if arg2 == -2 then
				TweenService_upvr:Create(RAW, TweenInfo.new(0.25, Enum.EasingStyle.Sine), {
					C0 = arg3.RightPatrol;
				}):Play()
				TweenService_upvr:Create(RLAW, TweenInfo.new(0.25, Enum.EasingStyle.Sine), {
					C0 = cframe * arg3.RightElbowPatrol;
				}):Play()
				TweenService_upvr:Create(RHW, TweenInfo.new(0.25, Enum.EasingStyle.Sine), {
					C0 = cframe_4 * arg3.RightWristPatrol;
				}):Play()
				TweenService_upvr:Create(LAW, TweenInfo.new(0.25, Enum.EasingStyle.Sine), {
					C0 = arg3.LeftPatrol;
				}):Play()
				TweenService_upvr:Create(LLAW, TweenInfo.new(0.25, Enum.EasingStyle.Sine), {
					C0 = cframe_3 * arg3.LeftElbowPatrol;
				}):Play()
				TweenService_upvr:Create(LHW, TweenInfo.new(0.25, Enum.EasingStyle.Sine), {
					C0 = cframe_2 * arg3.LeftWristPatrol;
				}):Play()
				return
			end
			if arg2 == 3 then
				TweenService_upvr:Create(RAW, TweenInfo.new(0.25, Enum.EasingStyle.Sine), {
					C0 = arg3.RightSprint;
				}):Play()
				TweenService_upvr:Create(RLAW, TweenInfo.new(0.25, Enum.EasingStyle.Sine), {
					C0 = cframe * arg3.RightElbowSprint;
				}):Play()
				TweenService_upvr:Create(RHW, TweenInfo.new(0.25, Enum.EasingStyle.Sine), {
					C0 = cframe_4 * arg3.RightWristSprint;
				}):Play()
				TweenService_upvr:Create(LAW, TweenInfo.new(0.25, Enum.EasingStyle.Sine), {
					C0 = arg3.LeftSprint;
				}):Play()
				TweenService_upvr:Create(LLAW, TweenInfo.new(0.25, Enum.EasingStyle.Sine), {
					C0 = cframe_3 * arg3.LeftElbowSprint;
				}):Play()
				TweenService_upvr:Create(LHW, TweenInfo.new(0.25, Enum.EasingStyle.Sine), {
					C0 = cframe_2 * arg3.LeftWristSprint;
				}):Play()
			end
		end
	end
end)
Events_upvr.HeadRot.OnClientEvent:Connect(function(arg1, arg2) -- Line 345
	--[[ Upvalues[2]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: TweenService_upvr (readonly)
	]]
	if arg1 ~= LocalPlayer_upvr and arg1.Character and arg1.Character:FindFirstChild("HumanoidRootPart") ~= nil and arg1.Character.Head:FindFirstChild("Neck") then
		local tbl = {}
		tbl.C0 = arg2
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		TweenService_upvr:Create(arg1.Character.Head:FindFirstChild("Neck"), TweenInfo.new(0.2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0), tbl):Play()
	end
end)
local RunService_upvr = game:GetService("RunService")
function CastRay(arg1) -- Line 354
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: RunService_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [19] 14. Error Block 67 start (CF ANALYSIS FAILED)
	if arg1 then
		RunService_upvr.Heartbeat:Wait()
		if arg1.Parent ~= nil then
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [34.2]
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [37.5]
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			local workspace_Raycast_result1 = workspace:Raycast(nil, (arg1.Position - nil) * 1, nil)
			local var133 = false
			local function INLINED_2() -- Internal function, doesn't exist in bytecode
				local Instance = workspace_Raycast_result1.Instance
				return Instance
			end
			if workspace_Raycast_result1 and INLINED_2() and (Instance.Parent:IsA("Accessory") or Instance.Parent:IsA("Hat") or 1 <= Instance.Transparency or Instance.CanCollide == false or Instance.Name == "Ignorable" or Instance.Name == "Ignore" or Instance.Parent.Name == "Top" or Instance.Parent.Name == "Helmet" or Instance.Parent.Name == "Up" or Instance.Parent.Name == "Down" or Instance.Parent.Name == "Face" or Instance.Parent.Name == "Olho" or Instance.Parent.Name == "Headset" or Instance.Parent.Name == "Numero" or Instance.Parent.Name == "Vest" or Instance.Parent.Name == "Chest" or Instance.Parent.Name == "Waist" or Instance.Parent.Name == "Back" or Instance.Parent.Name == "Belt" or Instance.Parent.Name == "Leg1" or Instance.Parent.Name == "Leg2" or Instance.Parent.Name == "Arm1" or Instance.Parent.Name == "Arm2") then
				if Instance.Name ~= "Right Arm" and Instance.Name ~= "Left Arm" and Instance.Name ~= "Right Leg" and Instance.Name ~= "Left Leg" and Instance.Name ~= "UpperTorso" and Instance.Name ~= "LowerTorso" and Instance.Name ~= "RightUpperArm" and Instance.Name ~= "RightLowerArm" and Instance.Name ~= "RightHand" and Instance.Name ~= "LeftUpperArm" and Instance.Name ~= "LeftLowerArm" and Instance.Name ~= "LeftHand" and Instance.Name ~= "RightUpperLeg" and Instance.Name ~= "RightLowerLeg" and Instance.Name ~= "RightFoot" and Instance.Name ~= "LeftUpperLeg" and Instance.Name ~= "LeftLowerLeg" and Instance.Name ~= "LeftFoot" and Instance.Name ~= "GlassPenetrate" and Instance.Name ~= "Armor" and Instance.Name ~= "EShield" then
					table.insert(tbl_upvr, Instance)
					var133 = true
					CastRay(arg1)
					return
				end
			end
			if workspace_Raycast_result1 and not var133 then
				arg1:Destroy()
				return
			end
			-- KONSTANTWARNING: GOTO [286] #164
		end
		-- KONSTANTWARNING: GOTO [287] #165
	end
	-- KONSTANTERROR: [19] 14. Error Block 67 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [287] 165. Error Block 59 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [287] 165. Error Block 59 end (CF ANALYSIS FAILED)
end
Events_upvr.ServerBullet.OnClientEvent:Connect(function(arg1, arg2, arg3, arg4, arg5) -- Line 405
	--[[ Upvalues[2]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: ACS_WorkSpace_upvr (readonly)
	]]
	if arg1 ~= LocalPlayer_upvr then
		local var146
		if arg1.Character then
			var146 = ACS_WorkSpace_upvr
			local Part = Instance.new("Part", var146.Server)
			var146 = "_Bullet"
			Part.Name = arg1.Name..var146
			Part.CanCollide = false
			Part.Shape = Enum.PartType.Ball
			Part.Transparency = 1
			Part.Size = Vector3.new(1, 1, 1)
			var146 = arg3
			var146 = arg4.WalkMult
			var146 = Color3.fromRGB(255, 255, 255)
			if arg4.RainbowMode then
				var146 = Color3.fromRGB(math.random(0, 255), math.random(0, 255), math.random(0, 255))
			else
				var146 = arg4.TracerColor
			end
			if arg4.Tracer == true then
				local Attachment_3 = Instance.new("Attachment")
				Attachment_3.Name = "At1"
				Attachment_3.Position = Vector3.new(-0.0500, 0, 0)
				Attachment_3.Parent = Part
				local Attachment_2 = Instance.new("Attachment")
				Attachment_2.Name = "At2"
				Attachment_2.Position = Vector3.new(0.05000, 0, 0)
				Attachment_2.Parent = Part
				local Trail_2 = Instance.new("Trail")
				Trail_2.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0, 0), NumberSequenceKeypoint.new(1, 1)})
				Trail_2.WidthScale = NumberSequence.new({NumberSequenceKeypoint.new(0, 2, 0), NumberSequenceKeypoint.new(1, 1)})
				Trail_2.Color = ColorSequence.new(var146)
				Trail_2.Texture = "rbxassetid://232918622"
				Trail_2.TextureMode = Enum.TextureMode.Stretch
				Trail_2.FaceCamera = true
				Trail_2.LightEmission = 1
				Trail_2.LightInfluence = 0
				Trail_2.Lifetime = 0.25
				Trail_2.Attachment0 = Attachment_3
				Trail_2.Attachment1 = Attachment_2
				Trail_2.Parent = Part
			end
			if arg4.BulletFlare == true then
				local BillboardGui = Instance.new("BillboardGui", Part)
				BillboardGui.Adornee = Part
				local var154 = math.random(275, 375) / 10
				BillboardGui.Size = UDim2.new(var154, 0, var154, 0)
				BillboardGui.LightInfluence = 0
				local ImageLabel = Instance.new("ImageLabel", BillboardGui)
				ImageLabel.BackgroundTransparency = 1
				ImageLabel.Size = UDim2.new(1, 0, 1, 0)
				ImageLabel.Position = UDim2.new(0, 0, 0, 0)
				ImageLabel.Image = "http://www.roblox.com/asset/?id=1047066405"
				ImageLabel.ImageTransparency = math.random(2, 5) / 15
				ImageLabel.ImageColor3 = var146
			end
			Part.CFrame = CFrame.new(arg2, var146)
			Part:ApplyImpulse(arg3 * arg4.MuzzleVelocity * arg5.MuzzleVelocity)
			Instance.new("BodyForce", Part).Force = Vector3.new(0, Part:GetMass() * 196.2 - arg4.BulletDrop * 196.2, 0)
			game.Debris:AddItem(Part, 5)
			CastRay(Part)
		end
	end
end)
local Doors_upvr = ACS_WorkSpace_upvr:FindFirstChild("Doors")
function getNearest() -- Line 501
	--[[ Upvalues[2]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: Doors_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var178
	if not var178 then
		var178 = LocalPlayer_upvr.CharacterAdded:Wait()
	end
	for _, v_3 in pairs(Doors_upvr:GetChildren()) do
		if v_3.Door:FindFirstChild("Knob") ~= nil then
			if (v_3.Door.Knob.Position - var178.UpperTorso.Position).magnitude < 5 then
			end
		end
	end
	return v_3
end
local var183_upvw
function Interact(arg1, arg2, arg3) -- Line 520
	--[[ Upvalues[3]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: var183_upvw (read and write)
		[3]: Events_upvr (readonly)
	]]
	local var184
	if arg2 ~= Enum.UserInputState.Begin then
	else
		local getNearest_result1 = getNearest()
		var184 = LocalPlayer_upvr.Character
		if not var184 then
			var184 = LocalPlayer_upvr.CharacterAdded:Wait()
		end
		if getNearest_result1 == nil then return end
		if (getNearest_result1.Door.Knob.Position - var184.UpperTorso.Position).magnitude <= 5 and getNearest_result1 ~= nil then
			if getNearest_result1:FindFirstChild("RequiresKey") then
				var183_upvw = getNearest_result1.RequiresKey.Value
			else
				var183_upvw = nil
			end
			Events_upvr.DoorEvent:FireServer(getNearest_result1, 1, var183_upvw)
		end
	end
end
function GetNearest(arg1, arg2, arg3) -- Line 541
	local var193
	for _, v_4 in ipairs(arg1) do
		if (arg3.Position - v_4.Position).magnitude < arg2 then
		end
	end
	return nil
end
game:GetService("ContextActionService"):BindAction("Interact", Interact, false, Enum.KeyCode.G)
local HUD_upvr = ACS_Engine:WaitForChild("HUD")
Events_upvr.CombatLog.OnClientEvent:Connect(function(arg1) -- Line 556
	--[[ Upvalues[2]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: HUD_upvr (readonly)
	]]
	local CombatLog = LocalPlayer_upvr.PlayerGui:FindFirstChild("CombatLog")
	if CombatLog then
		CombatLog.Refresh:Fire(arg1)
	else
		local clone = HUD_upvr.CombatLog:Clone()
		clone.Parent = LocalPlayer_upvr.PlayerGui
		clone.CLS.Disabled = false
		clone.Refresh:Fire(arg1)
	end
end)