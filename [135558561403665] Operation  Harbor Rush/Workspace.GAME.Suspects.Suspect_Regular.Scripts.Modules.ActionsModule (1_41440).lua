-- Name: ActionsModule
-- Path: game:GetService("Workspace").GAME.Suspects.Suspect_Regular.Scripts.Modules.ActionsModule
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.25984040000003006 seconds

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 07:15:27
-- Luau version 6, Types version 3
-- Time taken: 0.013756 seconds

local module_upvr = {}
local Parent = script.Parent
local Status_upvr = require(Parent.Status)
local Parent_2_upvr = script.Parent.Parent.Parent
local Humanoid_upvr = Parent_2_upvr.Humanoid
local HumanoidRootPart_upvr = Parent_2_upvr.HumanoidRootPart
local M4_upvr = Parent_2_upvr.M4
local Head_upvr = Parent_2_upvr.Head
local Torso_upvr = Parent_2_upvr.Torso
local Neck_upvr = Torso_upvr.Neck
local Left_Shoulder_upvr = Torso_upvr["Left Shoulder"]
local Right_Shoulder_upvr = Torso_upvr["Right Shoulder"]
local Left_Arm_Weld_upvr = Torso_upvr["Left Arm Weld"]
local Right_Arm_Weld_upvr = Torso_upvr["Right Arm Weld"]
local Left_Arm_upvr = Parent_2_upvr["Left Arm"]
local Right_Arm_upvr = Parent_2_upvr["Right Arm"]
local M4_Weld_upvr = M4_upvr["M4 Weld"]
local Left_Hip_upvr = Torso_upvr["Left Hip"]
local Right_Hip_upvr = Torso_upvr["Right Hip"]
local RootJoint_upvr = HumanoidRootPart_upvr.RootJoint
local AlignOrientation_upvr = HumanoidRootPart_upvr.AlignOrientation
local Attachment_upvr = Instance.new("Attachment")
Attachment_upvr.Parent = workspace.Terrain
Attachment_upvr.CFrame = HumanoidRootPart_upvr.CFrame
local Attachment_upvr_2 = Instance.new("Attachment")
Attachment_upvr_2.Parent = workspace.Terrain
Attachment_upvr_2.CFrame = HumanoidRootPart_upvr.CFrame
AlignOrientation_upvr.Attachment1 = Attachment_upvr_2
local HingeConstraint_upvr = M4_upvr.HingeConstraint
local HingeAttach0_upvr = Torso_upvr.HingeAttach0
local any_LoadAnimation_result1_upvr = Humanoid_upvr:LoadAnimation(Parent_2_upvr.Reload)
any_LoadAnimation_result1_upvr.Priority = Enum.AnimationPriority.Action
local CoreModule_upvr = require(Parent.CoreModule)
local C0_upvr_2 = RootJoint_upvr.C0
local C0_upvr = Left_Hip_upvr.C0
local C0_upvr_3 = Right_Hip_upvr.C0
local HingeConstraint_upvr_2 = Head_upvr.HingeConstraint
local Position_2_upvr = HingeAttach0_upvr.Position
local RunService_upvr = game:GetService("RunService")
function module_upvr.aim() -- Line 62
	--[[ Upvalues[21]:
		[1]: Status_upvr (readonly)
		[2]: Humanoid_upvr (readonly)
		[3]: AlignOrientation_upvr (readonly)
		[4]: CoreModule_upvr (readonly)
		[5]: Torso_upvr (readonly)
		[6]: HumanoidRootPart_upvr (readonly)
		[7]: RootJoint_upvr (readonly)
		[8]: C0_upvr_2 (readonly)
		[9]: Left_Hip_upvr (readonly)
		[10]: C0_upvr (readonly)
		[11]: Right_Hip_upvr (readonly)
		[12]: C0_upvr_3 (readonly)
		[13]: Attachment_upvr (readonly)
		[14]: M4_upvr (readonly)
		[15]: HingeConstraint_upvr_2 (readonly)
		[16]: HingeAttach0_upvr (readonly)
		[17]: Position_2_upvr (readonly)
		[18]: Attachment_upvr_2 (readonly)
		[19]: Neck_upvr (readonly)
		[20]: RunService_upvr (readonly)
		[21]: module_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local const_string = "weaponAimed"
	local var35 = true
	Status_upvr:set(const_string, var35)
	Humanoid_upvr.AutoRotate = false
	AlignOrientation_upvr.Enabled = true
	local var36 = 4
	Humanoid_upvr.WalkSpeed = var36
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [70] 57. Error Block 35 start (CF ANALYSIS FAILED)
	local var37
	if not var35 and 3 < HumanoidRootPart_upvr.Velocity.Magnitude and 50 <= 0 then
		local WalkToPoint = Humanoid_upvr.WalkToPoint
		local Position = HumanoidRootPart_upvr.Position
		var37 = HumanoidRootPart_upvr.Position + Vector3.new(0, 1.5, 0) + (Vector3.new(WalkToPoint.X, 0, WalkToPoint.Z) - Vector3.new(Position.X, 0, Position.Z)).Unit * 20
	else
		var37 = var36.Position + var36.Velocity / (10 - const_string / 50)
	end
	local clamped = math.clamp((HumanoidRootPart_upvr.Position.Y - var37.Y) / (const_string * 0.04), -45, 45)
	RootJoint_upvr.C0 = C0_upvr_2 * CFrame.fromEulerAnglesYXZ(math.rad(clamped), 0, 0)
	Left_Hip_upvr.C0 = C0_upvr * CFrame.fromEulerAnglesYXZ(0, 0, math.rad(-clamped))
	Right_Hip_upvr.C0 = C0_upvr_3 * CFrame.fromEulerAnglesYXZ(0, 0, math.rad(clamped))
	Attachment_upvr.WorldCFrame = CFrame.lookAt(M4_upvr.Position, var37)
	M4_upvr.HingeConstraint.Attachment0.WorldCFrame = CFrame.new(M4_upvr.HingeConstraint.Attachment0.WorldPosition) * CFrame.fromEulerAnglesYXZ(0, math.rad(HumanoidRootPart_upvr.Orientation.Y), 0)
	M4_upvr.HingeConstraint.TargetAngle = Attachment_upvr.Orientation.X
	HingeConstraint_upvr_2.TargetAngle = Attachment_upvr.Orientation.X
	HingeAttach0_upvr.Position = Position_2_upvr + Vector3.new(0, clamped / 90, 0)
	Attachment_upvr_2.WorldCFrame = CFrame.lookAt(M4_upvr.Position, Vector3.new(var37.X, HumanoidRootPart_upvr.Position.Y, var37.Z))
	if Status_upvr:get("m4Equipped") then
		Neck_upvr.C0 = CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(Attachment_upvr.Orientation.X) + -1.5, 0.2617993877991494, math.pi)
	else
		Neck_upvr.C0 = CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(Attachment_upvr.Orientation.X) + -1.5, 0, math.pi)
	end
	RunService_upvr.Heartbeat:Wait()
	RunService_upvr.Heartbeat:Wait()
	-- KONSTANTERROR: [70] 57. Error Block 35 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [23] 19. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [353.1311739]
	-- KONSTANTERROR: [23] 19. Error Block 2 end (CF ANALYSIS FAILED)
end
local Reload_upvr = M4_upvr.Reload
local Mag_upvr = Parent_2_upvr.Mag
local Debris_upvr = game:GetService("Debris")
function module_upvr.reload() -- Line 144
	--[[ Upvalues[10]:
		[1]: Status_upvr (readonly)
		[2]: Reload_upvr (readonly)
		[3]: module_upvr (readonly)
		[4]: M4_Weld_upvr (readonly)
		[5]: M4_upvr (readonly)
		[6]: Left_Arm_upvr (readonly)
		[7]: any_LoadAnimation_result1_upvr (readonly)
		[8]: Mag_upvr (readonly)
		[9]: Debris_upvr (readonly)
		[10]: Parent_2_upvr (readonly)
	]]
	Status_upvr:set("weaponAimed", false)
	Reload_upvr:Play()
	Status_upvr:set("reloading", true)
	module_upvr.yieldM4()
	M4_Weld_upvr.Part0 = nil
	M4_upvr.CFrame = Left_Arm_upvr.CFrame * CFrame.new(0.5, -0.2, 0) * CFrame.Angles((-math.pi/2), 0, 0)
	M4_Weld_upvr.Part0 = Left_Arm_upvr
	any_LoadAnimation_result1_upvr:Play()
	any_LoadAnimation_result1_upvr:AdjustSpeed(3)
	wait(0.2)
	local clone = Mag_upvr:Clone()
	clone.CanCollide = true
	clone.Parent = workspace
	Debris_upvr:AddItem(clone, 4)
	Mag_upvr.Transparency = 1
	any_LoadAnimation_result1_upvr.Stopped:Wait()
	Mag_upvr.Transparency = 1
	Status_upvr:set("reloading", false)
	Status_upvr:set("mag", Parent_2_upvr.Settings.M4.MagazineSize.Value)
	module_upvr.drawM4()
end
local HingeAttach1_upvr = M4_upvr.HingeAttach1
function module_upvr.drawM4() -- Line 174
	--[[ Upvalues[17]:
		[1]: module_upvr (readonly)
		[2]: Status_upvr (readonly)
		[3]: Parent_2_upvr (readonly)
		[4]: M4_upvr (readonly)
		[5]: Attachment_upvr (readonly)
		[6]: Torso_upvr (readonly)
		[7]: M4_Weld_upvr (readonly)
		[8]: HumanoidRootPart_upvr (readonly)
		[9]: HingeAttach1_upvr (readonly)
		[10]: HingeAttach0_upvr (readonly)
		[11]: HingeConstraint_upvr (readonly)
		[12]: Right_Shoulder_upvr (readonly)
		[13]: Right_Arm_Weld_upvr (readonly)
		[14]: Right_Arm_upvr (readonly)
		[15]: Left_Shoulder_upvr (readonly)
		[16]: Left_Arm_Weld_upvr (readonly)
		[17]: Left_Arm_upvr (readonly)
	]]
	module_upvr.yieldKnife()
	if not Status_upvr:get("m4Equipped") and not Status_upvr:get("reloading") and Parent_2_upvr.Configuration.Flashbanged.Value == false then
		Status_upvr:set("m4Equipped", true)
		Status_upvr:set("m4Lowered", false)
		M4_upvr.Equip:Play()
		Attachment_upvr.CFrame = Torso_upvr.CFrame
		M4_Weld_upvr.Part0 = nil
		M4_upvr.CFrame = HumanoidRootPart_upvr.CFrame * CFrame.new(0.65, -1.6, 0) * CFrame.Angles((-math.pi/2), 0, 0)
		HingeAttach1_upvr.WorldPosition = HingeAttach0_upvr.WorldPosition
		HingeConstraint_upvr.Enabled = true
		Right_Shoulder_upvr.Part1 = nil
		Right_Arm_Weld_upvr.Part1 = nil
		Right_Arm_Weld_upvr.Enabled = false
		Right_Arm_upvr.CFrame = M4_upvr.CFrame * CFrame.new(0.7, -0.4, 1.5) * CFrame.Angles(1.3962634015954636, 0, -0.17453292519943295)
		Right_Arm_Weld_upvr.Part1 = Right_Arm_upvr
		Right_Arm_Weld_upvr.Enabled = true
		Left_Shoulder_upvr.Part1 = nil
		Left_Arm_Weld_upvr.Part1 = nil
		Left_Arm_upvr.CFrame = M4_upvr.CFrame * CFrame.new(-1, -0.3, 0.8) * CFrame.Angles((math.pi/2), -0.05235987755982989, 0.4886921905584123)
		Left_Arm_Weld_upvr.Part1 = Left_Arm_upvr
		wait(0.5)
	end
end
function module_upvr.yieldM4() -- Line 209
	--[[ Upvalues[11]:
		[1]: Status_upvr (readonly)
		[2]: M4_upvr (readonly)
		[3]: Right_Arm_Weld_upvr (readonly)
		[4]: Right_Shoulder_upvr (readonly)
		[5]: Right_Arm_upvr (readonly)
		[6]: Left_Arm_Weld_upvr (readonly)
		[7]: Left_Shoulder_upvr (readonly)
		[8]: Left_Arm_upvr (readonly)
		[9]: M4_Weld_upvr (readonly)
		[10]: HingeConstraint_upvr (readonly)
		[11]: Torso_upvr (readonly)
	]]
	if Status_upvr:get("m4Equipped") or Status_upvr:get("m4Lowered") then
		Status_upvr:set("m4Equipped", false)
		Status_upvr:set("weaponAimed", false)
		Status_upvr:set("m4Lowered", false)
		M4_upvr.Equip:Play()
		Right_Arm_Weld_upvr.Part1 = nil
		Right_Shoulder_upvr.Part1 = Right_Arm_upvr
		Left_Arm_Weld_upvr.Part1 = nil
		Left_Shoulder_upvr.Part1 = Left_Arm_upvr
		M4_Weld_upvr.Part0 = nil
		HingeConstraint_upvr.Enabled = false
		M4_upvr.CFrame = Torso_upvr.CFrame * CFrame.new(0, 0, 0.5) * CFrame.Angles((-math.pi/2), 0.7853981633974483, -4.71238898038469)
		M4_Weld_upvr.Part0 = Torso_upvr
	end
end
function module_upvr.lowerM4() -- Line 234
	--[[ Upvalues[12]:
		[1]: Status_upvr (readonly)
		[2]: M4_upvr (readonly)
		[3]: HingeConstraint_upvr (readonly)
		[4]: M4_Weld_upvr (readonly)
		[5]: Torso_upvr (readonly)
		[6]: Right_Shoulder_upvr (readonly)
		[7]: Right_Arm_Weld_upvr (readonly)
		[8]: Right_Arm_upvr (readonly)
		[9]: HumanoidRootPart_upvr (readonly)
		[10]: Left_Shoulder_upvr (readonly)
		[11]: Left_Arm_Weld_upvr (readonly)
		[12]: Left_Arm_upvr (readonly)
	]]
	if not Status_upvr:get("m4Lowered") and Status_upvr:get("m4Equipped") and not Status_upvr:get("reloading") then
		Status_upvr:set("m4Equipped", false)
		Status_upvr:set("m4Lowered", true)
		M4_upvr.Equip:Play()
		HingeConstraint_upvr.Enabled = false
		M4_Weld_upvr.Part0 = nil
		M4_upvr.CFrame = Torso_upvr.CFrame * CFrame.new(-0.5, -0.9, -1) * CFrame.Angles(-1.3089969389957472, 0.9599310885968813, 1.3089969389957472)
		M4_Weld_upvr.Part0 = Torso_upvr
		Right_Shoulder_upvr.Part1 = nil
		Right_Arm_Weld_upvr.Part1 = nil
		Right_Arm_upvr.CFrame = HumanoidRootPart_upvr.CFrame * CFrame.new(1.3, -0.2, -0.3) * CFrame.Angles(0.5235987755982988, 0.24434609527920614, -0.4363323129985824)
		Right_Arm_Weld_upvr.Part1 = Right_Arm_upvr
		Left_Shoulder_upvr.Part1 = nil
		Left_Arm_Weld_upvr.Part1 = nil
		Left_Arm_upvr.CFrame = HumanoidRootPart_upvr.CFrame * CFrame.new(-1.3, -0.1, -0.3) * CFrame.Angles(0.6981317007977318, -0.05235987755982989, 0.17453292519943295)
		Left_Arm_Weld_upvr.Part1 = Left_Arm_upvr
		wait(0.5)
	end
end
local Knife_upvr = Parent_2_upvr.Knife
function module_upvr.drawKnife() -- Line 265
	--[[ Upvalues[4]:
		[1]: Status_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: Knife_upvr (readonly)
		[4]: Right_Arm_upvr (readonly)
	]]
	if not Status_upvr:get("knifeEquipped") then
		module_upvr.yieldM4()
		Knife_upvr.Equip:Play()
		Status_upvr:set("knifeEquipped", true)
		Knife_upvr.Weld.Part0 = nil
		Knife_upvr.CFrame = Right_Arm_upvr.CFrame * CFrame.new(0, -1, -1) * CFrame.Angles((math.pi/2), math.pi, math.pi)
		Knife_upvr.Weld.Part0 = Right_Arm_upvr
	end
end
function module_upvr.yieldKnife() -- Line 276
	--[[ Upvalues[3]:
		[1]: Status_upvr (readonly)
		[2]: Knife_upvr (readonly)
		[3]: Torso_upvr (readonly)
	]]
	if Status_upvr:get("knifeEquipped") then
		Status_upvr:set("knifeEquipped", false)
		Knife_upvr.Weld.Part0 = nil
		Knife_upvr.CFrame = Torso_upvr.CFrame * CFrame.new(-1, -1, 0.5) * CFrame.Angles(-1.1344640137963142, 0, math.pi)
		Knife_upvr.Weld.Part0 = Torso_upvr
	end
end
function module_upvr.yieldWeapons() -- Line 285
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	module_upvr.yieldKnife()
	module_upvr.yieldM4()
end
local TweenService_upvr = game:GetService("TweenService")
function module_upvr.resetHead() -- Line 290
	--[[ Upvalues[2]:
		[1]: TweenService_upvr (readonly)
		[2]: Neck_upvr (readonly)
	]]
	TweenService_upvr:Create(Neck_upvr, TweenInfo.new(0.5), {
		C0 = CFrame.new(0, 1, 0) * CFrame.Angles((-math.pi/2), 0, math.pi);
	}):Play()
end
local Faces_upvr = Head_upvr.Faces
function module_upvr.updateFace(arg1, arg2) -- Line 295
	--[[ Upvalues[3]:
		[1]: Status_upvr (readonly)
		[2]: Faces_upvr (readonly)
		[3]: Head_upvr (readonly)
	]]
	if Status_upvr:get("mood") ~= "Dead" then
		if Status_upvr:get("mood") ~= "Hurt" or arg2 or arg1 == "Dead" then
			Status_upvr:get("currentFace").Parent = Faces_upvr
			Status_upvr:set("currentFace", Faces_upvr["face"..arg1])
			Status_upvr:get("currentFace").Parent = Head_upvr
		end
		Status_upvr:set("mood", arg1)
	end
end
return module_upvr