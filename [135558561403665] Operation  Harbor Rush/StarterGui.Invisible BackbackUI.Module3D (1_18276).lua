-- Name: Module3D
-- Path: game:GetService("StarterGui")['Invisible BackbackUI'].Module3D
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.2595454000002064 seconds

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 07:17:27
-- Luau version 6, Types version 3
-- Time taken: 0.027459 seconds

local AdornScreenGuiToWorld
if game.Players.LocalPlayer == nil then
	AdornScreenGuiToWorld = false
else
	AdornScreenGuiToWorld = true
end
isClient = AdornScreenGuiToWorld -- Setting global
AdornScreenGuiToWorld = isClient
if not AdornScreenGuiToWorld then
	AdornScreenGuiToWorld = error
	AdornScreenGuiToWorld("ERROR: '"..script:GetFullName().."' can only be used from a LocalScript.")
end
AdornScreenGuiToWorld = {}
ModuleAPI = AdornScreenGuiToWorld -- Setting global
AdornScreenGuiToWorld = workspace.CurrentCamera
c = AdornScreenGuiToWorld -- Setting global
AdornScreenGuiToWorld = game.Players.LocalPlayer
player = AdornScreenGuiToWorld -- Setting global
AdornScreenGuiToWorld = game:GetService("RunService")
rs = AdornScreenGuiToWorld -- Setting global
function AdornScreenGuiToWorld(...) -- Line 191, Named "checkArgs"
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local function _(arg1) -- Line 194, Named "useVowel"
		for _, v in pairs({'a', 'e', 'i', 'o', 'u'}) do
			if string.sub(string.lower(arg1), 1, 1) == v then
				return true
			end
		end
		return false
	end
	local _ = 1
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [100] 91. Error Block 25 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [100] 91. Error Block 25 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [11] 10. Error Block 41 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [100.6]
	if nil == nil then
	end
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [100.9]
	if nil == "function" then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if not nil then
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [100.23]
			if nil then
			else
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if nil then
			else
			end
			-- KONSTANTWARNING: GOTO [100] #91
		end
	else
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [100.8]
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [100.65666]
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [100.7]
		if nil ~= nil then
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [100.21]
			if nil then
			else
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if nil then
			else
			end
		end
	end
	-- KONSTANTERROR: [11] 10. Error Block 41 end (CF ANALYSIS FAILED)
end
checkArgs = AdornScreenGuiToWorld -- Setting global
function AdornScreenGuiToWorld(arg1) -- Line 221, Named "GetScreenResolution"
	local mouse = player:GetMouse()
	if mouse and 0 < mouse.ViewSizeX and 0 < mouse.ViewSizeY then
		return Vector2.new(mouse.ViewSizeX, mouse.ViewSizeY)
	end
	local var15
	if var15 then
		var15 = nil
		for i_2, v_2 in pairs(player.PlayerGui:GetChildren()) do
			if v_2:IsA("ScreenGui") then
				var15 = v_2
			end
		end
		if not var15 then
			i_2 = player
			var15 = Instance.new("ScreenGui", i_2.PlayerGui)
			wait(0.1)
		end
		return var15.AbsoluteSize
	end
	return error("ERROR: Can't get client resolution")
end
ModuleAPI.GetScreenResolution = AdornScreenGuiToWorld
function AdornScreenGuiToWorld(arg1, arg2) -- Line 244, Named "PointToScreenSpace"
	checkArgs(arg2, function(arg1_2) -- Line 245
		return pcall(function() -- Line 246
			return p.X, p.Y, p.Z
		end) or false, "Vector3"
	end)
	local ModuleAPI_GetScreenResolution_result1 = ModuleAPI:GetScreenResolution()
	local any_pointToObjectSpace_result1 = c.CoordinateFrame:pointToObjectSpace(arg2)
	local tangent = math.tan(math.rad(c.FieldOfView) / 2)
	return Vector2.new(ModuleAPI_GetScreenResolution_result1.X * (0.5 + (0.5) * (any_pointToObjectSpace_result1.x / any_pointToObjectSpace_result1.z / -(ModuleAPI_GetScreenResolution_result1.X / ModuleAPI_GetScreenResolution_result1.Y * tangent))), ModuleAPI_GetScreenResolution_result1.Y * (0.5 + (0.5) * (any_pointToObjectSpace_result1.y / any_pointToObjectSpace_result1.z / tangent)))
end
ModuleAPI.PointToScreenSpace = AdornScreenGuiToWorld
function AdornScreenGuiToWorld(arg1, arg2, arg3, arg4) -- Line 259, Named "ScreenSpaceToWorld"
	checkArgs(arg2, "number", arg3, "number", arg4, "number")
	local ModuleAPI_GetScreenResolution_result1_4 = ModuleAPI:GetScreenResolution()
	local tangent_2 = math.tan(math.rad(c.FieldOfView) / 2)
	return Vector3.new((arg2 / ModuleAPI_GetScreenResolution_result1_4.X * 2 - 1) * -(ModuleAPI_GetScreenResolution_result1_4.X / ModuleAPI_GetScreenResolution_result1_4.Y * tangent_2) * arg4, (arg3 / ModuleAPI_GetScreenResolution_result1_4.Y * 2 - 1) * tangent_2 * arg4, arg4)
end
ModuleAPI.ScreenSpaceToWorld = AdornScreenGuiToWorld
function AdornScreenGuiToWorld(arg1, arg2, arg3) -- Line 271, Named "GetDepthForWidth"
	checkArgs(arg2, "number", arg3, "number")
	local ModuleAPI_GetScreenResolution_result1_3 = ModuleAPI:GetScreenResolution()
	return (-0.5 * ModuleAPI_GetScreenResolution_result1_3.X * arg2) / ((arg3) * (ModuleAPI_GetScreenResolution_result1_3.X / ModuleAPI_GetScreenResolution_result1_3.Y * math.tan(math.rad(c.FieldOfView) / 2)))
end
ModuleAPI.GetDepthForWidth = AdornScreenGuiToWorld
function AdornScreenGuiToWorld(arg1, arg2, arg3) -- Line 280, Named "Attach3D"
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	checkArgs(arg2, function(arg1_3) -- Line 282
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		return arg2:IsA("GuiObject") or false, "GuiObject"
	end, arg3, function(arg1_4) -- Line 285
		--[[ Upvalues[1]:
			[1]: arg3 (readonly)
		]]
		local children_2 = arg3:IsA("Model")
		if not children_2 then
			children_2 = arg3:IsA("BasePart")
			if not children_2 then
				children_2 = false
			end
		end
		return children_2, "Model or BasePart"
	end)
	local module = {}
	local Model_upvr = Instance.new("Model")
	Model_upvr.Name = ""
	Model_upvr.Parent = c
	objs = {} -- Setting global
	if arg3:IsA("BasePart") then
		local clone = arg3:clone()
		clone.Parent = Model_upvr
		table.insert(objs, clone)
	else
		local function recurse_upvr(arg1_5) -- Line 299, Named "recurse"
			--[[ Upvalues[2]:
				[1]: Model_upvr (readonly)
				[2]: recurse_upvr (readonly)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
			local pairs_result1_3, pairs_result2, pairs_result3 = pairs(arg1_5:GetChildren())
			local var49
			-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [104] 76. Error Block 24 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [104] 76. Error Block 24 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [7] 6. Error Block 39 start (CF ANALYSIS FAILED)
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [104.7]
			if nil then
			else
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
				if nil and nil then
				end
			end
			if var49 then
				-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [104.8]
				if nil then
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					if nil ~= 0 then
						-- KONSTANTWARNING: GOTO [65] #47
					end
				end
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				if nil == "Head" then
				end
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [104.9]
				if nil == nil then
					-- KONSTANTWARNING: GOTO [104] #76
				end
			else
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x3)
				if not nil and not nil and not nil then
				else
				end
			end
			-- KONSTANTERROR: [7] 6. Error Block 39 end (CF ANALYSIS FAILED)
		end
		recurse_upvr(arg3)
	end
	recurse_upvr = Instance.new("Part")
	local var50 = recurse_upvr
	var50.Anchored = true
	var50.Transparency = 1
	var50.CanCollide = false
	var50.Name = "MODEL_CENTER"
	var50.FormFactor = "Custom"
	var50.Size = Model_upvr:GetExtentsSize()
	var50.CFrame = CFrame.new(Model_upvr:GetModelCFrame().p)
	var50.Parent = Model_upvr
	Model_upvr.PrimaryPart = var50
	for _, v_3 in pairs(objs) do
		v_3.Anchored = false
		v_3.CanCollide = false
		v_3.Archivable = true
		local Weld = Instance.new("Weld", var50)
		Weld.Part0 = var50
		Weld.Part1 = v_3
		local cframe = CFrame.new(var50.Position)
		Weld.C0 = var50.CFrame:inverse() * cframe
		Weld.C1 = v_3.CFrame:inverse() * cframe
		v_3.Parent = Model_upvr
		local var56_upvr
	end
	CF = CFrame.new(0, 0, 0, -1, 0, -8.74227766e-08, 0, 1, 0, 8.74227766e-08, 0, -1) -- Setting global
	Active = false -- Setting global
	DistOffset = 0 -- Setting global
	function module.SetActive(arg1_6, arg2_2) -- Line 354
		checkArgs(arg2_2, "boolean")
		Active = arg2_2 -- Setting global
	end
	function module.SetCFrame(arg1_7, arg2_3) -- Line 358
		checkArgs(arg2_3, function() -- Line 359
			--[[ Upvalues[1]:
				[1]: arg2_3 (readonly)
			]]
			return pcall(function() -- Line 360
				--[[ Upvalues[1]:
					[1]: arg2_3 (copied, readonly)
				]]
				return arg2_3:components()
			end) or false, "CFrame"
		end)
		CF = arg2_3 -- Setting global
	end
	local any_connect_result1_upvr = rs.RenderStepped:connect(function() -- Line 365, Named "updateModel"
		--[[ Upvalues[2]:
			[1]: var56_upvr (readonly)
			[2]: arg2 (readonly)
		]]
		var56_upvr.Anchored = false
		if Active then
			local ModuleAPI_GetDepthForWidth_result1 = ModuleAPI:GetDepthForWidth(var56_upvr.Size.magnitude, arg2.AbsoluteSize.Y)
			local ModuleAPI_ScreenSpaceToWorld_result1 = ModuleAPI:ScreenSpaceToWorld(arg2.AbsolutePosition.X + arg2.AbsoluteSize.X / 2, arg2.AbsolutePosition.Y + arg2.AbsoluteSize.Y / 2, ModuleAPI_GetDepthForWidth_result1)
			var56_upvr.CFrame = c.CoordinateFrame * CFrame.new(ModuleAPI_ScreenSpaceToWorld_result1.X, ModuleAPI_ScreenSpaceToWorld_result1.Y, ModuleAPI_GetDepthForWidth_result1) * CF
		else
			var56_upvr.CFrame = CFrame.new()
		end
		var56_upvr.Anchored = true
	end)
	function module.End(arg1_8) -- Line 380
		--[[ Upvalues[2]:
			[1]: any_connect_result1_upvr (readonly)
			[2]: Model_upvr (readonly)
		]]
		any_connect_result1_upvr:disconnect()
		pcall(function() -- Line 382
			--[[ Upvalues[1]:
				[1]: Model_upvr (copied, readonly)
			]]
			Model_upvr:Destroy()
		end)
	end
	module.Object3D = Model_upvr
	return module
end
ModuleAPI.Attach3D = AdornScreenGuiToWorld
function AdornScreenGuiToWorld(arg1, arg2, arg3) -- Line 391
	checkArgs(arg2, function(arg1_9) -- Line 392
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local children = arg2:IsA("ScreenGui")
		if not children then
			children = arg2:IsA("BillboardGui")
			if not children then
				children = false
			end
		end
		return children, "ScreenGui or BillboardGui"
	end)
	local var69_upvw
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var69_upvw = screenStudWidth
		return var69_upvw
	end
	if type(screenStudWidth) ~= "number" or not INLINED() then
		var69_upvw = 1
	end
	local BillboardGui_upvr = Instance.new("BillboardGui", arg2.Parent)
	BillboardGui_upvr.Name = arg2.Name
	local Part_upvr = Instance.new("Part", BillboardGui_upvr)
	Part_upvr.Name = arg2.Name.."_Adornee"
	Part_upvr.FormFactor = "Custom"
	Part_upvr.Anchored = true
	Part_upvr.CanCollide = false
	Part_upvr.Size = Vector3.new()
	Part_upvr.Transparency = 1
	Part_upvr.Locked = true
	local module_2_upvr = {
		SetScreenStudWidth = function(arg1_10, arg2_4) -- Line 408, Named "SetScreenStudWidth"
			--[[ Upvalues[1]:
				[1]: var69_upvw (read and write)
			]]
			checkArgs(arg2_4, "number")
			var69_upvw = arg2_4
		end;
	}
	local var73_upvw
	function module_2_upvr.Reset(arg1_11) -- Line 412
		--[[ Upvalues[4]:
			[1]: arg2 (readonly)
			[2]: BillboardGui_upvr (readonly)
			[3]: var73_upvw (read and write)
			[4]: Part_upvr (readonly)
		]]
		arg2.Parent = BillboardGui_upvr.Parent
		for _, v_4 in pairs(BillboardGui_upvr:GetChildren()) do
			v_4.Parent = arg2
		end
		var73_upvw:disconnect()
		Part_upvr:Destroy()
		BillboardGui_upvr:Destroy()
	end
	var73_upvw = rs.RenderStepped:connect(function() -- Line 421, Named "updateAdorn"
		--[[ Upvalues[4]:
			[1]: Part_upvr (readonly)
			[2]: BillboardGui_upvr (readonly)
			[3]: arg3 (readonly)
			[4]: module_2_upvr (readonly)
		]]
		local pcall_result1, pcall_result2 = pcall(function() -- Line 422
			--[[ Upvalues[3]:
				[1]: Part_upvr (copied, readonly)
				[2]: BillboardGui_upvr (copied, readonly)
				[3]: arg3 (copied, readonly)
			]]
			local ModuleAPI_GetScreenResolution_result1_2 = ModuleAPI:GetScreenResolution()
			Part_upvr.CFrame = c.CoordinateFrame
			BillboardGui_upvr.Size = UDim2.new(0, ModuleAPI_GetScreenResolution_result1_2.X, 0, ModuleAPI_GetScreenResolution_result1_2.Y)
			BillboardGui_upvr.StudsOffset = Vector3.new(0, 0, -arg3)
			return true
		end)
		if not pcall_result1 or not pcall_result2 then
			warn(script:GetFullName()..": The adornee was destroyed! The gui has been reset.")
			module_2_upvr:Reset()
		end
	end)
	BillboardGui_upvr.Adornee = Part_upvr
	for _, v_5 in pairs(arg2:GetChildren()) do
		v_5.Parent = BillboardGui_upvr
		local _
	end
	arg2.Parent = nil
	return module_2_upvr
end
ModuleAPI.AdornScreenGuiToWorld = AdornScreenGuiToWorld
AdornScreenGuiToWorld = ModuleAPI
return AdornScreenGuiToWorld