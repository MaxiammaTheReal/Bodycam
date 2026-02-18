-- Name: BackpackScript
-- Path: game:GetService("StarterGui")['Invisible BackbackUI'].BackpackScript
-- Class: LocalScript
-- Exploit: Xeno 
-- Time to decompile: 0.26347979999991367 seconds

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 07:17:26
-- Luau version 6, Types version 3
-- Time taken: 0.022371 seconds

game.StarterGui:SetCoreGuiEnabled("Backpack", false)
task.wait(1)
game.StarterGui:SetCoreGuiEnabled("Backpack", false)
function WaitForProperty(arg1, arg2) -- Line 13
	while not arg1[arg2] do
		arg1.Changed:wait()
	end
end
local Backpack_upvr = script.Parent:WaitForChild("Backpack")
Backpack_upvr:WaitForChild("TempSlot")
Backpack_upvr.TempSlot:WaitForChild("SlotNumber")
WaitForProperty(game.Players, "LocalPlayer")
local LocalPlayer_upvw = game.Players.LocalPlayer
repeat
	wait()
until LocalPlayer_upvw.Character
local var5_upvw = false
local tbl_2_upvr = {}
local tbl_3_upvr = {"empty", "empty", "empty", "empty", "empty", "empty", "empty", "empty", "empty", "empty"}
local function _(arg1, arg2, arg3) -- Line 46, Named "kill"
	if arg2 then
		arg2:disconnect()
	end
	if arg1 == true and arg3 then
		reorganizeLoadout(arg3, false)
	end
end
if script:findFirstChild("KeyNumberEvent") then
	script.KeyNumberEvent:Destroy()
end
keyEvent = Instance.new("BindableEvent", script) -- Setting global
keyEvent.Name = "KeyNumberEvent"
function registerNumberKeys() -- Line 60
	game.Players.LocalPlayer:GetMouse().KeyDown:connect(function(arg1) -- Line 62
		if tonumber(arg1) then
			keyEvent:Fire(arg1)
		end
	end)
end
function characterInWorkspace() -- Line 69
	if game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character ~= nil and game.Players.LocalPlayer.Character.Parent ~= nil then
		return true
	end
	return false
end
function centerGear() -- Line 82
	--[[ Upvalues[1]:
		[1]: Backpack_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	loadoutChildren = Backpack_upvr:GetChildren() -- Setting global
	local tbl = {}
	local var18
	for i = 1, #loadoutChildren do
		if loadoutChildren[i]:IsA("Frame") then
			if 0 < #loadoutChildren[i]:GetChildren() then
				if loadoutChildren[i].Name == "Slot0" then
					var18 = loadoutChildren[i]
				else
					table.insert(tbl, loadoutChildren[i])
				end
			end
			loadoutChildren[i].BackgroundTransparency = 1
		end
	end
	if var18 then
		i = var18
		table.insert(tbl, i)
	end
	for i_2 = 1, #tbl do
		tbl[i_2]:TweenPosition(UDim2.new((1 - #tbl * 0.1) / 2 + (i_2 - 1) * 0.1, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.25, true)
		local _
	end
end
function removeGear(arg1) -- Line 106
	--[[ Upvalues[1]:
		[1]: tbl_3_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local _ = 1
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [16] 14. Error Block 5 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [16] 14. Error Block 5 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 7. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [16.4194574]
	-- KONSTANTERROR: [6] 7. Error Block 2 end (CF ANALYSIS FAILED)
end
function insertGear(arg1, arg2) -- Line 129
	--[[ Upvalues[1]:
		[1]: tbl_3_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [25] 22. Error Block 33 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [25] 22. Error Block 33 end (CF ANALYSIS FAILED)
end
function reorganizeLoadout(arg1, arg2, arg3, arg4) -- Line 182
	if arg2 then
		insertGear(arg1, arg4)
	else
		removeGear(arg1)
	end
	if arg1 ~= "empty" then
		arg1.ZIndex = 1
	end
	centerGear()
end
function removeAllEquippedGear(arg1) -- Line 194
	--[[ Upvalues[1]:
		[1]: LocalPlayer_upvw (read and write)
	]]
	local children_3 = LocalPlayer_upvw.Character:GetChildren()
	for i_3 = 1, #children_3 do
		if children_3[i_3]:IsA("Tool") and children_3[i_3] ~= arg1 then
			children_3[i_3].Parent = LocalPlayer_upvw.Backpack
		end
	end
end
function toolSwitcher(arg1) -- Line 203
	--[[ Upvalues[2]:
		[1]: tbl_3_upvr (readonly)
		[2]: LocalPlayer_upvw (read and write)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 22 start (CF ANALYSIS FAILED)
	local var25
	if not tbl_3_upvr[arg1] then return end
	var25 = tbl_3_upvr[arg1].GearReference
	local Value = var25.Value
	if Value == nil then return end
	var25 = removeAllEquippedGear
	var25(Value)
	var25 = arg1
	if arg1 == 0 then
		var25 = 10
	end
	for i_4 = 1, #tbl_3_upvr do
		if tbl_3_upvr[i_4] and tbl_3_upvr[i_4] ~= "empty" and i_4 ~= var25 then
			normalizeButton(tbl_3_upvr[i_4])
			tbl_3_upvr[i_4].Selected = false
		end
	end
	-- KONSTANTERROR: [0] 1. Error Block 22 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [62] 48. Error Block 15 start (CF ANALYSIS FAILED)
	tbl_3_upvr[arg1].Selected = false
	normalizeButton(tbl_3_upvr[arg1])
	do
		return
	end
	-- KONSTANTERROR: [62] 48. Error Block 15 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [73] 57. Error Block 16 start (CF ANALYSIS FAILED)
	Value.Parent = LocalPlayer_upvw.Character
	tbl_3_upvr[arg1].Selected = true
	enlargeButton(tbl_3_upvr[arg1])
	-- KONSTANTERROR: [73] 57. Error Block 16 end (CF ANALYSIS FAILED)
end
function activateGear(arg1) -- Line 230
	--[[ Upvalues[1]:
		[1]: tbl_3_upvr (readonly)
	]]
	local var27
	if arg1 == '0' then
		var27 = 10
	else
		var27 = tonumber(arg1)
	end
	if var27 == nil then
	elseif tbl_3_upvr[var27] ~= "empty" then
		toolSwitcher(var27)
	end
end
local udim2_upvr_2 = UDim2.new(1.18, 0, 1.18, 0)
function enlargeButton(arg1) -- Line 243
	--[[ Upvalues[2]:
		[1]: tbl_3_upvr (readonly)
		[2]: udim2_upvr_2 (readonly)
	]]
	if 1 < arg1.Size.Y.Scale then
	else
		if not arg1.Parent then return end
		if not arg1.Selected then return end
		for i_14 = 1, #tbl_3_upvr do
			if tbl_3_upvr[i_14] == "empty" then break end
			if tbl_3_upvr[i_14] ~= arg1 then
				normalizeButton(tbl_3_upvr[i_14])
			end
		end
		if arg1:FindFirstChild("Highlight") then
			arg1.Highlight.Visible = true
		end
		if arg1:IsA("ImageButton") or arg1:IsA("TextButton") then
			arg1.ZIndex = 5
			arg1:TweenSizeAndPosition(udim2_upvr_2, UDim2.new(arg1.Position.X.Scale + -(udim2_upvr_2.X.Scale - arg1.Size.X.Scale) / 2, arg1.Position.X.Offset, arg1.Position.Y.Scale + -(udim2_upvr_2.Y.Scale - arg1.Size.Y.Scale) / 2, arg1.Position.Y.Offset), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.1, true)
		end
	end
end
function normalizeAllButtons() -- Line 268
	--[[ Upvalues[1]:
		[1]: tbl_3_upvr (readonly)
	]]
	for i_5 = 1, #tbl_3_upvr do
		if tbl_3_upvr[i_5] == "empty" then break end
		if tbl_3_upvr[i_5] ~= button then
			normalizeButton(tbl_3_upvr[i_5], 0.1)
		end
	end
end
local udim2_upvr = UDim2.new(1, 0, 1, 0)
function normalizeButton(arg1, arg2) -- Line 278
	--[[ Upvalues[1]:
		[1]: udim2_upvr (readonly)
	]]
	if not arg1 then
	else
		if arg1.Size.Y.Scale <= 1 then return end
		if arg1.Selected then return end
		if not arg1.Parent then return end
		local var35 = arg2
		if var35 == nil or type(var35) ~= "number" then
		end
		if arg1:FindFirstChild("Highlight") then
			arg1.Highlight.Visible = false
		end
		if arg1:IsA("ImageButton") or arg1:IsA("TextButton") then
			arg1.ZIndex = 1
			arg1:TweenSizeAndPosition(udim2_upvr, UDim2.new(arg1.Position.X.Scale + -(udim2_upvr.X.Scale - arg1.Size.X.Scale) / 2, arg1.Position.X.Offset, arg1.Position.Y.Scale + -(udim2_upvr.Y.Scale - arg1.Size.Y.Scale) / 2, arg1.Position.Y.Offset), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.1, true)
		end
	end
end
local function _() -- Line 297
	--[[ Upvalues[1]:
		[1]: var5_upvw (read and write)
	]]
	while var5_upvw do
		wait()
	end
end
function unequipAllItems(arg1) -- Line 303
	--[[ Upvalues[1]:
		[1]: tbl_3_upvr (readonly)
	]]
	for i_6 = 1, #tbl_3_upvr do
		if tbl_3_upvr[i_6] == "empty" then break end
		if tbl_3_upvr[i_6].GearReference.Value and tbl_3_upvr[i_6].GearReference.Value ~= arg1 then
			tbl_3_upvr[i_6].GearReference.Value.Parent = game.Players.LocalPlayer.Backpack
			tbl_3_upvr[i_6].Selected = false
		end
	end
end
function showToolTip(arg1, arg2) -- Line 313
	if arg1 and arg1:FindFirstChild("ToolTipLabel") and arg1.ToolTipLabel:IsA("TextLabel") then
		arg1.ToolTipLabel.Text = tostring(arg2)
		local var38 = arg1.ToolTipLabel.TextBounds.X + 6
		arg1.ToolTipLabel.Size = UDim2.new(0, var38, 0, 20)
		arg1.ToolTipLabel.Position = UDim2.new(0.5, -var38 / 2, 0, -30)
		arg1.ToolTipLabel.Visible = true
	end
end
function hideToolTip(arg1, arg2) -- Line 323
	if arg1 and arg1:FindFirstChild("ToolTipLabel") and arg1.ToolTipLabel:IsA("TextLabel") then
		arg1.ToolTipLabel.Visible = false
	end
end
function delayCenter() -- Line 329
	delay(0.1, function() -- Line 331
		centerGear()
	end)
end
local function var40_upvr(arg1, arg2, arg3, arg4) -- Line 336
	--[[ Upvalues[4]:
		[1]: var5_upvw (read and write)
		[2]: tbl_3_upvr (readonly)
		[3]: Backpack_upvr (readonly)
		[4]: LocalPlayer_upvw (read and write)
	]]
	-- KONSTANTERROR: [2] 3. Error Block 3 start (CF ANALYSIS FAILED)
	wait()
	-- KONSTANTERROR: [2] 3. Error Block 3 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 46 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 46 end (CF ANALYSIS FAILED)
end
function addToInventory(arg1) -- Line 456
	--[[ Upvalues[1]:
		[1]: tbl_2_upvr (readonly)
	]]
	local var43
	if not var43 then
	else
		var43 = nil
		for i_15 = 1, #tbl_2_upvr do
			if tbl_2_upvr[i_15] and tbl_2_upvr[i_15] == arg1 then return end
			if not tbl_2_upvr[i_15] then
				var43 = i_15
			end
		end
		if var43 then
			tbl_2_upvr[var43] = arg1
			return
		end
		if #tbl_2_upvr < 1 then
			tbl_2_upvr[1] = arg1
			return
		end
		tbl_2_upvr[#tbl_2_upvr + 1] = arg1
	end
end
function removeFromInventory(arg1) -- Line 473
	--[[ Upvalues[1]:
		[1]: tbl_2_upvr (readonly)
	]]
	for i_7 = 1, #tbl_2_upvr do
		if tbl_2_upvr[i_7] == arg1 then
			table.remove(tbl_2_upvr, i_7)
			tbl_2_upvr[i_7] = nil
		end
	end
end
function playerCharacterChildAdded(arg1) -- Line 482
	--[[ Upvalues[1]:
		[1]: var40_upvr (readonly)
	]]
	var40_upvr(arg1, true)
	addToInventory(arg1)
end
function activateLoadout() -- Line 487
	--[[ Upvalues[1]:
		[1]: Backpack_upvr (readonly)
	]]
	Backpack_upvr.Visible = true
end
function deactivateLoadout() -- Line 491
	--[[ Upvalues[1]:
		[1]: Backpack_upvr (readonly)
	]]
	Backpack_upvr.Visible = false
end
registerNumberKeys()
wait()
LocalPlayer_upvw:WaitForChild("Backpack")
WaitForProperty(LocalPlayer_upvw, "Character")
delay(1, function() -- Line 502
	--[[ Upvalues[2]:
		[1]: LocalPlayer_upvw (read and write)
		[2]: var40_upvr (readonly)
	]]
	local children_4 = LocalPlayer_upvw.Backpack:GetChildren()
	for i_8 = 1, math.min(10, #children_4) do
		var40_upvr(children_4[i_8], false)
	end
end)
delay(2, function() -- Line 510
	--[[ Upvalues[1]:
		[1]: Backpack_upvr (readonly)
	]]
	if script.Parent.AbsoluteSize.Y <= 320 then
		local children = Backpack_upvr:GetChildren()
		for i_9 = 1, #children do
			local tonumber_result1 = tonumber(string.sub(children[i_9].Name, 5, string.len(children[i_9].Name)))
			if type(tonumber_result1) == "number" then
				children[i_9].Position = UDim2.new(0, (tonumber_result1 - 1) * 60, 0, 0)
			end
		end
	end
end)
WaitForProperty(LocalPlayer_upvw, "Character")
for _, v in ipairs(LocalPlayer_upvw.Character:GetChildren()) do
	playerCharacterChildAdded(v)
end
humanoidDiedCon = LocalPlayer_upvw.Character:WaitForChild("Humanoid").Died:connect(function() -- Line 532
	if humanoidDiedCon then
		humanoidDiedCon:disconnect()
		humanoidDiedCon = nil -- Setting global
	end
	deactivateLoadout()
end) -- Setting global
LocalPlayer_upvw.CharacterRemoving:connect(function() -- Line 540
	--[[ Upvalues[1]:
		[1]: tbl_3_upvr (readonly)
	]]
	for i_11 = 1, #tbl_3_upvr do
		if tbl_3_upvr[i_11] ~= "empty" then
			tbl_3_upvr[i_11].Parent = nil
			tbl_3_upvr[i_11] = "empty"
		end
	end
end)
local any_connect_result1_upvw = LocalPlayer_upvw.Character.ChildAdded:connect(function(arg1) -- Line 528
	playerCharacterChildAdded(arg1)
end)
LocalPlayer_upvw.CharacterAdded:connect(function() -- Line 549
	--[[ Upvalues[4]:
		[1]: LocalPlayer_upvw (read and write)
		[2]: var40_upvr (readonly)
		[3]: any_connect_result1_upvw (read and write)
		[4]: Backpack_upvr (readonly)
	]]
	LocalPlayer_upvw = game.Players.LocalPlayer
	delay(1, function() -- Line 551
		--[[ Upvalues[2]:
			[1]: LocalPlayer_upvw (copied, read and write)
			[2]: var40_upvr (copied, readonly)
		]]
		local children_2 = LocalPlayer_upvw:WaitForChild("Backpack"):GetChildren()
		for i_12 = 1, math.min(10, #children_2) do
			var40_upvr(children_2[i_12], false)
		end
	end)
	activateLoadout()
	if any_connect_result1_upvw then
		any_connect_result1_upvw:disconnect()
		any_connect_result1_upvw = nil
	end
	any_connect_result1_upvw = LocalPlayer_upvw.Character.ChildAdded:connect(function(arg1) -- Line 563
		--[[ Upvalues[1]:
			[1]: var40_upvr (copied, readonly)
		]]
		var40_upvr(arg1, true)
	end)
	humanoidDiedCon = LocalPlayer_upvw.Character:WaitForChild("Humanoid").Died:connect(function() -- Line 566
		deactivateLoadout()
		if humanoidDiedCon then
			humanoidDiedCon:disconnect()
			humanoidDiedCon = nil -- Setting global
		end
	end) -- Setting global
	delay(2, function() -- Line 573
		--[[ Upvalues[1]:
			[1]: Backpack_upvr (copied, readonly)
		]]
		if script.Parent.AbsoluteSize.Y <= 320 then
			local children_5 = Backpack_upvr:GetChildren()
			for i_13 = 1, #children_5 do
				local tonumber_result1_2 = tonumber(string.sub(children_5[i_13].Name, 5, string.len(children_5[i_13].Name)))
				if type(tonumber_result1_2) == "number" then
					children_5[i_13].Position = UDim2.new(0, (tonumber_result1_2 - 1) * 60, 0, 0)
				end
			end
		end
	end)
end)
keyEvent.Event:connect(function(arg1) -- Line 586
	if characterInWorkspace() then
		activateGear(arg1)
	end
end)