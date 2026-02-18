-- Name: SpectatorScript
-- Path: game:GetService("Players").LocalPlayer.PlayerGui.SpectatorSystem.SpectatorScript
-- Class: LocalScript
-- Exploit: Xeno 
-- Time to decompile: 0.548930199998722 seconds

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 07:17:34
-- Luau version 6, Types version 3
-- Time taken: 0.007156 seconds

local UserInputService = game:GetService("UserInputService")
local module = require(game:GetService("ReplicatedStorage"):WaitForChild("PlayerClient"))
local Parent_upvr = script.Parent
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local var7_upvw
local tbl_upvr = {}
for i, v in pairs(module.GetPlayers()) do
	if v ~= LocalPlayer_upvr then
		table.insert(tbl_upvr, v)
	end
end
function OnPlrRemoved(arg1) -- Line 29
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: var7_upvw (read and write)
	]]
	if table.find(tbl_upvr, arg1) then
		if var7_upvw == arg1 then
			var7_upvw = nil
		end
		table.remove(tbl_upvr, table.find(tbl_upvr, arg1))
	end
end
function OnPlrAdded(arg1) -- Line 41
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: LocalPlayer_upvr (readonly)
	]]
	if not table.find(tbl_upvr, arg1) and arg1 ~= LocalPlayer_upvr then
		table.insert(tbl_upvr, arg1)
	end
end
local PlayerName_upvr = Parent_upvr:WaitForChild("PlayerName")
local CurrentCamera_upvr = workspace.CurrentCamera
function spectatePlayer(arg1) -- Line 47
	--[[ Upvalues[5]:
		[1]: var7_upvw (read and write)
		[2]: PlayerName_upvr (readonly)
		[3]: CurrentCamera_upvr (readonly)
		[4]: Parent_upvr (readonly)
		[5]: tbl_upvr (readonly)
	]]
	if not arg1 then
	else
		local Character_upvw = arg1.Character
		if not Character_upvw then return end
		if not Character_upvw:FindFirstChild("Humanoid") then return end
		var7_upvw = arg1
		PlayerName_upvr.Text = arg1.Name
		CurrentCamera_upvr.CameraSubject = Character_upvw.Humanoid
		Character_upvw.Humanoid.Died:Connect(function() -- Line 61
			--[[ Upvalues[6]:
				[1]: var7_upvw (copied, read and write)
				[2]: arg1 (readonly)
				[3]: Parent_upvr (copied, readonly)
				[4]: tbl_upvr (copied, readonly)
				[5]: Character_upvw (read and write)
				[6]: CurrentCamera_upvr (copied, readonly)
			]]
			if var7_upvw ~= arg1 then
				if Parent_upvr.Enabled and 0 < #tbl_upvr then
					spectatePlayer(tbl_upvr[math.random(1, #tbl_upvr)])
				end
			else
				Character_upvw = arg1.CharacterAdded:Wait()
				CurrentCamera_upvr.CameraSubject = Character_upvw:WaitForChild("Humanoid")
			end
		end)
	end
end
if 0 < #tbl_upvr and Parent_upvr.Enabled then
	i = #tbl_upvr
	spectatePlayer(tbl_upvr[math.random(1, i)])
end
function OnLeftArrowPress() -- Line 86
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: var7_upvw (read and write)
	]]
	if #tbl_upvr == 0 then
	else
		if not var7_upvw then
			spectatePlayer(tbl_upvr[math.random(1, #tbl_upvr)])
			return
		end
		local var16 = table.find(tbl_upvr, var7_upvw) - 1
		if not tbl_upvr[var16] then
			var16 = #tbl_upvr
		end
		local var17 = tbl_upvr[var16]
		if not var17.Character then return end
		if not var17.Character:FindFirstChild("Humanoid") then return end
		if var17.Character.Humanoid.Health == 0 then return end
		spectatePlayer(tbl_upvr[var16])
	end
end
function OnRightArrowPress() -- Line 115
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: var7_upvw (read and write)
	]]
	if #tbl_upvr == 0 then
	else
		if not var7_upvw then
			spectatePlayer(tbl_upvr[math.random(1, #tbl_upvr)])
			return
		end
		local var18 = table.find(tbl_upvr, var7_upvw) + 1
		if not tbl_upvr[var18] then
			var18 = 1
		end
		local var19 = tbl_upvr[var18]
		if not var19.Character then return end
		if not var19.Character:FindFirstChild("Humanoid") then return end
		if var19.Character.Humanoid.Health == 0 then return end
		spectatePlayer(tbl_upvr[var18])
	end
end
function UIenabled() -- Line 144
	--[[ Upvalues[2]:
		[1]: Parent_upvr (readonly)
		[2]: tbl_upvr (readonly)
	]]
	if not Parent_upvr.Enabled then
	elseif 0 < #tbl_upvr then
		spectatePlayer(tbl_upvr[math.random(1, #tbl_upvr)])
	end
end
function onInputBegan(arg1) -- Line 154
	--[[ Upvalues[1]:
		[1]: Parent_upvr (readonly)
	]]
	if not Parent_upvr.Enabled then
	else
		if arg1.KeyCode == Enum.KeyCode.Q or arg1.KeyCode == Enum.KeyCode.DPadLeft then
			OnLeftArrowPress()
			return
		end
		if arg1.KeyCode == Enum.KeyCode.E or arg1.KeyCode == Enum.KeyCode.DPadRight then
			OnRightArrowPress()
		end
	end
end
if UserInputService.TouchEnabled then
	Parent_upvr:WaitForChild("LeftArrow").Text = '<'
	Parent_upvr:WaitForChild("RightArrow").Text = '>'
elseif UserInputService.GamepadEnabled then
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	Parent_upvr:WaitForChild("LeftArrow").Text = "DPad Left"
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	Parent_upvr:WaitForChild("RightArrow").Text = "DPad Right"
end
UserInputService.InputBegan:Connect(onInputBegan)
-- KONSTANTERROR: Expression was reused, decompilation is incorrect
Parent_upvr:WaitForChild("LeftArrow").MouseButton1Down:Connect(OnLeftArrowPress)
-- KONSTANTERROR: Expression was reused, decompilation is incorrect
Parent_upvr:WaitForChild("RightArrow").MouseButton1Down:Connect(OnRightArrowPress)
Parent_upvr:GetPropertyChangedSignal("Enabled"):Connect(UIenabled)
module.onPlayerAdded().Event:Connect(OnPlrAdded)
module.onPlayerRemoved().Event:Connect(OnPlrRemoved)