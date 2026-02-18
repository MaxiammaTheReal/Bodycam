-- Name: ACS_Animations
-- Path: game:GetService("ReplicatedStorage").SWATToolsafterLoad['M4 CarbineVIP'].ACS_Animations
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.26232660000096075 seconds

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 07:17:43
-- Luau version 6, Types version 3
-- Time taken: 0.021113 seconds

local TweenService_upvr = game:GetService("TweenService")
local module_upvr = {
	MainCFrame = CFrame.new(0.5, -0.85, -0.75);
	GunModelFixed = true;
	GunCFrame = CFrame.new(0.15, -0.2, 0.85) * CFrame.Angles((math.pi/2), 0, 0);
	LArmCFrame = CFrame.new(-0.65, -0.15, -0.35) * CFrame.Angles(1.9198621771937625, 0.2617993877991494, 0.2617993877991494);
	RArmCFrame = CFrame.new(0.05, -0.15, 1) * CFrame.Angles((math.pi/2), 0, 0);
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
	--[[ Upvalues[1]:
		[1]: TweenService_upvr (readonly)
	]]
	TweenService_upvr:Create(arg1[1], TweenInfo.new(0.25, Enum.EasingStyle.Sine), {
		C1 = CFrame.new(0.05, -0.15, 1) * CFrame.Angles(1.1344640137963142, 0, 0):inverse();
	}):Play()
	TweenService_upvr:Create(arg1[2], TweenInfo.new(0.25, Enum.EasingStyle.Sine), {
		C1 = CFrame.new(-0.6, -0.75, -0.25) * CFrame.Angles(1.4835298641951802, 0.2617993877991494, 0.2617993877991494):inverse();
	}):Play()
	wait(0.25)
end
function module_upvr.CantedSight(arg1) -- Line 31
	--[[ Upvalues[1]:
		[1]: TweenService_upvr (readonly)
	]]
	TweenService_upvr:Create(arg1[1], TweenInfo.new(0.25, Enum.EasingStyle.Sine), {
		C1 = CFrame.new(0.35, -0.25, 0.5) * CFrame.Angles((math.pi/2), 0.8726646259971648, 0):inverse();
	}):Play()
	TweenService_upvr:Create(arg1[2], TweenInfo.new(0.25, Enum.EasingStyle.Sine), {
		C1 = CFrame.new(-0.7, -0.15, -0.3) * CFrame.Angles((math.pi/2), -0.5235987755982988, 0.2617993877991494):inverse();
	}):Play()
	wait(0.25)
end
function module_upvr.HighReady(arg1) -- Line 37
	--[[ Upvalues[1]:
		[1]: TweenService_upvr (readonly)
	]]
	TweenService_upvr:Create(arg1[1], TweenInfo.new(0.25, Enum.EasingStyle.Sine), {
		C1 = CFrame.new(0.35, -0.75, 1) * CFrame.Angles(2.356194490192345, 0, 0):inverse();
	}):Play()
	TweenService_upvr:Create(arg1[2], TweenInfo.new(0.25, Enum.EasingStyle.Sine), {
		C1 = CFrame.new(-0.2, -0.15, 0.25) * CFrame.Angles(2.705260340591211, 0.6108652381980153, 0.2617993877991494):inverse();
	}):Play()
	wait(0.25)
end
function module_upvr.Patrol(arg1) -- Line 43
	--[[ Upvalues[1]:
		[1]: TweenService_upvr (readonly)
	]]
	TweenService_upvr:Create(arg1[1], TweenInfo.new(0.25, Enum.EasingStyle.Sine), {
		C1 = CFrame.new(0.75, -0.15, 0) * CFrame.Angles((math.pi/2), 0.3490658503988659, -1.3089969389957472):inverse();
	}):Play()
	TweenService_upvr:Create(arg1[2], TweenInfo.new(0.25, Enum.EasingStyle.Sine), {
		C1 = CFrame.new(-1.15, -0.75, 0.4) * CFrame.Angles((math.pi/2), 0.3490658503988659, 0.4363323129985824):inverse();
	}):Play()
	wait(0.25)
end
function module_upvr.SprintAnim(arg1) -- Line 49
	--[[ Upvalues[1]:
		[1]: TweenService_upvr (readonly)
	]]
	TweenService_upvr:Create(arg1[1], TweenInfo.new(0.25, Enum.EasingStyle.Sine), {
		C1 = CFrame.new(0.05, -0.15, 1) * CFrame.Angles(1.1344640137963142, 0, 0):inverse();
	}):Play()
	TweenService_upvr:Create(arg1[2], TweenInfo.new(0.25, Enum.EasingStyle.Sine), {
		C1 = CFrame.new(-0.6, -0.75, -0.25) * CFrame.Angles(1.4835298641951802, 0.2617993877991494, 0.2617993877991494):inverse();
	}):Play()
	wait(0.25)
end
function module_upvr.ReloadAnim(arg1) -- Line 55
	--[[ Upvalues[1]:
		[1]: TweenService_upvr (readonly)
	]]
	TweenService_upvr:Create(arg1[1], TweenInfo.new(0.25, Enum.EasingStyle.Sine), {
		C1 = CFrame.new(0.05, -0.15, 1) * CFrame.Angles(1.9198621771937625, -0.2617993877991494, 0):inverse();
	}):Play()
	TweenService_upvr:Create(arg1[2], TweenInfo.new(0.25, Enum.EasingStyle.Sine), {
		C1 = CFrame.new(-0.75, -0.15, 0.5) * CFrame.Angles(1.9198621771937625, -0.2617993877991494, 0.5235987755982988):inverse();
	}):Play()
	wait(0.3)
	TweenService_upvr:Create(arg1[1], TweenInfo.new(0.5, Enum.EasingStyle.Back), {
		C1 = CFrame.new(0.05, -0.15, 1) * CFrame.Angles(1.7453292519943295, -0.08726646259971647, 0):inverse();
	}):Play()
	TweenService_upvr:Create(arg1[2], TweenInfo.new(0.25, Enum.EasingStyle.Back), {
		C1 = CFrame.new(-0.75, -0.15, 0.5) * CFrame.Angles(1.0471975511965976, -0.08726646259971647, 0.2617993877991494):inverse();
	}):Play()
	wait(0.05)
	arg1[4].Handle.MagOut:Play()
	arg1[4].Mag.Transparency = 1
	wait(0.5)
	arg1[4].Handle.AimUp:Play()
	wait(0.75)
	TweenService_upvr:Create(arg1[2], TweenInfo.new(0.3, Enum.EasingStyle.Sine), {
		C1 = CFrame.new(-0.75, -0.5, 0.25) * CFrame.Angles(1.9198621771937625, -0.2617993877991494, 0.5235987755982988):inverse();
	}):Play()
	wait(0.25)
	arg1[4].Handle.MagIn:Play()
	TweenService_upvr:Create(arg1[1], TweenInfo.new(0.15, Enum.EasingStyle.Sine), {
		C1 = CFrame.new(0.05, -0.15, 1) * CFrame.Angles(1.7627825445142729, -0.10471975511965978, 0):inverse();
	}):Play()
	arg1[4].Mag.Transparency = 0
	wait(0.2)
	TweenService_upvr:Create(arg1[2], TweenInfo.new(0.15, Enum.EasingStyle.Sine), {
		C1 = CFrame.new(-0.75, -0.5, 0.25) * CFrame.Angles(1.0471975511965976, -0.2617993877991494, 0.5235987755982988):inverse();
	}):Play()
	wait(0.25)
	TweenService_upvr:Create(arg1[2], TweenInfo.new(0.1, Enum.EasingStyle.Sine), {
		C1 = CFrame.new(-0.75, -0.5, 0.25) * CFrame.Angles(1.7453292519943295, -0.2617993877991494, 0.5235987755982988):inverse();
	}):Play()
	wait(0.05)
	TweenService_upvr:Create(arg1[1], TweenInfo.new(0.1, Enum.EasingStyle.Sine), {
		C1 = CFrame.new(0.05, -0.15, 1) * CFrame.Angles(1.8325957145940461, -0.08726646259971647, 0):inverse();
	}):Play()
	wait(0.1)
end
function module_upvr.TacticalReloadAnim(arg1) -- Line 82
	--[[ Upvalues[1]:
		[1]: TweenService_upvr (readonly)
	]]
	TweenService_upvr:Create(arg1[1], TweenInfo.new(0.25, Enum.EasingStyle.Sine), {
		C1 = CFrame.new(0.05, -0.15, 1) * CFrame.Angles(1.9198621771937625, -0.2617993877991494, 0):inverse();
	}):Play()
	TweenService_upvr:Create(arg1[2], TweenInfo.new(0.5, Enum.EasingStyle.Back), {
		C1 = CFrame.new(-0.75, -0.15, 0.5) * CFrame.Angles(1.0471975511965976, -0.08726646259971647, 0.2617993877991494):inverse();
	}):Play()
	wait(0.3)
	TweenService_upvr:Create(arg1[1], TweenInfo.new(0.5, Enum.EasingStyle.Back), {
		C1 = CFrame.new(0.05, -0.15, 1) * CFrame.Angles(1.7453292519943295, -0.08726646259971647, 0):inverse();
	}):Play()
	wait(0.05)
	arg1[4].Handle.MagOut:Play()
	arg1[4].Mag.Transparency = 1
	local clone = arg1[4]:WaitForChild("Mag"):Clone()
	clone:ClearAllChildren()
	clone.Transparency = 0
	clone.Parent = arg1[4]
	clone.Anchored = false
	clone.RotVelocity = Vector3.new(0, 0, 0)
	clone.Velocity = clone.CFrame.UpVector * 25
	wait(0.5)
	arg1[4].Handle.AimUp:Play()
	wait(0.25)
	TweenService_upvr:Create(arg1[2], TweenInfo.new(0.3, Enum.EasingStyle.Sine), {
		C1 = CFrame.new(-0.75, -0.5, 0.25) * CFrame.Angles(1.9198621771937625, -0.2617993877991494, 0.5235987755982988):inverse();
	}):Play()
	wait(0.25)
	arg1[4].Handle.MagIn:Play()
	TweenService_upvr:Create(arg1[1], TweenInfo.new(0.15, Enum.EasingStyle.Sine), {
		C1 = CFrame.new(0.05, -0.15, 1) * CFrame.Angles(1.7627825445142729, -0.10471975511965978, 0):inverse();
	}):Play()
	arg1[4].Mag.Transparency = 0
	wait(0.2)
	TweenService_upvr:Create(arg1[2], TweenInfo.new(0.15, Enum.EasingStyle.Sine), {
		C1 = CFrame.new(-0.75, -0.5, 0.25) * CFrame.Angles(1.0471975511965976, -0.2617993877991494, 0.5235987755982988):inverse();
	}):Play()
	wait(0.25)
	TweenService_upvr:Create(arg1[2], TweenInfo.new(0.1, Enum.EasingStyle.Sine), {
		C1 = CFrame.new(-0.75, -0.5, 0.25) * CFrame.Angles(1.7453292519943295, -0.2617993877991494, 0.5235987755982988):inverse();
	}):Play()
	wait(0.05)
	TweenService_upvr:Create(arg1[1], TweenInfo.new(0.1, Enum.EasingStyle.Sine), {
		C1 = CFrame.new(0.05, -0.15, 1) * CFrame.Angles(1.8325957145940461, -0.08726646259971647, 0):inverse();
	}):Play()
	wait(0.15)
	TweenService_upvr:Create(arg1[1], TweenInfo.new(0.25, Enum.EasingStyle.Sine), {
		C1 = CFrame.new(0.05, -0.15, 1) * CFrame.Angles((math.pi/2), 0, 0):inverse();
	}):Play()
	TweenService_upvr:Create(arg1[2], TweenInfo.new(0.25, Enum.EasingStyle.Sine), {
		C1 = CFrame.new(-0.85, 0.05, 0.6) * CFrame.Angles(1.9198621771937625, -0.2617993877991494, 0.4363323129985824):inverse();
	}):Play()
	wait(0.25)
	arg1[4].Bolt.SlideRelease:Play()
	TweenService_upvr:Create(arg1[4].Handle.Slide, TweenInfo.new(0.15, Enum.EasingStyle.Linear), {
		C0 = CFrame.new():inverse();
	}):Play()
	TweenService_upvr:Create(arg1[2], TweenInfo.new(0.15, Enum.EasingStyle.Back), {
		C1 = CFrame.new(-0.8, 0.05, 0.6) * CFrame.Angles(1.9198621771937625, -0.2617993877991494, 0.5235987755982988):inverse();
	}):Play()
	wait(0.15)
end
function module_upvr.JammedAnim(arg1) -- Line 124
	--[[ Upvalues[1]:
		[1]: TweenService_upvr (readonly)
	]]
	TweenService_upvr:Create(arg1[1], TweenInfo.new(0.25, Enum.EasingStyle.Sine), {
		C1 = CFrame.new(0.05, -0.15, 0.75) * CFrame.Angles((math.pi/2), 0, 0):inverse();
	}):Play()
	TweenService_upvr:Create(arg1[2], TweenInfo.new(0.25, Enum.EasingStyle.Sine), {
		C1 = CFrame.new(-0.5, -0.35, 0.45) * CFrame.Angles(2.792526803190927, 0, 0):inverse();
	}):Play()
	wait(0.25)
	arg1[4].Bolt.SlidePull:Play()
	TweenService_upvr:Create(arg1[4].Handle.Slide, TweenInfo.new(0.2, Enum.EasingStyle.Sine), {
		C0 = CFrame.new(0, 0, -0.4):inverse();
	}):Play()
	TweenService_upvr:Create(arg1[4].Handle.Bolt, TweenInfo.new(0.2, Enum.EasingStyle.Sine), {
		C0 = CFrame.new(0, 0, -0.4):inverse();
	}):Play()
	TweenService_upvr:Create(arg1[2], TweenInfo.new(0.2, Enum.EasingStyle.Sine), {
		C1 = CFrame.new(-0.5, -0.35, 0.45) * CFrame.Angles(math.pi, 0, 0):inverse();
	}):Play()
	wait(0.3)
	TweenService_upvr:Create(arg1[4].Handle.Slide, TweenInfo.new(0.1, Enum.EasingStyle.Linear), {
		C0 = CFrame.new():inverse();
	}):Play()
	TweenService_upvr:Create(arg1[4].Handle.Bolt, TweenInfo.new(0.1, Enum.EasingStyle.Linear), {
		C0 = CFrame.new():inverse();
	}):Play()
	arg1[4].Bolt.SlideRelease:Play()
end
function module_upvr.PumpAnim(arg1) -- Line 138
end
function module_upvr.MagCheck(arg1) -- Line 142
	--[[ Upvalues[1]:
		[1]: TweenService_upvr (readonly)
	]]
	arg1[4].Handle.AimUp:Play()
	TweenService_upvr:Create(arg1[1], TweenInfo.new(0.25, Enum.EasingStyle.Sine), {
		C1 = CFrame.new(0.5, -0.15, 0) * CFrame.Angles(1.7453292519943295, 0, -0.7853981633974483):inverse();
	}):Play()
	TweenService_upvr:Create(arg1[2], TweenInfo.new(0.25, Enum.EasingStyle.Linear), {
		C1 = CFrame.new(-1, -1, 1) * CFrame.Angles(0, 0, 0):inverse();
	}):Play()
	wait(2.5)
	arg1[4].Handle.AimDown:Play()
	TweenService_upvr:Create(arg1[1], TweenInfo.new(0.25, Enum.EasingStyle.Sine), {
		C1 = CFrame.new(0.5, -0.15, 0) * CFrame.Angles(2.792526803190927, 1.0471975511965976, -0.7853981633974483):inverse();
	}):Play()
	TweenService_upvr:Create(arg1[2], TweenInfo.new(0.25, Enum.EasingStyle.Linear), {
		C1 = CFrame.new(-1, -1, 1) * CFrame.Angles(0, 0, 0):inverse();
	}):Play()
	wait(2.5)
	arg1[4].Handle.AimUp:Play()
end
function module_upvr.meleeAttack(arg1) -- Line 154
end
function module_upvr.GrenadeReady(arg1) -- Line 158
end
function module_upvr.GrenadeThrow(arg1) -- Line 162
end
module_upvr.SV_GunPos = CFrame.new(-0.3, -0.2, -0.4) * CFrame.Angles((-math.pi/2), 0, 0)
module_upvr.SV_RightArmPos = CFrame.new(-0.9, 1.25, -0.35) * CFrame.Angles(-0.5235987755982988, 0, 0)
module_upvr.SV_LeftArmPos = CFrame.new(1, 1, -1) * CFrame.Angles(-1.3962634015954636, 0.5235987755982988, -0.17453292519943295)
module_upvr.SV_RightElbowPos = CFrame.new(0, -0.45, -0.25) * CFrame.Angles(-1.3962634015954636, 0, 0)
module_upvr.SV_LeftElbowPos = CFrame.new(0, 0, -0.1) * CFrame.Angles(-0.2617993877991494, 0, 0)
module_upvr.SV_RightWristPos = CFrame.new(0, 0, 0.15) * CFrame.Angles(0.3490658503988659, 0, 0)
module_upvr.SV_LeftWristPos = CFrame.new(0, 0, 0) * CFrame.Angles(0, -0.2617993877991494, 0)
module_upvr.RightHighReady = CFrame.new(-1.1, 0.5, -1.1) * CFrame.Angles((-math.pi/2), 0, 0)
module_upvr.LeftHighReady = CFrame.new(0.65, 0.4, -1.3) * CFrame.Angles(-2.443460952792061, 0.5235987755982988, 0.5235987755982988)
module_upvr.RightElbowHighReady = CFrame.new(0, -0.25, -0.35) * CFrame.Angles(-0.7853981633974483, 0, 0)
module_upvr.LeftElbowHighReady = CFrame.new(0, 0, -0.1) * CFrame.Angles(-0.2617993877991494, 0, 0)
module_upvr.RightWristHighReady = CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
module_upvr.LeftWristHighReady = CFrame.new(0, 0, 0) * CFrame.Angles(0, -0.2617993877991494, 0)
module_upvr.RightLowReady = CFrame.new(-0.9, 1.25, 0) * CFrame.Angles(0, 0, 0)
module_upvr.LeftLowReady = CFrame.new(1, 1, -0.6) * CFrame.Angles(-0.7853981633974483, 0.2617993877991494, -0.4363323129985824)
module_upvr.RightElbowLowReady = CFrame.new(0, -0.45, -0.25) * CFrame.Angles(-1.3962634015954636, 0, 0)
module_upvr.LeftElbowLowReady = CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
module_upvr.RightWristLowReady = CFrame.new(0, 0, 0.15) * CFrame.Angles(0.3490658503988659, 0, 0)
module_upvr.LeftWristLowReady = CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
module_upvr.RightPatrol = CFrame.new(-0.85, 0.75, -1.3) * CFrame.Angles(-0.5235987755982988, (-math.pi/2), 0)
module_upvr.LeftPatrol = CFrame.new(1.5, 1.1, 0) * CFrame.Angles(0, 0, 0)
module_upvr.RightElbowPatrol = CFrame.new(0, -0.2, -0.1) * CFrame.Angles(-0.6981317007977318, 0, 0)
module_upvr.LeftElbowPatrol = CFrame.new(0, -0.15, -0.25) * CFrame.Angles(-0.8726646259971648, 0, 0)
module_upvr.RightWristPatrol = CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, -0.2617993877991494)
module_upvr.LeftWristPatrol = CFrame.new(0, 0, 0) * CFrame.Angles(0, (-math.pi/2), 0)
module_upvr.RightAim = CFrame.new(-0.6, 0.85, -0.5) * CFrame.Angles(-0.8726646259971648, 0, 0)
module_upvr.LeftAim = CFrame.new(1.6, 0.6, -0.85) * CFrame.Angles(-1.6580627893946132, 0.6108652381980153, -0.4363323129985824)
module_upvr.RightElbowAim = CFrame.new(0, -0.2, -0.25) * CFrame.Angles(-1.0471975511965976, 0, 0)
module_upvr.LeftElbowAim = CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
module_upvr.RightWristAim = CFrame.new(0, 0, 0.15) * CFrame.Angles(0.3490658503988659, 0, 0)
module_upvr.LeftWristAim = CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
module_upvr.RightSprint = CFrame.new(-0.9, 1.25, 0) * CFrame.Angles(0, 0, 0)
module_upvr.LeftSprint = CFrame.new(1, 1, -0.6) * CFrame.Angles(-0.7853981633974483, 0.2617993877991494, -0.4363323129985824)
module_upvr.RightElbowSprint = CFrame.new(0, -0.45, -0.25) * CFrame.Angles(-1.3962634015954636, 0, 0)
module_upvr.LeftElbowSprint = CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
module_upvr.RightWristSprint = CFrame.new(0, 0, 0.15) * CFrame.Angles(0.3490658503988659, 0, 0)
module_upvr.LeftWristSprint = CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
return module_upvr