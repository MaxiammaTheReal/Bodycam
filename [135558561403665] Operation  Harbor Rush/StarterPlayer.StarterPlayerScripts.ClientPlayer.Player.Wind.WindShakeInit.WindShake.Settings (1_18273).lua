-- Name: Settings
-- Path: game:GetService("StarterPlayer").StarterPlayerScripts.ClientPlayer.Player.Wind.WindShakeInit.WindShake.Settings
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.25725899999997637 seconds

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 07:17:07
-- Luau version 6, Types version 3
-- Time taken: 0.004886 seconds

local module = {}
local tbl_upvr = {
	WindPower = "number";
	WindSpeed = "number";
	WindDirection = "Vector3";
	PivotOffset = "CFrame";
}
function module.new(arg1) -- Line 10
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 44 start (CF ANALYSIS FAILED)
	local module_upvr = {}
	local WindPower_upvw = arg1:GetAttribute("WindPower")
	local WindSpeed_upvw = arg1:GetAttribute("WindSpeed")
	local WindDirection_upvw = arg1:GetAttribute("WindDirection")
	local var7_upvr
	if typeof(WindPower_upvw) == tbl_upvr.WindPower then
		var7_upvr = WindPower_upvw
	else
		var7_upvr = nil
	end
	module_upvr.WindPower = var7_upvr
	if typeof(WindSpeed_upvw) == tbl_upvr.WindSpeed then
		var7_upvr = WindSpeed_upvw
	else
		var7_upvr = nil
	end
	module_upvr.WindSpeed = var7_upvr
	if typeof(WindDirection_upvw) == tbl_upvr.WindDirection then
		if 0 < WindDirection_upvw.Magnitude then
			var7_upvr = WindDirection_upvw.Unit
		else
			var7_upvr = Vector3.new(0, 0, 0)
		end
	else
		var7_upvr = nil
	end
	module_upvr.WindDirection = var7_upvr
	if arg1:IsA("BasePart") then
		var7_upvr = arg1.PivotOffset
		-- KONSTANTWARNING: GOTO [76] #56
	end
	-- KONSTANTERROR: [0] 1. Error Block 44 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [75] 55. Error Block 42 start (CF ANALYSIS FAILED)
	var7_upvr = nil
	module_upvr.PivotOffset = var7_upvr
	if typeof(module_upvr.PivotOffset) == "CFrame" then
		var7_upvr = module_upvr.PivotOffset:Inverse()
	else
		var7_upvr = nil
	end
	module_upvr.PivotOffsetInverse = var7_upvr
	var7_upvr = arg1:GetAttributeChangedSignal("WindPower")
	var7_upvr = var7_upvr:Connect(function() -- Line 30
		--[[ Upvalues[4]:
			[1]: WindPower_upvw (read and write)
			[2]: arg1 (readonly)
			[3]: module_upvr (readonly)
			[4]: tbl_upvr (copied, readonly)
		]]
		WindPower_upvw = arg1:GetAttribute("WindPower")
		local var9
		if typeof(WindPower_upvw) == tbl_upvr.WindPower then
			var9 = WindPower_upvw
		else
			var9 = nil
		end
		module_upvr.WindPower = var9
	end)
	local function var10() -- Line 35
		--[[ Upvalues[4]:
			[1]: WindSpeed_upvw (read and write)
			[2]: arg1 (readonly)
			[3]: module_upvr (readonly)
			[4]: tbl_upvr (copied, readonly)
		]]
		WindSpeed_upvw = arg1:GetAttribute("WindSpeed")
		local var11
		if typeof(WindSpeed_upvw) == tbl_upvr.WindSpeed then
			var11 = WindSpeed_upvw
		else
			var11 = nil
		end
		module_upvr.WindSpeed = var11
	end
	var10 = nil
	local var14_upvw = var10
	if arg1:IsA("BasePart") then
		var14_upvw = arg1:GetPropertyChangedSignal("PivotOffset"):Connect(function() -- Line 49
			--[[ Upvalues[2]:
				[1]: module_upvr (readonly)
				[2]: arg1 (readonly)
			]]
			module_upvr.PivotOffset = arg1.PivotOffset
			module_upvr.PivotOffsetInverse = module_upvr.PivotOffset:Inverse()
		end)
	end
	local any_Connect_result1_upvr = arg1:GetAttributeChangedSignal("WindSpeed"):Connect(var10)
	local any_Connect_result1_upvr_2 = arg1:GetAttributeChangedSignal("WindDirection"):Connect(function() -- Line 40
		--[[ Upvalues[4]:
			[1]: WindDirection_upvw (read and write)
			[2]: arg1 (readonly)
			[3]: module_upvr (readonly)
			[4]: tbl_upvr (copied, readonly)
		]]
		WindDirection_upvw = arg1:GetAttribute("WindDirection")
		local var13
		if typeof(WindDirection_upvw) == tbl_upvr.WindDirection then
			if 0 < WindDirection_upvw.Magnitude then
				var13 = WindDirection_upvw.Unit
			else
				var13 = Vector3.new(0, 0, 0)
			end
		else
			var13 = nil
		end
		module_upvr.WindDirection = var13
	end)
	function module_upvr.Destroy(arg1_2) -- Line 57
		--[[ Upvalues[5]:
			[1]: var7_upvr (readonly)
			[2]: any_Connect_result1_upvr (readonly)
			[3]: any_Connect_result1_upvr_2 (readonly)
			[4]: var14_upvw (read and write)
			[5]: module_upvr (readonly)
		]]
		var7_upvr:Disconnect()
		any_Connect_result1_upvr:Disconnect()
		any_Connect_result1_upvr_2:Disconnect()
		if var14_upvw then
			var14_upvw:Disconnect()
		end
		table.clear(module_upvr)
	end
	do
		return module_upvr
	end
	-- KONSTANTERROR: [75] 55. Error Block 42 end (CF ANALYSIS FAILED)
end
return module