-- Name: ControllerWeaponSwitch
-- Path: game:GetService("Players").LocalPlayer.PlayerGui.ControllerWeaponSwitch
-- Class: LocalScript
-- Exploit: Xeno 
-- Time to decompile: 0.5884996999993746 seconds

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 07:17:13
-- Luau version 6, Types version 3
-- Time taken: 0.024278 seconds

local UserInputService = game:GetService("UserInputService")
if not UserInputService.GamepadEnabled then
else
	local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
	local Character = LocalPlayer_upvr.Character
	if not Character then
		Character = LocalPlayer_upvr.CharacterAdded:Wait()
	end
	local Humanoid_upvr = Character:WaitForChild("Humanoid")
	local MarketplaceService_upvr = game:GetService("MarketplaceService")
	local function ownsGamepass(arg1, arg2) -- Line 21
		--[[ Upvalues[1]:
			[1]: MarketplaceService_upvr (readonly)
		]]
		while 0 < 3 do
			local pcall_result1, pcall_result2 = pcall(function() -- Line 25
				--[[ Upvalues[3]:
					[1]: MarketplaceService_upvr (copied, readonly)
					[2]: arg1 (readonly)
					[3]: arg2 (readonly)
				]]
				return MarketplaceService_upvr:UserOwnsGamePassAsync(arg1, arg2)
			end)
			if pcall_result1 then
				return pcall_result2
			end
			task.wait(0.5)
		end
		return false
	end
	repeat
		task.wait()
	until not LocalPlayer_upvr:WaitForChild("PlayerGui"):FindFirstChild("Intro")
	task.wait(1.5)
	local var11_upvw
	local ownsGamepass_result1_upvr_3 = ownsGamepass(LocalPlayer_upvr.UserId, 950570797)
	local ownsGamepass_result1_upvr = ownsGamepass(LocalPlayer_upvr.UserId, 790313436)
	local ownsGamepass_result1_upvr_2 = ownsGamepass(LocalPlayer_upvr.UserId, 780028006)
	local ownsGamepass_result1_upvr_4 = ownsGamepass(LocalPlayer_upvr.UserId, 779458953)
	local function initializePreferredLoadout_upvr() -- Line 53, Named "initializePreferredLoadout"
		--[[ Upvalues[7]:
			[1]: var11_upvw (read and write)
			[2]: Humanoid_upvr (readonly)
			[3]: LocalPlayer_upvr (readonly)
			[4]: ownsGamepass_result1_upvr_3 (readonly)
			[5]: ownsGamepass_result1_upvr (readonly)
			[6]: ownsGamepass_result1_upvr_2 (readonly)
			[7]: ownsGamepass_result1_upvr_4 (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		var11_upvw = {}
		local _, pairs_result2_3, pairs_result3_2 = pairs(Humanoid_upvr.Parent:GetChildren())
		local var43
		for _, v in var43, pairs_result2_3, pairs_result3_2 do
			if v:IsA("Tool") then
				table.insert({}, v)
			end
		end
		var43 = pairs(LocalPlayer_upvr.Backpack:GetChildren())
		local pairs_result1, pairs_result2_2, pairs_result3 = pairs(LocalPlayer_upvr.Backpack:GetChildren())
		for _, v_2 in pairs_result1, pairs_result2_2, pairs_result3 do
			if v_2:IsA("Tool") then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				table.insert({}, v_2)
			end
		end
		pairs_result1 = nil
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		for i_3, v_3 in pairs({}) do
			if v_3.Name:find("HK416A5") then
				pairs_result1 = v_3
			elseif v_3.Name:find("HK416") then
			elseif v_3.Name:find("HK33") then
			elseif v_3.Name:find("M4") then
				local var50 = v_3
			elseif v_3.Name:find("USP") then
				local var51 = v_3
			elseif v_3.Name:find("Shield") then
				local var52 = v_3
			elseif v_3.Name:find("M870") then
				local var53 = v_3
			elseif v_3.Name:find("Flashbang") then
				if not nil then
					local var54 = v_3
				else
					local var55 = v_3
				end
			end
		end
		if ownsGamepass_result1_upvr_3 and ownsGamepass_result1_upvr and ownsGamepass_result1_upvr_2 and ownsGamepass_result1_upvr_4 then
			local tbl_16 = {}
			i_3 = v_3
			v_3 = var53
			tbl_16[1] = pairs_result1
			tbl_16[2] = v_3
			tbl_16[3] = i_3
			tbl_16[4] = v_3
			tbl_16[5] = var52
			tbl_16[6] = var54
			tbl_16[7] = var55
			var11_upvw = tbl_16
		else
			if ownsGamepass_result1_upvr_3 and ownsGamepass_result1_upvr and ownsGamepass_result1_upvr_2 then
				local tbl_11 = {}
				i_3 = v_3
				v_3 = var53
				tbl_11[1] = pairs_result1
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				tbl_11[2] = v_3
				tbl_11[3] = i_3
				tbl_11[4] = v_3
				tbl_11[5] = var54
				tbl_11[6] = var55
				var11_upvw = tbl_11
				return
			end
			if ownsGamepass_result1_upvr_3 and ownsGamepass_result1_upvr and ownsGamepass_result1_upvr_4 then
				local tbl_2 = {}
				i_3 = v_3
				v_3 = var52
				tbl_2[1] = pairs_result1
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				tbl_2[2] = v_3
				tbl_2[3] = i_3
				tbl_2[4] = v_3
				tbl_2[5] = var54
				tbl_2[6] = var55
				var11_upvw = tbl_2
				return
			end
			if ownsGamepass_result1_upvr_3 and ownsGamepass_result1_upvr_2 and ownsGamepass_result1_upvr_4 then
				local tbl_6 = {}
				i_3 = var52
				v_3 = var54
				tbl_6[1] = pairs_result1
				tbl_6[2] = var53
				tbl_6[3] = i_3
				tbl_6[4] = v_3
				tbl_6[5] = var55
				var11_upvw = tbl_6
				return
			end
			if ownsGamepass_result1_upvr and ownsGamepass_result1_upvr_2 and ownsGamepass_result1_upvr_4 then
				local tbl_4 = {}
				i_3 = var53
				v_3 = var52
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				tbl_4[1] = v_3
				tbl_4[2] = v_3
				tbl_4[3] = i_3
				tbl_4[4] = v_3
				tbl_4[5] = var54
				tbl_4[6] = var55
				var11_upvw = tbl_4
				return
			end
			if ownsGamepass_result1_upvr_3 and ownsGamepass_result1_upvr then
				local tbl_15 = {}
				i_3 = v_3
				v_3 = var54
				tbl_15[1] = pairs_result1
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				tbl_15[2] = v_3
				tbl_15[3] = i_3
				tbl_15[4] = v_3
				tbl_15[5] = var55
				var11_upvw = tbl_15
				return
			end
			if ownsGamepass_result1_upvr_3 and ownsGamepass_result1_upvr_2 then
				local tbl = {}
				i_3 = var54
				v_3 = var55
				tbl[1] = pairs_result1
				tbl[2] = var53
				tbl[3] = i_3
				tbl[4] = v_3
				var11_upvw = tbl
				return
			end
			if ownsGamepass_result1_upvr_3 and ownsGamepass_result1_upvr_4 then
				local tbl_3 = {}
				i_3 = var54
				v_3 = var55
				tbl_3[1] = pairs_result1
				tbl_3[2] = var52
				tbl_3[3] = i_3
				tbl_3[4] = v_3
				var11_upvw = tbl_3
				return
			end
			if ownsGamepass_result1_upvr and ownsGamepass_result1_upvr_2 then
				local tbl_14 = {}
				i_3 = var53
				v_3 = var54
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				tbl_14[1] = v_3
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				tbl_14[2] = v_3
				tbl_14[3] = i_3
				tbl_14[4] = v_3
				tbl_14[5] = var55
				var11_upvw = tbl_14
				return
			end
			if ownsGamepass_result1_upvr and ownsGamepass_result1_upvr_4 then
				local tbl_5 = {}
				i_3 = var52
				v_3 = var54
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				tbl_5[1] = v_3
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				tbl_5[2] = v_3
				tbl_5[3] = i_3
				tbl_5[4] = v_3
				tbl_5[5] = var55
				var11_upvw = tbl_5
				return
			end
			if ownsGamepass_result1_upvr_2 and ownsGamepass_result1_upvr_4 then
				local tbl_9 = {}
				i_3 = var52
				v_3 = var51
				tbl_9[1] = var50
				tbl_9[2] = var53
				tbl_9[3] = i_3
				tbl_9[4] = v_3
				tbl_9[5] = var54
				tbl_9[6] = var55
				var11_upvw = tbl_9
				return
			end
			if ownsGamepass_result1_upvr_3 then
				local tbl_7 = {}
				i_3 = var55
				tbl_7[1] = pairs_result1
				tbl_7[2] = var54
				tbl_7[3] = i_3
				var11_upvw = tbl_7
				return
			end
			if ownsGamepass_result1_upvr then
				local tbl_13 = {}
				i_3 = var54
				v_3 = var55
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				tbl_13[1] = v_3
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				tbl_13[2] = v_3
				tbl_13[3] = i_3
				tbl_13[4] = v_3
				var11_upvw = tbl_13
				return
			end
			if ownsGamepass_result1_upvr_2 then
				local tbl_10 = {}
				i_3 = var51
				v_3 = var54
				tbl_10[1] = var50
				tbl_10[2] = var53
				tbl_10[3] = i_3
				tbl_10[4] = v_3
				tbl_10[5] = var55
				var11_upvw = tbl_10
				return
			end
			if ownsGamepass_result1_upvr_4 then
				local tbl_8 = {}
				i_3 = var52
				v_3 = var54
				tbl_8[1] = var50
				tbl_8[2] = var51
				tbl_8[3] = i_3
				tbl_8[4] = v_3
				tbl_8[5] = var55
				var11_upvw = tbl_8
				return
			end
			local tbl_12 = {}
			i_3 = var54
			v_3 = var55
			tbl_12[1] = var50
			tbl_12[2] = var51
			tbl_12[3] = i_3
			tbl_12[4] = v_3
			var11_upvw = tbl_12
		end
	end
	local function switchToNextGun_upvr() -- Line 130, Named "switchToNextGun"
		--[[ Upvalues[3]:
			[1]: var11_upvw (read and write)
			[2]: initializePreferredLoadout_upvr (readonly)
			[3]: Humanoid_upvr (readonly)
		]]
		if not var11_upvw then
			initializePreferredLoadout_upvr()
		end
		local class_Tool = Humanoid_upvr.Parent:FindFirstChildOfClass("Tool")
		if not class_Tool then
			Humanoid_upvr:EquipTool(var11_upvw[1])
		else
			local table_find_result1 = table.find(var11_upvw, class_Tool)
			local var74
			if table_find_result1 then
				var74 = #var11_upvw
				if table_find_result1 == var74 then
					var74 = Humanoid_upvr:EquipTool
					var74(var11_upvw[1])
				else
					var74 = var11_upvw[table_find_result1 + 1]
					while not (not var74 or var74.Parent) do
						var74 = var11_upvw[(table_find_result1 + 1) % #var11_upvw + 1]
					end
					Humanoid_upvr:EquipTool(var74)
				end
			end
			Humanoid_upvr:EquipTool(var11_upvw[1])
		end
	end
	local DPadUp_upvr = Enum.KeyCode.DPadUp
	UserInputService.InputBegan:Connect(function(arg1) -- Line 159, Named "onInputBegan"
		--[[ Upvalues[2]:
			[1]: DPadUp_upvr (readonly)
			[2]: switchToNextGun_upvr (readonly)
		]]
		if arg1.KeyCode == DPadUp_upvr and arg1.UserInputType == Enum.UserInputType.Gamepad1 and arg1.UserInputState == Enum.UserInputState.Begin then
			switchToNextGun_upvr()
		end
	end)
end