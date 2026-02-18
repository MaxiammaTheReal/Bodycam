-- Name: MainNVG
-- Path: game:GetService("Players").LocalPlayer.PlayerScripts.MainNVG
-- Class: LocalScript
-- Exploit: Xeno 
-- Time to decompile: 0.6920117999998183 seconds

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 07:17:05
-- Luau version 6, Types version 3
-- Time taken: 0.015385 seconds

local LocalPlayer_upvr = game.Players.LocalPlayer
local nvg_upvr = game.ReplicatedStorage:WaitForChild("nvg")
local ContextActionService_upvr = game:GetService("ContextActionService")
local ColorCorrectionEffect_upvr = Instance.new("ColorCorrectionEffect")
ColorCorrectionEffect_upvr.Parent = game.Lighting
local MarketplaceService_upvr = game:GetService("MarketplaceService")
local var9_upvw
local var10_upvw
local var11_upvw
local var12_upvw
local var13_upvw
local var14_upvw
local var15_upvw
function removehelmet() -- Line 48
	--[[ Upvalues[5]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: var14_upvw (read and write)
		[3]: ContextActionService_upvr (readonly)
		[4]: var11_upvw (read and write)
		[5]: var15_upvw (read and write)
	]]
	if LocalPlayer_upvr.Character then
		if var14_upvw then
			var14_upvw:Disconnect()
		end
		animating = false -- Setting global
		togglenvg(false)
		ContextActionService_upvr:UnbindAction("nvgtoggle")
		if var11_upvw then
			var11_upvw:Destroy()
		end
		if var15_upvw then
			var15_upvw:Destroy()
		end
	end
end
local var16_upvw
local TweenService_upvr = game:GetService("TweenService")
local ExposureCompensation_upvr = game.Lighting.ExposureCompensation
local ownsGamepass_result1_upvr = (function(arg1, arg2, arg3) -- Line 16, Named "ownsGamepass"
	--[[ Upvalues[1]:
		[1]: MarketplaceService_upvr (readonly)
	]]
	while 0 < arg3 do
		local pcall_result1, pcall_result2 = pcall(MarketplaceService_upvr.UserOwnsGamePassAsync, MarketplaceService_upvr, arg1.UserId, arg2)
		if pcall_result1 then
			return pcall_result2
		end
		task.wait(1)
	end
	return false
end)(LocalPlayer_upvr, 779458953, 3)
local module_upvr = require(game:GetService("ReplicatedStorage"):WaitForChild("CAS"))
function oncharadded(arg1) -- Line 65
	--[[ Upvalues[15]:
		[1]: var15_upvw (read and write)
		[2]: var11_upvw (read and write)
		[3]: LocalPlayer_upvr (readonly)
		[4]: var14_upvw (read and write)
		[5]: var9_upvw (read and write)
		[6]: var13_upvw (read and write)
		[7]: var16_upvw (read and write)
		[8]: var10_upvw (read and write)
		[9]: var12_upvw (read and write)
		[10]: TweenService_upvr (readonly)
		[11]: ColorCorrectionEffect_upvr (readonly)
		[12]: ExposureCompensation_upvr (readonly)
		[13]: ownsGamepass_result1_upvr (readonly)
		[14]: module_upvr (readonly)
		[15]: ContextActionService_upvr (readonly)
	]]
	arg1:WaitForChild("Humanoid").Died:connect(function() -- Line 66
		removehelmet()
	end)
	local Helmet_2 = arg1:WaitForChild("Helmet")
	if Helmet_2.Name == "Helmet" then
		var15_upvw = Helmet_2
		var11_upvw = Instance.new("ScreenGui")
		var11_upvw.IgnoreGuiInset = true
		var11_upvw.Parent = LocalPlayer_upvr.PlayerGui
		var14_upvw = Helmet_2.AncestryChanged:Connect(function(arg1_5, arg2) -- Line 95
			if not arg2 then
				removehelmet()
			end
		end)
	end
	local Up = Helmet_2:WaitForChild("Up", 0.5)
	if Up then
		var9_upvw = Up
		var13_upvw = require(var9_upvw:WaitForChild("AUTO_CONFIG"))
		var16_upvw = var9_upvw:WaitForChild("NVG_Settings")
		local ImageLabel = Instance.new("ImageLabel")
		ImageLabel.BackgroundTransparency = 1
		ImageLabel.ImageTransparency = 1
		local clone = ImageLabel:Clone()
		clone.Image = "rbxassetid://"..var16_upvw.OverlayImage.Value
		clone.Size = UDim2.new(1, 0, 1, 0)
		clone.Name = "Overlay"
		ImageLabel.Name = "Noise"
		ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
		ImageLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
		ImageLabel.Size = UDim2.new(2, 0, 2, 0)
		clone.Parent = var11_upvw
		ImageLabel.Parent = var11_upvw
		local tweeninfo_2 = var13_upvw.tweeninfo
		local function _(arg1_6, arg2) -- Line 132, Named "addtweens"
			if arg2 then
				for _, v in pairs(arg2) do
					table.insert(arg1_6, v)
				end
			end
		end
		var10_upvw = var13_upvw.onanim
		var12_upvw = var13_upvw.offanim
		on_overlayanim = {TweenService_upvr:Create(game.Lighting, tweeninfo_2, {
			ExposureCompensation = var16_upvw.Exposure.Value;
		}), TweenService_upvr:Create(ColorCorrectionEffect_upvr, tweeninfo_2, {
			Brightness = var16_upvw.OverlayBrightness.Value;
			Contrast = 0.8;
			Saturation = -1;
			TintColor = var16_upvw.OverlayColor.Value;
		}), TweenService_upvr:Create(var11_upvw.Overlay, tweeninfo_2, {
			ImageTransparency = 0;
		}), TweenService_upvr:Create(var11_upvw.Noise, tweeninfo_2, {
			ImageTransparency = 0;
		})} -- Setting global
		off_overlayanim = {TweenService_upvr:Create(game.Lighting, tweeninfo_2, {
			ExposureCompensation = ExposureCompensation_upvr;
		}), TweenService_upvr:Create(ColorCorrectionEffect_upvr, tweeninfo_2, {
			Brightness = 0;
			Contrast = 0;
			Saturation = 0;
			TintColor = Color3.fromRGB(255, 255, 255);
		}), TweenService_upvr:Create(var11_upvw.Overlay, tweeninfo_2, {
			ImageTransparency = 1;
		}), TweenService_upvr:Create(var11_upvw.Noise, tweeninfo_2, {
			ImageTransparency = 1;
		})} -- Setting global
		if ownsGamepass_result1_upvr then
			local any_CreateButton_result1 = module_upvr.CreateButton("nvgtoggle", "NVG", UDim2.new(-1.81, 0, -0.07, 0), "rbxassetid://17191363504", Color3.fromRGB(121, 61, 0))
			if any_CreateButton_result1 then
				any_CreateButton_result1.Event:Connect(function() -- Line 160
					togglenvg(not nvgactive)
					return Enum.ContextActionResult.Pass
				end)
			end
			ContextActionService_upvr:BindAction("nvgtoggle", function(arg1_7, arg2) -- Line 162
				if arg2 == Enum.UserInputState.Begin then
					togglenvg(not nvgactive)
				end
				return Enum.ContextActionResult.Pass
			end, false, Enum.KeyCode.N, Enum.KeyCode.DPadDown)
		end
	end
end
LocalPlayer_upvr.CharacterAdded:Connect(oncharadded)
local SOME = workspace:FindFirstChild(LocalPlayer_upvr.Name)
if SOME then
	oncharadded(SOME)
end
function playtween(arg1) -- Line 180
	spawn(function() -- Line 181
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		for _, v_2 in pairs(arg1) do
			if typeof(v_2) == "number" then
				wait(v_2)
			else
				v_2:Play()
			end
		end
	end)
end
function applyprops(arg1, arg2) -- Line 192
	for i_3, v_3 in pairs(arg2) do
		arg1[i_3] = v_3
	end
end
function cycle(arg1) -- Line 200
	--[[ Upvalues[1]:
		[1]: var11_upvw (read and write)
	]]
	local Noise = var11_upvw.Noise
	local src = arg1.src
	local var85
	repeat
		var85 = src[math.random(1, #src)]
	until var85 ~= arg1.last
	Noise.Image = "rbxassetid://"..var85
	local randint = math.random(230, 255)
	Noise.Position = UDim2.new(math.random(0.4, 0.6), 0, math.random(0.4, 0.6), 0)
	Noise.ImageColor3 = Color3.fromRGB(randint, randint, randint)
	arg1.last = var85
end
local PlayerGui_upvr = LocalPlayer_upvr:WaitForChild("PlayerGui")
function togglenvg(arg1) -- Line 214
	--[[ Upvalues[6]:
		[1]: PlayerGui_upvr (readonly)
		[2]: var12_upvw (read and write)
		[3]: var9_upvw (read and write)
		[4]: nvg_upvr (readonly)
		[5]: var13_upvw (read and write)
		[6]: var10_upvw (read and write)
	]]
	local Drone = PlayerGui_upvr:FindFirstChild("Drone")
	if Drone and Drone.Enabled then
		if nvgactive == true then
			playtween(var12_upvw)
			delay(0.5, function() -- Line 219
				playtween(off_overlayanim)
				animating = false -- Setting global
			end)
		end
	elseif not animating and var9_upvw then
		nvg_upvr:FireServer()
		animating = true -- Setting global
		nvgactive = arg1 -- Setting global
		if var13_upvw.lens then
			local var90 = var13_upvw
			if arg1 then
				var90 = "Neon"
			else
				var90 = "Glass"
			end
			var90.lens.Material = var90
		end
		if arg1 then
			playtween(var10_upvw)
			delay(0.75, function() -- Line 237
				--[[ Upvalues[1]:
					[1]: var13_upvw (copied, read and write)
				]]
				playtween(on_overlayanim)
				spawn(function() -- Line 239
					--[[ Upvalues[1]:
						[1]: var13_upvw (copied, read and write)
					]]
					while nvgactive do
						cycle(var13_upvw.dark)
						cycle(var13_upvw.light)
						wait(0.05)
					end
				end)
				animating = false -- Setting global
			end)
			return
		end
		playtween(var12_upvw)
		delay(0.5, function() -- Line 250
			playtween(off_overlayanim)
			animating = false -- Setting global
		end)
	end
end
nvg_upvr.OnClientEvent:connect(function(arg1, arg2) -- Line 259
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local AUTO_CONFIG = require(arg1.AUTO_CONFIG)
	local lens = AUTO_CONFIG.lens
	local var97
	if lens then
		if arg2 then
			var97 = "Neon"
		else
			var97 = "Glass"
		end
		lens.Material = var97
	end
	if arg2 then
	else
	end
	playtween(AUTO_CONFIG.offanim)
end)
if game.ReplicatedStorage:WaitForChild("EnableAutoLighting").Value then
	function llerp(arg1, arg2, arg3) -- Line 276
		return arg1 * (1 - arg3) + arg2 * arg3
	end
end