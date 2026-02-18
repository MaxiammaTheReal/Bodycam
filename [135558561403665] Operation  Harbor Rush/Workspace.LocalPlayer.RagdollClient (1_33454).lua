-- Name: RagdollClient
-- Path: game:GetService("Workspace").LocalPlayer.RagdollClient
-- Class: LocalScript
-- Exploit: Xeno 
-- Time to decompile: 0.5616386999990937 seconds

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 07:16:55
-- Luau version 6, Types version 3
-- Time taken: 0.012302 seconds

local Parent_upvr = script.Parent
function recurse(arg1, arg2, arg3) -- Line 3
	local var9
	for _, v in pairs(arg1:GetChildren()) do
		var9 += 1
		arg2(var9, v)
		if 0 < #v:GetChildren() then
			var9 = recurse(v, arg2, var9)
		end
	end
	return var9
end
function ragdollJoint(arg1, arg2, arg3, arg4, arg5) -- Line 17
	--[[ Upvalues[1]:
		[1]: Parent_upvr (readonly)
	]]
	local var14 = arg3.."RigAttachment"
	local any = Instance.new(arg4.."Constraint")
	any.Attachment0 = arg1:FindFirstChild(var14)
	any.Attachment1 = arg2:FindFirstChild(var14)
	any.Name = "RagdollConstraint"..arg2.Name
	local var16 = arg5
	if not var16 then
		var16 = {}
	end
	for _, v_2 in next, var16 do
		any[v_2[1]] = v_2[2]
	end
	any.Parent = Parent_upvr
end
function getAttachment0(arg1) -- Line 31
	--[[ Upvalues[1]:
		[1]: Parent_upvr (readonly)
	]]
	for _, v_3 in next, Parent_upvr:GetChildren() do
		local SOME = v_3:FindFirstChild(arg1)
		if SOME then
			return SOME
		end
	end
end
Parent_upvr:WaitForChild("Humanoid").Died:connect(function() -- Line 40
	--[[ Upvalues[1]:
		[1]: Parent_upvr (readonly)
	]]
	local CurrentCamera = workspace.CurrentCamera
	if CurrentCamera.CameraSubject == Parent_upvr.Humanoid then
		CurrentCamera.CameraSubject = Parent_upvr.UpperTorso
	end
	Parent_upvr.HumanoidRootPart.Anchored = true
	Parent_upvr.HumanoidRootPart.CanCollide = false
	recurse(Parent_upvr, function(arg1, arg2) -- Line 51
		if arg2:IsA("Attachment") then
			arg2.Axis = Vector3.new(0, 1, 0)
			arg2.SecondaryAxis = Vector3.new(0, 0, 1)
			arg2.Rotation = Vector3.new(0, 0, 0)
		end
	end)
	for _, v_4 in next, Parent_upvr:GetChildren() do
		if v_4:IsA("Accoutrement") then
			for _, v_5 in next, v_4:GetChildren() do
				if v_5:IsA("BasePart") then
					local class_Attachment = v_5:FindFirstChildOfClass("Attachment")
					local getAttachment0_result1 = getAttachment0(class_Attachment.Name)
					if getAttachment0_result1 and class_Attachment then
						local HingeConstraint_2 = Instance.new("HingeConstraint")
						HingeConstraint_2.Attachment0 = getAttachment0_result1
						HingeConstraint_2.Attachment1 = class_Attachment
						HingeConstraint_2.LimitsEnabled = true
						HingeConstraint_2.UpperAngle = 0
						HingeConstraint_2.LowerAngle = 0
						HingeConstraint_2.Parent = Parent_upvr
					end
				end
			end
		end
	end
	ragdollJoint(Parent_upvr.LowerTorso, Parent_upvr.UpperTorso, "Waist", "BallSocket", {{"LimitsEnabled", true}, {"UpperAngle", 5}})
	ragdollJoint(Parent_upvr.UpperTorso, Parent_upvr.Head, "Neck", "BallSocket", {{"LimitsEnabled", true}, {"UpperAngle", 15}})
	local tbl_13 = {{"LimitsEnabled", true}, {"UpperAngle", 0}, {"LowerAngle", 0}}
	ragdollJoint(Parent_upvr.LeftLowerArm, Parent_upvr.LeftHand, "LeftWrist", "Hinge", tbl_13)
	ragdollJoint(Parent_upvr.RightLowerArm, Parent_upvr.RightHand, "RightWrist", "Hinge", tbl_13)
	local tbl_8 = {{"LimitsEnabled", true}, {"UpperAngle", 0}, {"LowerAngle", -75}}
	ragdollJoint(Parent_upvr.LeftUpperLeg, Parent_upvr.LeftLowerLeg, "LeftKnee", "Hinge", tbl_8)
	ragdollJoint(Parent_upvr.RightUpperLeg, Parent_upvr.RightLowerLeg, "RightKnee", "Hinge", tbl_8)
	local tbl_11 = {{"LimitsEnabled", true}, {"UpperAngle", 15}, {"LowerAngle", -45}}
	ragdollJoint(Parent_upvr.LeftLowerLeg, Parent_upvr.LeftFoot, "LeftAnkle", "Hinge", tbl_11)
	ragdollJoint(Parent_upvr.RightLowerLeg, Parent_upvr.RightFoot, "RightAnkle", "Hinge", tbl_11)
	ragdollJoint(Parent_upvr.UpperTorso, Parent_upvr.LeftUpperArm, "LeftShoulder", "BallSocket")
	ragdollJoint(Parent_upvr.LeftUpperArm, Parent_upvr.LeftLowerArm, "LeftElbow", "BallSocket")
	ragdollJoint(Parent_upvr.UpperTorso, Parent_upvr.RightUpperArm, "RightShoulder", "BallSocket")
	ragdollJoint(Parent_upvr.RightUpperArm, Parent_upvr.RightLowerArm, "RightElbow", "BallSocket")
	ragdollJoint(Parent_upvr.LowerTorso, Parent_upvr.LeftUpperLeg, "LeftHip", "BallSocket")
	ragdollJoint(Parent_upvr.LowerTorso, Parent_upvr.RightUpperLeg, "RightHip", "BallSocket")
end)