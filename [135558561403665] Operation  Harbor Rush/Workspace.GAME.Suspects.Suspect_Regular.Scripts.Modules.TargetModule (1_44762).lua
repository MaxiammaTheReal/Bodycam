-- Name: TargetModule
-- Path: game:GetService("Workspace").GAME.Suspects.Suspect_Regular.Scripts.Modules.TargetModule
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.25885310000012396 seconds

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 07:15:30
-- Luau version 6, Types version 3
-- Time taken: 0.004992 seconds

local module = {}
local Parent = script.Parent
local Parent_upvr = script.Parent.Parent.Parent
local Status_upvr = require(Parent.Status)
local HumanoidRootPart_upvr = Parent_upvr.HumanoidRootPart
local CoreModule_upvr = require(Parent.CoreModule)
function module.findTarget() -- Line 10
	--[[ Upvalues[4]:
		[1]: Parent_upvr (readonly)
		[2]: Status_upvr (readonly)
		[3]: HumanoidRootPart_upvr (readonly)
		[4]: CoreModule_upvr (readonly)
	]]
	Status_upvr:set("potentialTargets", {})
	Status_upvr:set("activeAllies", {})
	local tbl = {}
	local var27
	for _, v in ipairs(workspace:GetChildren()) do
		local Humanoid = v:FindFirstChild("Humanoid")
		local var29
		if not var29 then
			var29 = v:FindFirstChild("Torso")
		end
		if Humanoid and var29 and v ~= Parent_upvr and (HumanoidRootPart_upvr.Position - var29.Position).magnitude < Parent_upvr.Settings.DetectionRange.Value and 0 < Humanoid.Health then
			if CoreModule_upvr.isAlly(v) then
				table.insert(Status_upvr:get("activeAllies"), var29)
			else
				table.insert(Status_upvr:get("potentialTargets"), var29)
			end
		end
	end
	if 0 < #Status_upvr:get("potentialTargets") then
		local var33
		for _, v_2 in ipairs(Status_upvr:get("potentialTargets")) do
			var29 = CoreModule_upvr
			var29 = v_2
			if var29.checkSight(var29) then
				var29 = tbl
				table.insert(var29, v_2)
			end
		end
		if 0 < #tbl then
			for i_3, v_3 in ipairs(tbl) do
				var29 = HumanoidRootPart_upvr.Position - v_3.Position
				if var29.magnitude < var33 then
					var27 = v_3
					var29 = HumanoidRootPart_upvr.Position
					var33 = (var29 - v_3.Position).magnitude
				end
			end
		else
			i_3 = "potentialTargets"
			for _, v_4 in ipairs(Status_upvr:get(i_3)) do
				var29 = HumanoidRootPart_upvr.Position - v_4.Position
				if var29.magnitude < var33 then
					var27 = v_4
					var29 = HumanoidRootPart_upvr.Position
					var33 = (var29 - v_4.Position).magnitude
				end
			end
		end
	end
	Status_upvr:set("currentTarget", var27)
end
return module