-- Name: Stat
-- Path: game:GetService("StarterGui").Health.Stat
-- Class: LocalScript
-- Exploit: Xeno 
-- Time to decompile: 0.2621922000016639 seconds

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 07:17:25
-- Luau version 6, Types version 3
-- Time taken: 0.006495 seconds

local Character_upvr = game.Players.LocalPlayer.Character
game.Lighting.HealthBlur.Enabled = false
game.Lighting.DeathEffect.Enabled = false
game.Lighting.HealthEffect.Enabled = false
game.Players.LocalPlayer.Character:WaitForChild("Humanoid", 5)
local HealthBlur_upvr = game.Lighting.HealthBlur
local HealthEffect_upvr = game.Lighting.HealthEffect
game.Players.LocalPlayer.Character.Humanoid:GetPropertyChangedSignal("Health"):Connect(function() -- Line 23
	--[[ Upvalues[3]:
		[1]: Character_upvr (readonly)
		[2]: HealthBlur_upvr (readonly)
		[3]: HealthEffect_upvr (readonly)
	]]
	if 100 < Character_upvr.Humanoid.Health then
		script.Heartbeat.Playing = false
		script.Heartbeat.PlaybackSpeed = 0
		script.Breathing.Playing = false
		script.Breathing.PlaybackSpeed = 1
		HealthBlur_upvr.Enabled = false
		HealthBlur_upvr.Size = 0
		HealthEffect_upvr.Enabled = false
		HealthEffect_upvr.Saturation = 0
		HealthEffect_upvr.TintColor = Color3.new(1, 1, 1)
	end
	if Character_upvr.Humanoid.Health == 100 then
		script.Heartbeat.Playing = false
		script.Heartbeat.PlaybackSpeed = 0
		script.Breathing.Playing = false
		script.Breathing.PlaybackSpeed = 1
		HealthBlur_upvr.Enabled = false
		HealthBlur_upvr.Size = 0
		HealthEffect_upvr.Enabled = false
		HealthEffect_upvr.Saturation = 0
		HealthEffect_upvr.TintColor = Color3.new(1, 1, 1)
	end
	if 90 <= Character_upvr.Humanoid.Health and Character_upvr.Humanoid.Health < 100 then
		script.Heartbeat.Playing = false
		script.Heartbeat.PlaybackSpeed = 0
		script.Breathing.Playing = false
		script.Breathing.PlaybackSpeed = 1
		HealthBlur_upvr.Enabled = false
		HealthBlur_upvr.Size = 0
		HealthEffect_upvr.Enabled = false
		HealthEffect_upvr.Saturation = -0.02
		HealthEffect_upvr.TintColor = Color3.new(1, 1, 1)
	end
	if 80 <= Character_upvr.Humanoid.Health and Character_upvr.Humanoid.Health < 90 then
		script.Heartbeat.Playing = false
		script.Heartbeat.PlaybackSpeed = 0
		script.Breathing.Playing = false
		script.Breathing.PlaybackSpeed = 1
		HealthBlur_upvr.Enabled = false
		HealthBlur_upvr.Size = 0.2
		HealthEffect_upvr.Enabled = false
		HealthEffect_upvr.Saturation = -0.06
		HealthEffect_upvr.TintColor = Color3.new(1, 1, 1)
	end
	if 70 <= Character_upvr.Humanoid.Health and Character_upvr.Humanoid.Health < 80 then
		script.Heartbeat.Playing = false
		script.Heartbeat.PlaybackSpeed = 0
		script.Breathing.Playing = false
		script.Breathing.PlaybackSpeed = 1
		HealthBlur_upvr.Enabled = true
		HealthBlur_upvr.Size = 1
		HealthEffect_upvr.Enabled = false
		HealthEffect_upvr.Saturation = -0.15
		HealthEffect_upvr.TintColor = Color3.new(1, 0.909804, 0.882353)
	end
	if 50 <= Character_upvr.Humanoid.Health and Character_upvr.Humanoid.Health < 70 then
		script.Heartbeat.Playing = false
		script.Heartbeat.PlaybackSpeed = 0
		script.Breathing.Playing = false
		script.Breathing.PlaybackSpeed = 1
		HealthBlur_upvr.Enabled = true
		HealthBlur_upvr.Size = 3
		HealthEffect_upvr.Enabled = false
		HealthEffect_upvr.Saturation = -0.45
		HealthEffect_upvr.TintColor = Color3.new(1, 0.819608, 0.72549)
	end
	if 30 <= Character_upvr.Humanoid.Health and Character_upvr.Humanoid.Health < 50 then
		script.Heartbeat.Playing = true
		script.Heartbeat.PlaybackSpeed = 0.8
		script.Breathing.Playing = true
		script.Breathing.PlaybackSpeed = 0.8
		HealthBlur_upvr.Enabled = true
		HealthBlur_upvr.Size = 4
		HealthEffect_upvr.Enabled = false
		HealthEffect_upvr.Saturation = -0.75
		HealthEffect_upvr.TintColor = Color3.new(1, 0.705882, 0.607843)
	end
	if 10 <= Character_upvr.Humanoid.Health and Character_upvr.Humanoid.Health < 30 then
		script.Heartbeat.Playing = true
		script.Heartbeat.PlaybackSpeed = 1
		script.Breathing.Playing = true
		script.Breathing.PlaybackSpeed = 1
		HealthBlur_upvr.Enabled = true
		HealthBlur_upvr.Size = 8
		HealthEffect_upvr.Enabled = false
		HealthEffect_upvr.Saturation = -0.9
		HealthEffect_upvr.TintColor = Color3.new(1, 0.47451, 0.341176)
	end
	if 1 <= Character_upvr.Humanoid.Health and Character_upvr.Humanoid.Health < 10 then
		script.Heartbeat.Playing = true
		script.Heartbeat.PlaybackSpeed = 1.4
		script.Breathing.Playing = true
		script.Breathing.PlaybackSpeed = 1.1
		HealthBlur_upvr.Enabled = true
		HealthBlur_upvr.Size = 16
		HealthEffect_upvr.Enabled = false
		HealthEffect_upvr.Saturation = -1
		HealthEffect_upvr.TintColor = Color3.new(0.533333, 0.25098, 0.180392)
	end
	if Character_upvr.Humanoid.Health <= 0 then
		script.Heartbeat.Playing = false
		script.Heartbeat.PlaybackSpeed = 0
		script.Breathing.Playing = false
		script.Breathing.PlaybackSpeed = 0
		HealthBlur_upvr.Enabled = false
	end
end)
game.Players.LocalPlayer.Character.Humanoid:GetPropertyChangedSignal("Health"):Connect(function() -- Line 156
	--[[ Upvalues[1]:
		[1]: Character_upvr (readonly)
	]]
	if Character_upvr.Humanoid.Health <= 0 and false == false then
		script.TensionJump:Play()
	end
end)