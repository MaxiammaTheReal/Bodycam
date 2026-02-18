-- Name: DroneSystemClient
-- Path: game:GetService("Players").LocalPlayer.PlayerScripts.DroneSystemClient
-- Class: LocalScript
-- Exploit: Xeno 
-- Time to decompile: 0.7251821000008931 seconds

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 07:17:01
-- Luau version 6, Types version 3
-- Time taken: 0.037595 seconds

local UserInputService_upvr_2 = game:GetService("UserInputService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local DestroyDroneTool_upvr_2 = ReplicatedStorage:FindFirstChild("Remotes"):FindFirstChild("DestroyDroneTool")
local LocalPlayer_upvr_2 = game:GetService("Players").LocalPlayer
local Character_4 = LocalPlayer_upvr_2.Character
if not Character_4 then
	Character_4 = LocalPlayer_upvr_2.CharacterAdded:Wait()
end
local Humanoid_2_upvr = Character_4:WaitForChild("Humanoid")
local mouse_2 = LocalPlayer_upvr_2:GetMouse()
local Camera_upvr_2 = workspace:WaitForChild("Camera")
local PlayerGui_upvr = LocalPlayer_upvr_2:WaitForChild("PlayerGui")
local ControlModule_upvr_2 = require(LocalPlayer_upvr_2:FindFirstChild("PlayerScripts"):WaitForChild("PlayerModule").ControlModule)
local Drone_upvr = PlayerGui_upvr:WaitForChild("Drone")
local G_upvr = Enum.KeyCode.G
local ButtonL1_upvr_2 = Enum.KeyCode.ButtonL1
local ButtonR1_upvr = Enum.KeyCode.ButtonR1
local var130_upvw
local var131_upvw = false
local var132_upvw = 70
local var133_upvw
local tbl_2_upvr = {}
local WalkSpeed_upvw_2 = Humanoid_2_upvr.WalkSpeed
Humanoid_2_upvr:GetPropertyChangedSignal("WalkSpeed"):Connect(function() -- Line 63
	--[[ Upvalues[2]:
		[1]: Humanoid_2_upvr (readonly)
		[2]: WalkSpeed_upvw_2 (read and write)
	]]
	if Humanoid_2_upvr.WalkSpeed <= 0 then
	else
		WalkSpeed_upvw_2 = Humanoid_2_upvr.WalkSpeed
	end
end)
local any_UserOwnsGamePassAsync_result1_upvr = game:GetService("MarketplaceService"):UserOwnsGamePassAsync(LocalPlayer_upvr_2.UserId, 790278467)
local TouchEnabled_upvr_2 = UserInputService_upvr_2.TouchEnabled
local module_upvr_2 = require(ReplicatedStorage:WaitForChild("CAS"))
for _, v in ipairs({{"Ascend", "L1"}, {"Descend", "R1"}, {"Spawn Drone", "R3"}, {"Return Drone", "R3"}, {"Toggle Camera", "L3"}, {"Toggle Flashlight", "CIRCLE/B"}, {"Zoom", "L2/R2"}}) do
	({})[v[1]] = v[2]
	local var151
end
if TouchEnabled_upvr_2 and any_UserOwnsGamePassAsync_result1_upvr then
	for _, v_2 in ipairs(Drone_upvr:GetChildren()) do
		if v_2:IsA("Frame") and v_2.Name == "Frame" then
			v_2:Destroy()
		end
	end
elseif UserInputService_upvr_2.GamepadEnabled and any_UserOwnsGamePassAsync_result1_upvr then
	for _, v_3 in ipairs(Drone_upvr:GetChildren()) do
		if v_3:IsA("Frame") then
			local var158
			if v_3.Name == "Frame" then
				local class_TextLabel = v_3:FindFirstChildOfClass("TextLabel")
				if not class_TextLabel then
					class_TextLabel = v_3:FindFirstChild("TextLabel")
				end
				if not class_TextLabel then return end
				var158 = v_3:FindFirstChild("Frame")
				if not var158 then
					var158 = v_3:FindFirstChildOfClass("Frame")
				end
				local var160 = var158
				if var160 then
					var160 = var158:FindFirstChild("TextLabel")
					if not var160 then
						var160 = var158:FindFirstChildOfClass("TextLabel")
					end
				end
				if var160 then
					local var161 = var151[class_TextLabel.Text]
					if var161 then
						var160.Text = var161
					end
				end
			end
		end
	end
end
local function toggleBetweenCAS_upvr(arg1, arg2, arg3) -- Line 123, Named "toggleBetweenCAS"
	--[[ Upvalues[3]:
		[1]: TouchEnabled_upvr_2 (readonly)
		[2]: any_UserOwnsGamePassAsync_result1_upvr (readonly)
		[3]: PlayerGui_upvr (readonly)
	]]
	if not TouchEnabled_upvr_2 or not any_UserOwnsGamePassAsync_result1_upvr then
	else
		local CASUI_2 = PlayerGui_upvr:FindFirstChild("CASUI", 10)
		if not CASUI_2 then return end
		local DRONECASUI_2 = PlayerGui_upvr:FindFirstChild("DRONECASUI", 10)
		if not DRONECASUI_2 then return end
		local MobileHotbarButtons_2 = PlayerGui_upvr:FindFirstChild("MobileHotbarButtons", 10)
		if MobileHotbarButtons_2 then
			MobileHotbarButtons_2.Enabled = arg3
		end
		CASUI_2.Enabled = arg1
		DRONECASUI_2.Enabled = arg2
	end
end
local function _() -- Line 146, Named "destroyDroneTool"
	--[[ Upvalues[1]:
		[1]: DestroyDroneTool_upvr_2 (readonly)
	]]
	DestroyDroneTool_upvr_2:FireServer()
end
local function _(arg1) -- Line 150, Named "toggleBodycamUI"
	--[[ Upvalues[1]:
		[1]: PlayerGui_upvr (readonly)
	]]
	local Bodycam = PlayerGui_upvr:FindFirstChild("Bodycam")
	if not Bodycam then
	else
		Bodycam.Enabled = arg1
	end
end
local RunService_upvr_2 = game:GetService("RunService")
local Main_upvr_2 = Drone_upvr:WaitForChild("Main")
local StarterPlayer_upvr = game:GetService("StarterPlayer")
local function SetCamera_upvr(arg1) -- Line 158, Named "SetCamera"
	--[[ Upvalues[14]:
		[1]: LocalPlayer_upvr_2 (readonly)
		[2]: UserInputService_upvr_2 (readonly)
		[3]: Camera_upvr_2 (readonly)
		[4]: var132_upvw (read and write)
		[5]: var130_upvw (read and write)
		[6]: RunService_upvr_2 (readonly)
		[7]: tbl_2_upvr (readonly)
		[8]: Main_upvr_2 (readonly)
		[9]: PlayerGui_upvr (readonly)
		[10]: Drone_upvr (readonly)
		[11]: var131_upvw (read and write)
		[12]: WalkSpeed_upvw_2 (read and write)
		[13]: StarterPlayer_upvr (readonly)
		[14]: DestroyDroneTool_upvr_2 (readonly)
	]]
	local Character_3 = LocalPlayer_upvr_2.Character
	if not Character_3 then
	else
		local Humanoid = Character_3:WaitForChild("Humanoid")
		if arg1 then
			Humanoid.WalkSpeed = 0
			local PrimaryPart_upvr = arg1.PrimaryPart
			UserInputService_upvr_2.MouseIconEnabled = false
			LocalPlayer_upvr_2.CameraMaxZoomDistance = 0.5
			Camera_upvr_2.CameraSubject = arg1.Camera
			UserInputService_upvr_2.MouseBehavior = Enum.MouseBehavior.LockCenter
			Camera_upvr_2.FieldOfView = var132_upvw
			local Communication_upvr = PrimaryPart_upvr:WaitForChild("Communication")
			var130_upvw = RunService_upvr_2.Heartbeat:Connect(function() -- Line 180
				--[[ Upvalues[6]:
					[1]: Camera_upvr_2 (copied, readonly)
					[2]: var132_upvw (copied, read and write)
					[3]: Communication_upvr (readonly)
					[4]: tbl_2_upvr (copied, readonly)
					[5]: Main_upvr_2 (copied, readonly)
					[6]: PrimaryPart_upvr (readonly)
				]]
				Camera_upvr_2.FieldOfView = var132_upvw
				Communication_upvr:FireServer(tbl_2_upvr, Camera_upvr_2.CFrame.LookVector * 25)
				Main_upvr_2.Height.Text = tostring(math.round(PrimaryPart_upvr.Position.Y))..'M'
				Main_upvr_2.Speed.Text = tostring(math.round(PrimaryPart_upvr.AssemblyLinearVelocity.Magnitude))..'S'
			end)
			local Bodycam_3 = PlayerGui_upvr:FindFirstChild("Bodycam")
			if not Bodycam_3 then
			else
				Bodycam_3.Enabled = false
			end
			Drone_upvr.Enabled = true
			var131_upvw = true
			return
		end
		PrimaryPart_upvr = WalkSpeed_upvw_2
		Humanoid.WalkSpeed = PrimaryPart_upvr
		PrimaryPart_upvr = var130_upvw
		if PrimaryPart_upvr then
			PrimaryPart_upvr = var130_upvw:Disconnect
			PrimaryPart_upvr()
		end
		PrimaryPart_upvr = Camera_upvr_2
		PrimaryPart_upvr.CameraSubject = Humanoid
		PrimaryPart_upvr = UserInputService_upvr_2
		Communication_upvr = Enum.MouseBehavior.Default
		PrimaryPart_upvr.MouseBehavior = Communication_upvr
		PrimaryPart_upvr = UserInputService_upvr_2
		Communication_upvr = true
		PrimaryPart_upvr.MouseIconEnabled = Communication_upvr
		PrimaryPart_upvr = LocalPlayer_upvr_2
		Communication_upvr = StarterPlayer_upvr.CameraMaxZoomDistance
		PrimaryPart_upvr.CameraMaxZoomDistance = Communication_upvr
		PrimaryPart_upvr = Camera_upvr_2
		Communication_upvr = 70
		PrimaryPart_upvr.FieldOfView = Communication_upvr
		PrimaryPart_upvr = PlayerGui_upvr:FindFirstChild("Bodycam")
		local var175 = PrimaryPart_upvr
		if not var175 then
		else
			Communication_upvr = true
			var175.Enabled = Communication_upvr
		end
		var175 = Drone_upvr
		Communication_upvr = false
		var175.Enabled = Communication_upvr
		var175 = false
		var131_upvw = var175
		var175 = task.wait
		var175()
		var175 = DestroyDroneTool_upvr_2:FireServer
		var175()
	end
end
local GetDrone_upvr = ReplicatedStorage:WaitForChild("GetDrone")
local function handleDroneSpawn_upvr(arg1, arg2) -- Line 222, Named "handleDroneSpawn"
	--[[ Upvalues[7]:
		[1]: PlayerGui_upvr (readonly)
		[2]: TouchEnabled_upvr_2 (readonly)
		[3]: LocalPlayer_upvr_2 (readonly)
		[4]: SetCamera_upvr (readonly)
		[5]: var133_upvw (read and write)
		[6]: toggleBetweenCAS_upvr (readonly)
		[7]: GetDrone_upvr (readonly)
	]]
	local Intro = PlayerGui_upvr:FindFirstChild("Intro")
	if Intro and Intro.Enabled then
	else
		if TouchEnabled_upvr_2 and arg2 == Enum.UserInputState.Begin and workspace:FindFirstChild("Drones"):FindFirstChild(LocalPlayer_upvr_2.Name) then
			SetCamera_upvr(var133_upvw)
			toggleBetweenCAS_upvr(false, true, false)
			return
		end
		local any_InvokeServer_result1 = GetDrone_upvr:InvokeServer()
		if not any_InvokeServer_result1 then return end
		var133_upvw = any_InvokeServer_result1
		SetCamera_upvr(any_InvokeServer_result1)
		toggleBetweenCAS_upvr(false, true, false)
	end
end
local function handleCameraExit_upvr() -- Line 248, Named "handleCameraExit"
	--[[ Upvalues[7]:
		[1]: var133_upvw (read and write)
		[2]: tbl_2_upvr (readonly)
		[3]: Camera_upvr_2 (readonly)
		[4]: SetCamera_upvr (readonly)
		[5]: var131_upvw (read and write)
		[6]: DestroyDroneTool_upvr_2 (readonly)
		[7]: toggleBetweenCAS_upvr (readonly)
	]]
	var133_upvw.PrimaryPart:WaitForChild("Communication"):FireServer(tbl_2_upvr, Camera_upvr_2.CFrame.LookVector)
	local var179 = not var131_upvw
	if var179 then
		var179 = var133_upvw
	end
	SetCamera_upvr(var179)
	task.wait()
	DestroyDroneTool_upvr_2:FireServer()
	toggleBetweenCAS_upvr(true, false, true)
end
local function handleDeleteDrone_upvr() -- Line 262, Named "handleDeleteDrone"
	--[[ Upvalues[8]:
		[1]: tbl_2_upvr (readonly)
		[2]: G_upvr (readonly)
		[3]: var133_upvw (read and write)
		[4]: Camera_upvr_2 (readonly)
		[5]: var130_upvw (read and write)
		[6]: SetCamera_upvr (readonly)
		[7]: DestroyDroneTool_upvr_2 (readonly)
		[8]: toggleBetweenCAS_upvr (readonly)
	]]
	tbl_2_upvr[G_upvr.Name] = true
	var133_upvw.PrimaryPart:WaitForChild("Communication"):FireServer(tbl_2_upvr, Camera_upvr_2.CFrame.LookVector)
	tbl_2_upvr[G_upvr.Name] = nil
	var133_upvw = nil
	var130_upvw:Disconnect()
	SetCamera_upvr()
	task.wait()
	DestroyDroneTool_upvr_2:FireServer()
	toggleBetweenCAS_upvr(true, false, true)
end
local function ascendDroneFunction_upvr(arg1, arg2) -- Line 287, Named "ascendDroneFunction"
	--[[ Upvalues[1]:
		[1]: tbl_2_upvr (readonly)
	]]
	if arg2 == Enum.UserInputState.Begin then
		tbl_2_upvr.E = true
	elseif arg2 == Enum.UserInputState.End then
		tbl_2_upvr.E = nil
	end
end
local function descendDroneFunction_upvr(arg1, arg2) -- Line 295, Named "descendDroneFunction"
	--[[ Upvalues[1]:
		[1]: tbl_2_upvr (readonly)
	]]
	if arg2 == Enum.UserInputState.Begin then
		tbl_2_upvr.Q = true
	elseif arg2 == Enum.UserInputState.End then
		tbl_2_upvr.Q = nil
	end
end
local function handleToggleFlashlight_upvr(arg1, arg2) -- Line 303, Named "handleToggleFlashlight"
	--[[ Upvalues[1]:
		[1]: tbl_2_upvr (readonly)
	]]
	if arg2 == Enum.UserInputState.Begin then
		tbl_2_upvr.MouseButton1 = not tbl_2_upvr.MouseButton1
	end
end
local function zoomInFunction_upvr() -- Line 311, Named "zoomInFunction"
	--[[ Upvalues[1]:
		[1]: var132_upvw (read and write)
	]]
	if var132_upvw <= 1 then
		var132_upvw = 1
	else
		var132_upvw -= 2.5
	end
end
local function zoomOutFunction_upvr() -- Line 316, Named "zoomOutFunction"
	--[[ Upvalues[1]:
		[1]: var132_upvw (read and write)
	]]
	if 120 <= var132_upvw then
		var132_upvw = 120
	else
		var132_upvw += 2.5
	end
end
if TouchEnabled_upvr_2 and any_UserOwnsGamePassAsync_result1_upvr then
	local any_CreateButton_result1 = module_upvr_2.CreateButton("ToggleDrone", "Drone", UDim2.new(-0.85, 0, -0.87, 0), "rbxassetid://17494383670", Color3.new(0, 0.505882, 0.756863))
	if any_CreateButton_result1 then
		any_CreateButton_result1.Event:Connect(handleDroneSpawn_upvr)
	end
	;(function() -- Line 321, Named "setupDroneCasUIButtons"
		--[[ Upvalues[8]:
			[1]: module_upvr_2 (readonly)
			[2]: ascendDroneFunction_upvr (readonly)
			[3]: descendDroneFunction_upvr (readonly)
			[4]: handleDeleteDrone_upvr (readonly)
			[5]: handleCameraExit_upvr (readonly)
			[6]: handleToggleFlashlight_upvr (readonly)
			[7]: zoomInFunction_upvr (readonly)
			[8]: zoomOutFunction_upvr (readonly)
		]]
		local any_CreateButtonDrone_result1_3 = module_upvr_2.CreateButtonDrone("AscendDrone", "Ascend", UDim2.new(-1.5, 0, 0.5, 0), "rbxassetid://17514020316", Color3.new(0, 255, 0))
		if any_CreateButtonDrone_result1_3 then
			any_CreateButtonDrone_result1_3.Event:Connect(ascendDroneFunction_upvr)
		end
		local any_CreateButtonDrone_result1 = module_upvr_2.CreateButtonDrone("DescendDrone", "Descend", UDim2.new(-0.05, 0, 0.5, 0), "rbxassetid://17514022667", Color3.new(1, 0, 0))
		if any_CreateButtonDrone_result1 then
			any_CreateButtonDrone_result1.Event:Connect(descendDroneFunction_upvr)
		end
		local any_CreateButtonDrone_result1_13 = module_upvr_2.CreateButtonDrone("DeleteDrone", "Return Drone", UDim2.new(-0.76, 0, 0.75, 0), "rbxassetid://17514044039", Color3.new(0, 85, 255))
		if any_CreateButtonDrone_result1_13 then
			any_CreateButtonDrone_result1_13.Event:Connect(handleDeleteDrone_upvr)
		end
		local any_CreateButtonDrone_result1_9 = module_upvr_2.CreateButtonDrone("ToggleCamera", "Toggle Camera", UDim2.new(0.75, 0, -0.85, 0), "rbxassetid://17514062415", Color3.new(0, 128, 193))
		if any_CreateButtonDrone_result1_9 then
			any_CreateButtonDrone_result1_9.Event:Connect(handleCameraExit_upvr)
		end
		local any_CreateButtonDrone_result1_7 = module_upvr_2.CreateButtonDrone("ToggleFlashlight", "Toggle Flashlight", UDim2.new(0.75, 0, -0.55, 0), "rbxassetid://17515325720", Color3.new(1, 1, 1))
		if any_CreateButtonDrone_result1_7 then
			any_CreateButtonDrone_result1_7.Event:Connect(handleToggleFlashlight_upvr)
		end
		local any_CreateButtonDrone_result1_5 = module_upvr_2.CreateButtonDrone("ZoomIn", "Zoom In", UDim2.new(-2.25, 0, 0.725, 0), "rbxassetid://17514090285", Color3.new(255, 255, 0))
		if any_CreateButtonDrone_result1_5 then
			any_CreateButtonDrone_result1_5.Event:Connect(zoomInFunction_upvr)
		end
		local any_CreateButtonDrone_result1_4 = module_upvr_2.CreateButtonDrone("ZoomOut", "Zoom Out", UDim2.new(0.75, 0, 0.725, 0), "rbxassetid://17514083437", Color3.new(255, 255, 0))
		if any_CreateButtonDrone_result1_4 then
			any_CreateButtonDrone_result1_4.Event:Connect(zoomOutFunction_upvr)
		end
	end)()
end
local J_upvr = Enum.KeyCode.J
local ButtonR3_upvr_2 = Enum.KeyCode.ButtonR3
local H_upvr = Enum.KeyCode.H
local ButtonL3_upvr = Enum.KeyCode.ButtonL3
local ButtonR3_upvr = Enum.KeyCode.ButtonR3
local ButtonL2_upvr = Enum.KeyCode.ButtonL2
local ButtonR2_upvr_2 = Enum.KeyCode.ButtonR2
local ButtonB_upvr = Enum.KeyCode.ButtonB
UserInputService_upvr_2.InputBegan:Connect(function(arg1, arg2) -- Line 354
	--[[ Upvalues[19]:
		[1]: tbl_2_upvr (readonly)
		[2]: J_upvr (readonly)
		[3]: ButtonR3_upvr_2 (readonly)
		[4]: var133_upvw (read and write)
		[5]: handleDroneSpawn_upvr (readonly)
		[6]: H_upvr (readonly)
		[7]: ButtonL3_upvr (readonly)
		[8]: handleCameraExit_upvr (readonly)
		[9]: var131_upvw (read and write)
		[10]: G_upvr (readonly)
		[11]: ButtonR3_upvr (readonly)
		[12]: handleDeleteDrone_upvr (readonly)
		[13]: SetCamera_upvr (readonly)
		[14]: ButtonL1_upvr_2 (readonly)
		[15]: ButtonR1_upvr (readonly)
		[16]: ButtonL2_upvr (readonly)
		[17]: var132_upvw (read and write)
		[18]: ButtonR2_upvr_2 (readonly)
		[19]: ButtonB_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 78 start (CF ANALYSIS FAILED)
	if arg1.UserInputType == Enum.UserInputType.Keyboard then
		tbl_2_upvr[arg1.KeyCode.Name] = arg1.KeyCode.Value
	else
		tbl_2_upvr[arg1.UserInputType.Name] = arg1.UserInputType.Value
	end
	-- KONSTANTERROR: [0] 1. Error Block 78 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [32] 20. Error Block 6 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [32] 20. Error Block 6 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [37] 23. Error Block 75 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [37] 23. Error Block 75 end (CF ANALYSIS FAILED)
end)
UserInputService_upvr_2.InputEnded:Connect(function(arg1) -- Line 394
	--[[ Upvalues[6]:
		[1]: tbl_2_upvr (readonly)
		[2]: var133_upvw (read and write)
		[3]: var131_upvw (read and write)
		[4]: Camera_upvr_2 (readonly)
		[5]: ButtonL1_upvr_2 (readonly)
		[6]: ButtonR1_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 28 start (CF ANALYSIS FAILED)
	if arg1.UserInputType == Enum.UserInputType.Keyboard then
		tbl_2_upvr[arg1.KeyCode.Name] = nil
	else
		tbl_2_upvr[arg1.UserInputType.Name] = nil
	end
	-- KONSTANTERROR: [0] 1. Error Block 28 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [23] 17. Error Block 6 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [23] 17. Error Block 6 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [25] 19. Error Block 7 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [25] 19. Error Block 7 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [29] 22. Error Block 8 start (CF ANALYSIS FAILED)
	var133_upvw.PrimaryPart:WaitForChild("Communication"):FireServer(tbl_2_upvr, Camera_upvr_2.CFrame.LookVector)
	-- KONSTANTERROR: [29] 22. Error Block 8 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [45] 33. Error Block 9 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [45] 33. Error Block 9 end (CF ANALYSIS FAILED)
end)
UserInputService_upvr_2.TouchMoved:Connect(function(arg1, arg2) -- Line 419
	--[[ Upvalues[2]:
		[1]: tbl_2_upvr (readonly)
		[2]: ControlModule_upvr_2 (readonly)
	]]
	tbl_2_upvr.MobileInput = ControlModule_upvr_2:GetMoveVector()
end)
UserInputService_upvr_2.TouchEnded:Connect(function() -- Line 423
	--[[ Upvalues[2]:
		[1]: tbl_2_upvr (readonly)
		[2]: ControlModule_upvr_2 (readonly)
	]]
	tbl_2_upvr.MobileInput = ControlModule_upvr_2:GetMoveVector()
end)
UserInputService_upvr_2.InputChanged:Connect(function(arg1, arg2) -- Line 429
	--[[ Upvalues[1]:
		[1]: tbl_2_upvr (readonly)
	]]
	if arg1.UserInputType == Enum.UserInputType.Gamepad1 and arg1.KeyCode == Enum.KeyCode.Thumbstick1 then
		tbl_2_upvr.ControllerInput = Vector3.new(arg1.Position.X, 0, -arg1.Position.Y)
	end
end)
UserInputService_upvr_2.InputEnded:Connect(function(arg1, arg2) -- Line 437
	--[[ Upvalues[1]:
		[1]: tbl_2_upvr (readonly)
	]]
	if arg1.UserInputType == Enum.UserInputType.Gamepad1 and arg1.KeyCode == Enum.KeyCode.Thumbstick1 then
		tbl_2_upvr.ControllerInput = Vector3.new(0, 0, 0)
	end
end)
mouse_2.WheelForward:Connect(function() -- Line 447
	--[[ Upvalues[1]:
		[1]: var132_upvw (read and write)
	]]
	if var132_upvw <= 1 then
		var132_upvw = 1
	else
		var132_upvw -= 2.5
	end
end)
mouse_2.WheelBackward:Connect(function() -- Line 451
	--[[ Upvalues[1]:
		[1]: var132_upvw (read and write)
	]]
	if 120 <= var132_upvw then
		var132_upvw = 120
	else
		var132_upvw += 2.5
	end
end)