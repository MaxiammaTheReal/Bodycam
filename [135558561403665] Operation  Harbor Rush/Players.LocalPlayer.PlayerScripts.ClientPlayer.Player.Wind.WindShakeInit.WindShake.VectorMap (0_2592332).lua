-- Name: VectorMap
-- Path: game:GetService("Players").LocalPlayer.PlayerScripts.ClientPlayer.Player.Wind.WindShakeInit.WindShake.VectorMap
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.625776599999881 seconds

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 07:17:08
-- Luau version 6, Types version 3
-- Time taken: 0.009456 seconds

local module_upvr = {}
module_upvr.__index = module_upvr
function module_upvr.new(arg1) -- Line 6
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	return setmetatable({
		_voxelSize = arg1 or 50;
		_voxels = {};
	}, module_upvr)
end
function module_upvr._debugDrawVoxel(arg1, arg2) -- Line 13
	local Part = Instance.new("Part")
	Part.Name = tostring(arg2)
	Part.Anchored = true
	Part.CanCollide = false
	Part.Transparency = 1
	Part.Size = Vector3.new(1, 1, 1) * arg1._voxelSize
	Part.Position = arg2 * arg1._voxelSize + (Vector3.new(1, 1, 1)) * (arg1._voxelSize / 2)
	Part.Parent = workspace
	local SelectionBox = Instance.new("SelectionBox")
	SelectionBox.Color3 = Color3.new(0, 0, 1)
	SelectionBox.Adornee = Part
	SelectionBox.Parent = Part
	task.delay(0.03333333333333333, Part.Destroy, Part)
end
function module_upvr.AddObject(arg1, arg2, arg3) -- Line 31
	local ClassName_2 = arg3.ClassName
	local _voxelSize_3 = arg1._voxelSize
	local vector3 = Vector3.new(math.floor(arg2.X / _voxelSize_3), math.floor(arg2.Y / _voxelSize_3), math.floor(arg2.Z / _voxelSize_3))
	local var8 = arg1._voxels[vector3]
	if var8 == nil then
		local tbl_3 = {}
		local tbl_2 = {}
		tbl_2[1] = arg3
		tbl_3[ClassName_2] = tbl_2
		arg1._voxels[vector3] = tbl_3
		return vector3
	end
	if var8[ClassName_2] == nil then
		local tbl = {}
		tbl[1] = arg3
		var8[ClassName_2] = tbl
		return vector3
	end
	table.insert(var8[ClassName_2], arg3)
	return vector3
end
function module_upvr.RemoveObject(arg1, arg2, arg3) -- Line 56
	-- KONSTANTERROR: [0] 1. Error Block 17 start (CF ANALYSIS FAILED)
	local var12 = arg1._voxels[arg2]
	if var12 == nil then return end
	local ClassName = arg3.ClassName
	if var12[ClassName] == nil then return end
	-- KONSTANTERROR: [0] 1. Error Block 17 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [25] 21. Error Block 8 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [25] 21. Error Block 8 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [17] 14. Error Block 6 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [25.10]
	-- KONSTANTERROR: [17] 14. Error Block 6 end (CF ANALYSIS FAILED)
end
function module_upvr.GetVoxel(arg1, arg2) -- Line 90
	return arg1._voxels[arg2]
end
function module_upvr.ForEachObjectInRegion(arg1, arg2, arg3, arg4) -- Line 94
	local _voxelSize_2 = arg1._voxelSize
	for i = math.floor(math.min(arg3.X, arg2.X) / _voxelSize_2), math.floor(math.max(arg3.X, arg2.X) / _voxelSize_2) do
		for i_2 = math.floor(math.min(arg3.Z, arg2.Z) / _voxelSize_2), math.floor(math.max(arg3.Z, arg2.Z) / _voxelSize_2) do
			for i_3 = math.floor(math.min(arg3.Y, arg2.Y) / _voxelSize_2), math.floor(math.max(arg3.Y, arg2.Y) / _voxelSize_2) do
				local var22 = arg1._voxels[Vector3.new(i, i_3, i_2)]
				if var22 then
					for i_4, v in var22 do
						for _, v_2 in v do
							arg4(i_4, v_2)
						end
					end
				end
			end
		end
	end
end
function module_upvr.ForEachObjectInView(arg1, arg2, arg3, arg4) -- Line 117
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local _voxelSize = arg1._voxelSize
	local CFrame = arg2.CFrame
	local Position_upvr = CFrame.Position
	local RightVector = CFrame.RightVector
	local UpVector = CFrame.UpVector
	local var28_upvr = arg3 / 2
	local var29_upvr = math.tan(math.rad((arg2.FieldOfView + 5) / 2)) * arg3
	local var30_upvr = (var29_upvr) * (arg2.ViewportSize.X / arg2.ViewportSize.Y)
	local var31 = CFrame * CFrame.new(0, 0, -arg3)
	local var32 = var31 * Vector3.new(-var30_upvr, var29_upvr, 0)
	local var33 = var31 * Vector3.new(var30_upvr, var29_upvr, 0)
	local var34 = var31 * Vector3.new(-var30_upvr, -var29_upvr, 0)
	local var35 = var31 * Vector3.new(var30_upvr, -var29_upvr, 0)
	local any_Min_result1 = Position_upvr:Min(var32):Min(var33):Min(var34):Min(var35)
	local any_Max_result1 = Position_upvr:Max(var32):Max(var33):Max(var34):Max(var35)
	local any_Inverse_result1_upvr = CFrame * CFrame.new(0, 0, -var28_upvr):Inverse()
	local Unit_upvr_4 = UpVector:Cross(var35 - Position_upvr).Unit
	local Unit_upvr_2 = UpVector:Cross(var34 - Position_upvr).Unit
	local Unit_upvr_3 = RightVector:Cross(Position_upvr - var33).Unit
	local Unit_upvr = RightVector:Cross(Position_upvr - var35).Unit
	local function _(arg1_2) -- Line 155, Named "isPointInView"
		--[[ Upvalues[9]:
			[1]: any_Inverse_result1_upvr (readonly)
			[2]: var30_upvr (readonly)
			[3]: var29_upvr (readonly)
			[4]: var28_upvr (readonly)
			[5]: Position_upvr (readonly)
			[6]: Unit_upvr_4 (readonly)
			[7]: Unit_upvr_2 (readonly)
			[8]: Unit_upvr_3 (readonly)
			[9]: Unit_upvr (readonly)
		]]
		local var45 = any_Inverse_result1_upvr * arg1_2
		if var30_upvr < var45.X or var45.X < -var30_upvr or var29_upvr < var45.Y or var45.Y < -var29_upvr or var28_upvr < var45.Z or var45.Z < -var28_upvr then
			return false
		end
		local var46 = arg1_2 - Position_upvr
		if Unit_upvr_4:Dot(var46) < 0 or 0 < Unit_upvr_2:Dot(var46) or Unit_upvr_3:Dot(var46) < 0 or 0 < Unit_upvr:Dot(var46) then
			return false
		end
		return true
	end
	local _ = Vector3.new(math.floor(any_Min_result1.X / _voxelSize), math.floor(any_Min_result1.Y / _voxelSize), math.floor(any_Min_result1.Z / _voxelSize)).X
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [342] 261. Error Block 22 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [342] 261. Error Block 22 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [210] 157. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [210] 157. Error Block 2 end (CF ANALYSIS FAILED)
end
function module_upvr.ClearAll(arg1) -- Line 238
	arg1._voxels = {}
end
return module_upvr