-- Name: Stances
-- Path: game:GetService("Players").LocalPlayer.PlayerGui.StatusUI.Stances
-- Class: LocalScript
-- Exploit: Xeno 
-- Time to decompile: 0.6214378000004217 seconds

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 07:17:09
-- Luau version 6, Types version 3
-- Time taken: 0.010587 seconds

-- KONSTANTERROR: [0] 1. Error Block 49 start (CF ANALYSIS FAILED)
repeat
	wait()
until game.Players.LocalPlayer.Character:IsDescendantOf(game.Workspace)
local LocalPlayer = game.Players.LocalPlayer
local Character_upvr = LocalPlayer.Character
local Humanoid = LocalPlayer.Character:WaitForChild("Humanoid")
local ACS_Engine = game.ReplicatedStorage:WaitForChild("ACS_Engine")
local _ = ACS_Engine:WaitForChild("Modules")
local TweenService_upvr = game:GetService("TweenService")
local MainFrame_upvr = script.Parent.MainFrame
local ACS_Client_upvr = Character_upvr:WaitForChild("ACS_Client")
local Stances = ACS_Client_upvr:WaitForChild("Stances")
local Protecao_upvr = ACS_Client_upvr:WaitForChild("Protecao")
maxAir = 100 -- Setting global
air = maxAir -- Setting global
lastHealth = 100 -- Setting global
lastHealth2 = 100 -- Setting global
local tbl = {}
Humanoid.Died:Connect(function() -- Line 87
	--[[ Upvalues[3]:
		[1]: TweenService_upvr (readonly)
		[2]: Character_upvr (readonly)
		[3]: MainFrame_upvr (readonly)
	]]
	TweenService_upvr:Create(Character_upvr.Humanoid, TweenInfo.new(1), {
		CameraOffset = Vector3.new(0, 0, 0);
	}):Play()
	MainFrame_upvr.Visible = false
end)
TweenService_upvr:Create(MainFrame_upvr.Poses.Bleeding, TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, -1, true), {
	ImageColor3 = Color3.fromRGB(150, 0, 0);
}):Play()
local Events_upvr = ACS_Engine:WaitForChild("Events")
ACS_Client_upvr:GetAttributeChangedSignal("Surrender"):Connect(function() -- Line 95
	--[[ Upvalues[2]:
		[1]: ACS_Client_upvr (readonly)
		[2]: Events_upvr (readonly)
	]]
	Events_upvr.Stance:FireServer(nil, nil, ACS_Client_upvr:GetAttribute("Surrender"))
end)
ACS_Client_upvr:GetAttributeChangedSignal("Bleeding"):Connect(function() -- Line 100
	--[[ Upvalues[2]:
		[1]: ACS_Client_upvr (readonly)
		[2]: MainFrame_upvr (readonly)
	]]
	if ACS_Client_upvr:GetAttribute("Bleeding") == true then
		MainFrame_upvr.Poses.Bleeding.Visible = true
	else
		MainFrame_upvr.Poses.Bleeding.Visible = false
	end
end)
ACS_Client_upvr:GetAttributeChangedSignal("Injured"):Connect(function() -- Line 110
	--[[ Upvalues[3]:
		[1]: ACS_Client_upvr (readonly)
		[2]: TweenService_upvr (readonly)
		[3]: MainFrame_upvr (readonly)
	]]
	if ACS_Client_upvr:GetAttribute("Injured") == true then
		TweenService_upvr:Create(MainFrame_upvr.Poses.Levantado, TweenInfo.new(0.2, Enum.EasingStyle.Linear), {
			ImageColor3 = Color3.fromRGB(150, 0, 0);
		}):Play()
		TweenService_upvr:Create(MainFrame_upvr.Poses.Agaixado, TweenInfo.new(0.2, Enum.EasingStyle.Linear), {
			ImageColor3 = Color3.fromRGB(150, 0, 0);
		}):Play()
		TweenService_upvr:Create(MainFrame_upvr.Poses.Deitado, TweenInfo.new(0.2, Enum.EasingStyle.Linear), {
			ImageColor3 = Color3.fromRGB(150, 0, 0);
		}):Play()
	else
		TweenService_upvr:Create(MainFrame_upvr.Poses.Levantado, TweenInfo.new(0.2, Enum.EasingStyle.Linear), {
			ImageColor3 = Color3.fromRGB(255, 255, 255);
		}):Play()
		TweenService_upvr:Create(MainFrame_upvr.Poses.Agaixado, TweenInfo.new(0.2, Enum.EasingStyle.Linear), {
			ImageColor3 = Color3.fromRGB(255, 255, 255);
		}):Play()
		TweenService_upvr:Create(MainFrame_upvr.Poses.Deitado, TweenInfo.new(0.2, Enum.EasingStyle.Linear), {
			ImageColor3 = Color3.fromRGB(255, 255, 255);
		}):Play()
	end
end)
local Vest_3_upvr = MainFrame_upvr.Vest
function Vest() -- Line 128
	--[[ Upvalues[3]:
		[1]: Protecao_upvr (readonly)
		[2]: TweenService_upvr (readonly)
		[3]: Vest_3_upvr (readonly)
	]]
	if Protecao_upvr.VestProtect.Value <= 0 then
		TweenService_upvr:Create(Vest_3_upvr, TweenInfo.new(1), {
			ImageTransparency = 1;
		}):Play()
	else
		TweenService_upvr:Create(Vest_3_upvr, TweenInfo.new(1), {
			ImageTransparency = 0.125;
		}):Play()
	end
end
local Helm_upvr = MainFrame_upvr.Helm
function Helmet() -- Line 136
	--[[ Upvalues[3]:
		[1]: Protecao_upvr (readonly)
		[2]: TweenService_upvr (readonly)
		[3]: Helm_upvr (readonly)
	]]
	if Protecao_upvr.HelmetProtect.Value <= 0 then
		TweenService_upvr:Create(Helm_upvr, TweenInfo.new(1), {
			ImageTransparency = 1;
		}):Play()
	else
		TweenService_upvr:Create(Helm_upvr, TweenInfo.new(1), {
			ImageTransparency = 0.125;
		}):Play()
	end
end
local module_upvr = require(ACS_Engine.GameRules:WaitForChild("Config"))
local Energy_upvr = MainFrame_upvr.Poses.Energy
function Stamina() -- Line 144
	--[[ Upvalues[3]:
		[1]: module_upvr (readonly)
		[2]: ACS_Client_upvr (readonly)
		[3]: Energy_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [124] 79. Error Block 7 start (CF ANALYSIS FAILED)
	Energy_upvr.Visible = false
	do
		return
	end
	-- KONSTANTERROR: [124] 79. Error Block 7 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [129] 83. Error Block 8 start (CF ANALYSIS FAILED)
	ACS_Client_upvr.Variaveis.Stamina.Value = ACS_Client_upvr.Variaveis.Stamina.MaxValue
	Energy_upvr.Visible = false
	-- KONSTANTERROR: [129] 83. Error Block 8 end (CF ANALYSIS FAILED)
end
Vest()
Helmet()
Stamina()
Protecao_upvr.VestProtect.Changed:Connect(Vest)
Protecao_upvr.HelmetProtect.Changed:Connect(Helmet)
ACS_Client_upvr.Variaveis.Stamina.Changed:Connect(Stamina)
local CurrentCamera_upvr = game.Workspace.CurrentCamera
function tbl.Update() -- Line 171
	--[[ Upvalues[2]:
		[1]: ACS_Client_upvr (readonly)
		[2]: CurrentCamera_upvr (readonly)
	]]
	if ACS_Client_upvr.Variaveis.Stamina.Value <= ACS_Client_upvr.Variaveis.Stamina.MaxValue / 2 then
		local var34 = (1 - (ACS_Client_upvr.Variaveis.Stamina.Value) / (ACS_Client_upvr.Variaveis.Stamina.MaxValue / 2)) / 20
		CurrentCamera_upvr.CoordinateFrame *= CFrame.Angles(math.rad(var34 * math.sin(tick() * 3.5)), math.rad(var34 * math.sin(tick() * 1)), 0)
	end
end
maxAir = 100 -- Setting global
air = maxAir -- Setting global
lastHealth = 100 -- Setting global
lastHealth2 = 100 -- Setting global
maxWidth = 0.96 -- Setting global
local var36_upvw = false
Humanoid.StateChanged:connect(function(arg1) -- Line 190
	--[[ Upvalues[1]:
		[1]: var36_upvw (read and write)
	]]
	if arg1 == Enum.HumanoidStateType.Swimming then
		var36_upvw = true
	else
		var36_upvw = false
	end
end)
game:GetService("RunService"):BindToRenderStep("Camera Update", 200, tbl.Update)
-- KONSTANTERROR: [0] 1. Error Block 49 end (CF ANALYSIS FAILED)
-- KONSTANTERROR: [581] 373. Error Block 29 start (CF ANALYSIS FAILED)
-- KONSTANTERROR: [581] 373. Error Block 29 end (CF ANALYSIS FAILED)
-- KONSTANTERROR: [344] 230. Error Block 6 start (CF ANALYSIS FAILED)
-- KONSTANTERROR: [344] 230. Error Block 6 end (CF ANALYSIS FAILED)