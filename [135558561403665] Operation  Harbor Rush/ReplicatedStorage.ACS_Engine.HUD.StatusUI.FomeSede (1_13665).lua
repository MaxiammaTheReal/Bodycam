-- Name: FomeSede
-- Path: game:GetService("ReplicatedStorage").ACS_Engine.HUD.StatusUI.FomeSede
-- Class: LocalScript
-- Exploit: Xeno 
-- Time to decompile: 0.25933179999992717 seconds

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 07:17:10
-- Luau version 6, Types version 3
-- Time taken: 0.006855 seconds

local MedSys_upvr = game.ReplicatedStorage.ACS_Engine.Eventos.MedSys
local LocalPlayer = game.Players.LocalPlayer
local var3_upvw
repeat
	wait()
until LocalPlayer.Character
var3_upvw = "UserInputService"
var3_upvw = nil
if LocalPlayer:FindFirstChild("HungerVal") then
	LocalPlayer.HungerVal.Value = 100
	-- KONSTANTWARNING: GOTO [85] #56
end
Instance.new("IntValue", LocalPlayer).Name = "HungerVal"
LocalPlayer.HungerVal.Value = 100
if LocalPlayer:FindFirstChild("ThirstVal") then
	var3_upvw = LocalPlayer.ThirstVal
	var3_upvw.Value = 100
else
	Instance.new("IntValue", LocalPlayer).Name = "ThirstVal"
	LocalPlayer.ThirstVal.Value = 100
	var3_upvw = LocalPlayer.ThirstVal
end
local HungerVal_upvr = LocalPlayer:WaitForChild("HungerVal")
local Frame_upvr = script.Parent.Frame
local TweenService_upvr = game:GetService("TweenService")
var3_upvw.Changed:connect(function() -- Line 42
	--[[ Upvalues[4]:
		[1]: var3_upvw (read and write)
		[2]: TweenService_upvr (readonly)
		[3]: Frame_upvr (readonly)
		[4]: MedSys_upvr (readonly)
	]]
	if 60 < var3_upvw.Value then
		TweenService_upvr:Create(Frame_upvr.Sede, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {
			ImageColor3 = Color3.fromRGB(255, 255, 255);
			ImageTransparency = 1;
		}):Play()
	else
		if var3_upvw.Value <= 0 then
			MedSys_upvr.Fome:FireServer()
			return
		end
		if var3_upvw.Value <= 30 then
			TweenService_upvr:Create(Frame_upvr.Sede, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {
				ImageColor3 = Color3.fromRGB(255, var3_upvw.Value / 30 * 255, var3_upvw.Value / 60 * 255);
				ImageTransparency = 0;
			}):Play()
			return
		end
		if var3_upvw.Value <= 60 then
			TweenService_upvr:Create(Frame_upvr.Sede, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {
				ImageColor3 = Color3.fromRGB(255, 255, var3_upvw.Value / 60 * 255);
				ImageTransparency = 0;
			}):Play()
		end
	end
end)
HungerVal_upvr.Changed:connect(function() -- Line 58
	--[[ Upvalues[4]:
		[1]: HungerVal_upvr (readonly)
		[2]: TweenService_upvr (readonly)
		[3]: Frame_upvr (readonly)
		[4]: MedSys_upvr (readonly)
	]]
	if 60 < HungerVal_upvr.Value then
		TweenService_upvr:Create(Frame_upvr.Fome, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {
			ImageColor3 = Color3.fromRGB(255, 255, 255);
			ImageTransparency = 1;
		}):Play()
	else
		if HungerVal_upvr.Value <= 0 then
			MedSys_upvr.Fome:FireServer()
			return
		end
		if HungerVal_upvr.Value <= 30 then
			TweenService_upvr:Create(Frame_upvr.Fome, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {
				ImageColor3 = Color3.fromRGB(255, HungerVal_upvr.Value / 30 * 255, HungerVal_upvr.Value / 60 * 255);
				ImageTransparency = 0;
			}):Play()
			return
		end
		if HungerVal_upvr.Value <= 60 then
			TweenService_upvr:Create(Frame_upvr.Fome, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {
				ImageColor3 = Color3.fromRGB(255, 255, HungerVal_upvr.Value / 60 * 255);
				ImageTransparency = 0;
			}):Play()
		end
	end
end)
while wait(require(game.ReplicatedStorage:WaitForChild("ACS_Engine").ServerConfigs:WaitForChild("Config")).HungerWaitTime) do
	if 0 <= var3_upvw.Value - 1 then
		var3_upvw.Value -= 1
	end
	if 0 <= HungerVal_upvr.Value - 1 then
		HungerVal_upvr.Value -= 1
	end
end