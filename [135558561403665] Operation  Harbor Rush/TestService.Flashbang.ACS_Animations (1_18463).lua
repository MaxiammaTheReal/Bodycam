-- Name: ACS_Animations
-- Path: game:GetService("TestService").Flashbang.ACS_Animations
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.2623239000004105 seconds

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 07:17:39
-- Luau version 6, Types version 3
-- Time taken: 0.008943 seconds

local TweenService_upvr = game:GetService("TweenService")
local module_upvr = {
	MainCFrame = CFrame.new(0, 0, 0);
	GunModelFixed = true;
	GunCFrame = CFrame.new(0.35, -0.25, 0.85) * CFrame.Angles((math.pi/2), 0, 0);
	LArmCFrame = CFrame.new(-1, -1, 1) * CFrame.Angles(0, 0, 0);
	RArmCFrame = CFrame.new(1, -0.85, -0.25) * CFrame.Angles(1.7453292519943295, 0.5235987755982988, -0.2617993877991494);
}
function module_upvr.EquipAnim(arg1) -- Line 11
	--[[ Upvalues[2]:
		[1]: TweenService_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	TweenService_upvr:Create(arg1[1], TweenInfo.new(0.25, Enum.EasingStyle.Linear), {
		C1 = CFrame.new(1, -1, 1) * CFrame.Angles(0, 0, 0):inverse();
	}):Play()
	TweenService_upvr:Create(arg1[2], TweenInfo.new(0.25, Enum.EasingStyle.Linear), {
		C1 = CFrame.new(-1, -1, 1) * CFrame.Angles(0, 0, 0):inverse();
	}):Play()
	wait(0.25)
	TweenService_upvr:Create(arg1[1], TweenInfo.new(0.35, Enum.EasingStyle.Sine), {
		C1 = module_upvr.RArmCFrame:Inverse();
	}):Play()
	TweenService_upvr:Create(arg1[2], TweenInfo.new(0.35, Enum.EasingStyle.Sine), {
		C1 = module_upvr.LArmCFrame:Inverse();
	}):Play()
	wait(0.35)
end
function module_upvr.IdleAnim(arg1) -- Line 20
	--[[ Upvalues[2]:
		[1]: TweenService_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	TweenService_upvr:Create(arg1[1], TweenInfo.new(0.25, Enum.EasingStyle.Sine), {
		C1 = module_upvr.RArmCFrame:Inverse();
	}):Play()
	TweenService_upvr:Create(arg1[2], TweenInfo.new(0.25, Enum.EasingStyle.Sine), {
		C1 = module_upvr.LArmCFrame:Inverse();
	}):Play()
end
function module_upvr.LowReady(arg1) -- Line 25
end
function module_upvr.HighReady(arg1) -- Line 29
end
function module_upvr.Patrol(arg1) -- Line 33
end
function module_upvr.SprintAnim(arg1) -- Line 37
end
function module_upvr.ReloadAnim(arg1) -- Line 41
end
function module_upvr.TacticalReloadAnim(arg1) -- Line 45
end
function module_upvr.JammedAnim(arg1) -- Line 49
end
function module_upvr.PumpAnim(arg1) -- Line 53
end
function module_upvr.MagCheck(arg1) -- Line 57
end
function module_upvr.meleeAttack(arg1) -- Line 61
end
function module_upvr.GrenadeReady(arg1) -- Line 65
	--[[ Upvalues[1]:
		[1]: TweenService_upvr (readonly)
	]]
	TweenService_upvr:Create(arg1[1], TweenInfo.new(0.2, Enum.EasingStyle.Linear), {
		C1 = CFrame.new(1, -0.85, -1) * CFrame.Angles(3.0543261909900767, 0, 0):inverse();
	}):Play()
	TweenService_upvr:Create(arg1[2], TweenInfo.new(0.2, Enum.EasingStyle.Linear), {
		C1 = CFrame.new(-1, -1, 1) * CFrame.Angles(0, 0, 0):inverse();
	}):Play()
	wait(0.2)
end
function module_upvr.GrenadeThrow(arg1) -- Line 71
	--[[ Upvalues[1]:
		[1]: TweenService_upvr (readonly)
	]]
	TweenService_upvr:Create(arg1[1], TweenInfo.new(0.25, Enum.EasingStyle.Back), {
		C1 = CFrame.new(0.5, -0.85, -1) * CFrame.Angles((math.pi/2), (math.pi/2), 0):inverse();
	}):Play()
	wait(0.1)
	arg1[4].Handle.Transparency = 1
	arg1[4].Handle.Swing:Play()
end
module_upvr.SV_GunPos = CFrame.new(-0.3, -0.2, -0.4) * CFrame.Angles((-math.pi/2), 0, 0)
module_upvr.SV_RightArmPos = CFrame.new(-0.575, 0.65, -1.185) * CFrame.Angles((-math.pi/2), 0, 0)
module_upvr.SV_LeftArmPos = CFrame.new(1.15, 0.25, -1.3) * CFrame.Angles(-1.6580627893946132, 0.3490658503988659, -0.4363323129985824)
module_upvr.SV_RightElbowPos = CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
module_upvr.SV_LeftElbowPos = CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
module_upvr.SV_RightWristPos = CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
module_upvr.SV_LeftWristPos = CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
module_upvr.RightHighReady = CFrame.new(-1, 0.45, -1.15) * CFrame.Angles((-math.pi/2), 0, 0)
module_upvr.LeftHighReady = CFrame.new(0.75, 0.45, -1.15) * CFrame.Angles((-math.pi/2), 0.7853981633974483, 0)
module_upvr.RightElbowHighReady = CFrame.new(0, -0.45, -0.45) * CFrame.Angles(-1.3089969389957472, 0, 0)
module_upvr.LeftElbowHighReady = CFrame.new(0, -0.4, -0.4) * CFrame.Angles(-1.0471975511965976, 0.5235987755982988, 0)
module_upvr.RightWristHighReady = CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
module_upvr.LeftWristHighReady = CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
module_upvr.RightLowReady = CFrame.new(-1, 1.1, -0.5) * CFrame.Angles(-0.5235987755982988, 0, 0)
module_upvr.LeftLowReady = CFrame.new(1, 1, -0.9) * CFrame.Angles(-0.5235987755982988, 0.6108652381980153, -0.4363323129985824)
module_upvr.RightElbowLowReady = CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
module_upvr.LeftElbowLowReady = CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
module_upvr.RightWristLowReady = CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
module_upvr.LeftWristLowReady = CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
module_upvr.RightPatrol = CFrame.new(-1, 1.1, -0.5) * CFrame.Angles(-0.5235987755982988, 0, 0)
module_upvr.LeftPatrol = CFrame.new(1, 1, -0.9) * CFrame.Angles(-0.5235987755982988, 0.6108652381980153, -0.4363323129985824)
module_upvr.RightElbowPatrol = CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
module_upvr.LeftElbowPatrol = CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
module_upvr.RightWristPatrol = CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
module_upvr.LeftWristPatrol = CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
module_upvr.RightAim = CFrame.new(-0.575, 0.45, -1.15) * CFrame.Angles(-1.8325957145940461, 0, 0)
module_upvr.LeftAim = CFrame.new(1.3, 0.2, -0.85) * CFrame.Angles(-1.6580627893946132, 0.6108652381980153, -0.4363323129985824)
module_upvr.RightElbowAim = CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
module_upvr.LeftElbowAim = CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
module_upvr.RightWristAim = CFrame.new(0, 0, 0.1) * CFrame.Angles(0.2617993877991494, 0, 0)
module_upvr.LeftWristAim = CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
module_upvr.RightSprint = CFrame.new(-1, 1.1, -0.5) * CFrame.Angles(-0.5235987755982988, 0, 0)
module_upvr.LeftSprint = CFrame.new(1, 1, -0.9) * CFrame.Angles(-0.5235987755982988, 0.6108652381980153, -0.4363323129985824)
module_upvr.RightElbowSprint = CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
module_upvr.LeftElbowSprint = CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
module_upvr.RightWristSprint = CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
module_upvr.LeftWristSprint = CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
return module_upvr