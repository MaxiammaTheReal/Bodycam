-- Name: CAS
-- Path: game:GetService("ReplicatedStorage").CAS
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.5655965999994805 seconds

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 07:18:22
-- Luau version 6, Types version 3
-- Time taken: 0.005487 seconds

local module = {}
local Players_upvr = game:GetService("Players")
local UserInputService_upvr = game:GetService("UserInputService")
local CASUI_upvr = script:WaitForChild("CASUI")
local DRONECASUI_upvr = script:WaitForChild("DRONECASUI")
local Button_upvr = script:WaitForChild("Button")
local Folder_upvr = Instance.new("Folder")
Folder_upvr.Name = "BindableEvents"
Folder_upvr.Parent = game:GetService("ReplicatedStorage")
local function _() -- Line 17, Named "createUIDefault"
	--[[ Upvalues[2]:
		[1]: Players_upvr (readonly)
		[2]: CASUI_upvr (readonly)
	]]
	local clone_4 = CASUI_upvr:Clone()
	clone_4.Parent = Players_upvr.LocalPlayer.PlayerGui
	return clone_4
end
local function _() -- Line 26, Named "createUIDrone"
	--[[ Upvalues[2]:
		[1]: Players_upvr (readonly)
		[2]: DRONECASUI_upvr (readonly)
	]]
	local clone_5 = DRONECASUI_upvr:Clone()
	clone_5.Parent = Players_upvr.LocalPlayer.PlayerGui
	return clone_5
end
function module.CreateButton(arg1, arg2, arg3, arg4, arg5) -- Line 35
	--[[ Upvalues[5]:
		[1]: UserInputService_upvr (readonly)
		[2]: Players_upvr (readonly)
		[3]: CASUI_upvr (readonly)
		[4]: Button_upvr (readonly)
		[5]: Folder_upvr (readonly)
	]]
	if not UserInputService_upvr.TouchEnabled then return end
	local LocalPlayer = Players_upvr.LocalPlayer
	if not arg2 or not arg3 or not arg1 then
		warn("CAS: Incorrect Arguments.")
		return
	end
	local var12
	if not LocalPlayer.PlayerGui:FindFirstChild("CASUI") then
		local clone_2 = CASUI_upvr:Clone()
		clone_2.Parent = Players_upvr.LocalPlayer.PlayerGui
		var12 = clone_2.CasFrame
	else
		var12 = LocalPlayer.PlayerGui:FindFirstChild("CASUI").CasFrame
	end
	local clone_6_upvr = Button_upvr:Clone()
	clone_6_upvr.Position = arg3
	clone_6_upvr.ActionTitle.Text = arg2
	if arg4 then
		clone_6_upvr.Name = arg1
		clone_6_upvr.ActionIcon.Image = arg4
		clone_6_upvr.ActionIcon.ZIndex = 0
		clone_6_upvr.ActionIcon.ImageTransparency = 0
		clone_6_upvr.ImageColor3 = arg5
	end
	if arg2 == "Fire" then
		clone_6_upvr.Size = UDim2.new(0.3, 0, 0.3, 0)
		clone_6_upvr.Active = false
	end
	local BindableEvent_upvr = Instance.new("BindableEvent")
	BindableEvent_upvr.Name = arg1
	BindableEvent_upvr.Parent = Folder_upvr
	clone_6_upvr.MouseButton1Down:Connect(function() -- Line 73
		--[[ Upvalues[2]:
			[1]: BindableEvent_upvr (readonly)
			[2]: arg1 (readonly)
		]]
		BindableEvent_upvr:Fire(arg1, Enum.UserInputState.Begin, nil)
	end)
	clone_6_upvr.MouseButton1Up:Connect(function() -- Line 77
		--[[ Upvalues[3]:
			[1]: clone_6_upvr (readonly)
			[2]: BindableEvent_upvr (readonly)
			[3]: arg1 (readonly)
		]]
		if clone_6_upvr.Name ~= "ToggleHeadlight" then
			if clone_6_upvr.Name == "ToggleFlashlight" then return end
			BindableEvent_upvr:Fire(arg1, Enum.UserInputState.End, nil)
		end
	end)
	clone_6_upvr.Parent = var12
	return BindableEvent_upvr
end
function module.CreateButtonDrone(arg1, arg2, arg3, arg4, arg5) -- Line 92
	--[[ Upvalues[5]:
		[1]: UserInputService_upvr (readonly)
		[2]: Players_upvr (readonly)
		[3]: DRONECASUI_upvr (readonly)
		[4]: Button_upvr (readonly)
		[5]: Folder_upvr (readonly)
	]]
	if not UserInputService_upvr.TouchEnabled then return end
	local LocalPlayer_2 = Players_upvr.LocalPlayer
	if not arg2 or not arg3 or not arg1 then
		warn("CAS: Incorrect Arguments.")
		return
	end
	local var20
	if not LocalPlayer_2.PlayerGui:FindFirstChild("DRONECASUI") then
		local clone_3 = DRONECASUI_upvr:Clone()
		clone_3.Parent = Players_upvr.LocalPlayer.PlayerGui
		var20 = clone_3.CasFrame
	else
		var20 = LocalPlayer_2.PlayerGui:FindFirstChild("DRONECASUI").CasFrame
	end
	local clone = Button_upvr:Clone()
	clone.Position = arg3
	clone.ActionTitle.Text = arg2
	if arg4 then
		clone.Name = arg1
		clone.ActionIcon.Image = arg4
		clone.ActionIcon.ZIndex = 0
		clone.ActionIcon.ImageTransparency = 0
		clone.ImageColor3 = arg5
	end
	if arg2 == "Fire" then
		clone.Size = UDim2.new(0.3, 0, 0.3, 0)
	end
	local BindableEvent_upvr_2 = Instance.new("BindableEvent")
	BindableEvent_upvr_2.Name = arg1
	BindableEvent_upvr_2.Parent = Folder_upvr
	clone.MouseButton1Down:Connect(function() -- Line 129
		--[[ Upvalues[2]:
			[1]: BindableEvent_upvr_2 (readonly)
			[2]: arg1 (readonly)
		]]
		BindableEvent_upvr_2:Fire(arg1, Enum.UserInputState.Begin, nil)
	end)
	clone.MouseButton1Up:Connect(function() -- Line 133
		--[[ Upvalues[2]:
			[1]: BindableEvent_upvr_2 (readonly)
			[2]: arg1 (readonly)
		]]
		BindableEvent_upvr_2:Fire(arg1, Enum.UserInputState.End, nil)
	end)
	clone.Parent = var20
	return BindableEvent_upvr_2
end
return module