-- Name: MovementModule
-- Path: game:GetService("Workspace").GAME.Suspects.Suspect_Regular.Scripts.Modules.MovementModule
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.25898140000026615 seconds

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 07:15:29
-- Luau version 6, Types version 3
-- Time taken: 0.009838 seconds

local module_upvr = {}
local PathfindingService_upvr = game:GetService("PathfindingService")
local Parent = script.Parent
local CoreModule_upvr = require(Parent.CoreModule)
local Status_upvr = require(Parent.Status)
local Parent_2 = script.Parent.Parent.Parent
local Humanoid_upvr = Parent_2.Humanoid
local HumanoidRootPart_upvr = Parent_2.HumanoidRootPart
local BindableEvent_upvr = Instance.new("BindableEvent")
function module_upvr.moveToFinished() -- Line 18
	--[[ Upvalues[3]:
		[1]: CoreModule_upvr (readonly)
		[2]: BindableEvent_upvr (readonly)
		[3]: Humanoid_upvr (readonly)
	]]
	local var10_upvw = true
	local var12_upvw = false
	CoreModule_upvr.spawn(function() -- Line 22
		--[[ Upvalues[3]:
			[1]: var12_upvw (read and write)
			[2]: var10_upvw (read and write)
			[3]: BindableEvent_upvr (copied, readonly)
		]]
		wait(1)
		if not var12_upvw then
			var10_upvw = false
			BindableEvent_upvr:Fire()
		end
	end)
	CoreModule_upvr.spawn(function() -- Line 30
		--[[ Upvalues[2]:
			[1]: Humanoid_upvr (copied, readonly)
			[2]: BindableEvent_upvr (copied, readonly)
		]]
		Humanoid_upvr.MoveToFinished:Wait()
		BindableEvent_upvr:Fire()
	end)
	BindableEvent_upvr.Event:Wait()
	var12_upvw = true
	return var10_upvw
end
local any_CreatePath_result1_upvr = PathfindingService_upvr:CreatePath()
local RunService_upvr = game:GetService("RunService")
local Troubleshoot_upvr = require(Parent.Troubleshoot)
function module_upvr.pathToLocation(arg1) -- Line 43
	--[[ Upvalues[8]:
		[1]: any_CreatePath_result1_upvr (readonly)
		[2]: HumanoidRootPart_upvr (readonly)
		[3]: CoreModule_upvr (readonly)
		[4]: RunService_upvr (readonly)
		[5]: module_upvr (readonly)
		[6]: Troubleshoot_upvr (readonly)
		[7]: Humanoid_upvr (readonly)
		[8]: Status_upvr (readonly)
	]]
	if not arg1 or not arg1.Parent then
	else
		any_CreatePath_result1_upvr:ComputeAsync(HumanoidRootPart_upvr.Position, arg1.Position)
		if any_CreatePath_result1_upvr.Status == Enum.PathStatus.NoPath then return end
		local any_GetWaypoints_result1 = any_CreatePath_result1_upvr:GetWaypoints()
		if any_GetWaypoints_result1[1] and 10 < CoreModule_upvr.checkDist(any_GetWaypoints_result1[1], HumanoidRootPart_upvr) then
			RunService_upvr.Heartbeat:Wait()
			module_upvr.pathToLocation(arg1)
		end
		Troubleshoot_upvr.visualizePath(any_CreatePath_result1_upvr)
		for _, v in ipairs(any_GetWaypoints_result1) do
			if v.Action == Enum.PathWaypointAction.Jump then
				Humanoid_upvr.Jump = true
			end
			Humanoid_upvr:MoveTo(v.Position)
			CoreModule_upvr.spawn(function() -- Line 67
				--[[ Upvalues[2]:
					[1]: Humanoid_upvr (copied, readonly)
					[2]: HumanoidRootPart_upvr (copied, readonly)
				]]
				while HumanoidRootPart_upvr.Position.Y - 1 < Humanoid_upvr.WalkToPoint.Y do
					wait(0.1)
					Humanoid_upvr.Jump = true
				end
			end)
			if not module_upvr.moveToFinished() then break end
			if not arg1.Parent then break end
			if CoreModule_upvr.checkDist(HumanoidRootPart_upvr, arg1) >= 30 or CoreModule_upvr.checkSight(arg1) then break end
			if Status_upvr:get("currentTarget") ~= arg1 then return end
			if CoreModule_upvr.checkSight(arg1) and arg1.Position.Y <= HumanoidRootPart_upvr.Position.Y - 5 then
				Humanoid_upvr:MoveTo(HumanoidRootPart_upvr.Position)
				return
			end
			if 30 < CoreModule_upvr.checkDist(arg1, any_GetWaypoints_result1[#any_GetWaypoints_result1]) then break end
		end
	end
end
function module_upvr.walkRandom() -- Line 89
	--[[ Upvalues[5]:
		[1]: HumanoidRootPart_upvr (readonly)
		[2]: PathfindingService_upvr (readonly)
		[3]: Humanoid_upvr (readonly)
		[4]: CoreModule_upvr (readonly)
		[5]: Status_upvr (readonly)
	]]
	local any_CreatePath_result1 = PathfindingService_upvr:CreatePath()
	any_CreatePath_result1:ComputeAsync(HumanoidRootPart_upvr.Position, HumanoidRootPart_upvr.Position + Vector3.new(math.random(-50, 50), 0, math.random(-50, 50)))
	if any_CreatePath_result1.Status == Enum.PathStatus.Success then
		local ipairs_result1, ipairs_result2_2, ipairs_result3 = ipairs(any_CreatePath_result1:GetWaypoints())
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [47.9]
		if nil.Action == Enum.PathWaypointAction.Jump then
			Humanoid_upvr.Jump = true
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		Humanoid_upvr:MoveTo(nil.Position)
		CoreModule_upvr.spawn(function() -- Line 103
			--[[ Upvalues[2]:
				[1]: Humanoid_upvr (copied, readonly)
				[2]: HumanoidRootPart_upvr (copied, readonly)
			]]
			wait(0.5)
			if HumanoidRootPart_upvr.Position.Y < Humanoid_upvr.WalkToPoint.Y then
				Humanoid_upvr.Jump = true
			end
		end)
		if Humanoid_upvr.MoveToFinished:Wait() and not Status_upvr:get("currentTarget") then
			-- KONSTANTWARNING: GOTO [47] #35
		end
	else
		wait(2)
	end
end
function module_upvr.strafe() -- Line 120
	--[[ Upvalues[3]:
		[1]: Status_upvr (readonly)
		[2]: HumanoidRootPart_upvr (readonly)
		[3]: CoreModule_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 28 start (CF ANALYSIS FAILED)
	local randint_from_1 = math.random(2)
	local var30
	if randint_from_1 == 1 then
		var30 = HumanoidRootPart_upvr.CFrame.RightVector
	elseif randint_from_1 == 2 then
		var30 = -HumanoidRootPart_upvr.CFrame.RightVector
	end
	local var31
	if not CoreModule_upvr.raycast(HumanoidRootPart_upvr.Position, var30 * 2) and CoreModule_upvr.raycast(var31, Vector3.new(0, -7, 0)) then
		var31 += var30 * 2
		-- KONSTANTWARNING: GOTO [35] #26
	end
	-- KONSTANTERROR: [0] 1. Error Block 28 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [52] 41. Error Block 31 start (CF ANALYSIS FAILED)
	local _, any_raycast_result2 = CoreModule_upvr.raycast(var31, (Status_upvr:get("currentTarget").Position - var31).Unit * 30)
	if any_raycast_result2 then
		if any_raycast_result2.Instance:IsDescendantOf(Status_upvr:get("currentTarget").Parent) then
		else
			var31 = HumanoidRootPart_upvr.Position
		end
		var31 = HumanoidRootPart_upvr.Position
	end
	do
		return var31
	end
	-- KONSTANTERROR: [52] 41. Error Block 31 end (CF ANALYSIS FAILED)
end
function checkDirection(arg1) -- Line 154
	--[[ Upvalues[3]:
		[1]: Status_upvr (readonly)
		[2]: HumanoidRootPart_upvr (readonly)
		[3]: CoreModule_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 19 start (CF ANALYSIS FAILED)
	local var35
	if not CoreModule_upvr.raycast(HumanoidRootPart_upvr.Position, arg1 * 1) and CoreModule_upvr.raycast(var35, Vector3.new(0, -7, 0)) then
		var35 += arg1 * 1
		if 1 == 5 then
		end
		-- KONSTANTWARNING: GOTO [15] #13
	end
	-- KONSTANTERROR: [0] 1. Error Block 19 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [32] 28. Error Block 16 start (CF ANALYSIS FAILED)
	do
		return true, var35
	end
	-- KONSTANTERROR: [32] 28. Error Block 16 end (CF ANALYSIS FAILED)
end
function module_upvr.retreat() -- Line 175
	--[[ Upvalues[2]:
		[1]: Status_upvr (readonly)
		[2]: HumanoidRootPart_upvr (readonly)
	]]
	local checkDirection_result1, checkDirection_result2 = checkDirection(-(Status_upvr:get("currentTarget").Position - HumanoidRootPart_upvr.Position).Unit)
	if checkDirection_result1 then
		return checkDirection_result2
	end
	local checkDirection_result1_3, checkDirection_result2_3 = checkDirection(HumanoidRootPart_upvr.CFrame.RightVector)
	if checkDirection_result1_3 then
		return checkDirection_result2_3
	end
	local checkDirection_result1_2, checkDirection_result2_2 = checkDirection(-HumanoidRootPart_upvr.CFrame.RightVector)
	if checkDirection_result1_2 then
		return checkDirection_result2_2
	end
	return HumanoidRootPart_upvr.Position
end
function module_upvr.slowAdvance() -- Line 198
	--[[ Upvalues[3]:
		[1]: Status_upvr (readonly)
		[2]: HumanoidRootPart_upvr (readonly)
		[3]: CoreModule_upvr (readonly)
	]]
	local Position = Status_upvr:get("currentTarget").Position
	local var43
	repeat
		if not CoreModule_upvr.raycast(var43, (Position - var43).Unit * 1) and CoreModule_upvr.raycast(var43, Vector3.new(0, -7, 0)) then
			var43 += (Position - var43).Unit * 1
		else
			var43 += (Position - var43).Unit * -1
			return var43
		end
	until 30 - 1 <= 0
	return var43
end
return module_upvr