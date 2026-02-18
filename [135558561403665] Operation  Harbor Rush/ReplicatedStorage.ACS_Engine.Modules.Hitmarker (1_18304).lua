-- Name: Hitmarker
-- Path: game:GetService("ReplicatedStorage").ACS_Engine.Modules.Hitmarker
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.7418883999998798 seconds

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 07:18:45
-- Luau version 6, Types version 3
-- Time taken: 0.009726 seconds

local Debris_upvr = game:GetService("Debris")
local tbl_upvr_3 = {"4668969235", "1565825075", "1565824613", "4668969774", "4668969602", "4668970218", "4668970412"}
local tbl_upvr_7 = {"282954522", "282954538", "282954576", "1565756607", "1565756818"}
local tbl_upvr = {"1565830611", "1565831129", "1565831468", "1565832329"}
local tbl_upvr_5 = {"287772625", "287772674", "287772718", "287772829", "287772902"}
local tbl_upvr_8 = {"287769261", "287769348", "287769415", "287769483", "287769538"}
local tbl_upvr_9 = {"287390459", "287390954", "287391087", "287391197", "287391361", "287391499", "287391567"}
local tbl_upvr_6 = {"342190504", "342190495", "342190488", "342190510"}
local tbl_upvr_10 = {"3744371091", "3744371584", "1565837588", "1565836522", "1565734495", "3744371864", "1565734259", "3744371342"}
local tbl_upvr_4 = {"4635529646", "4635529872", "4635529434", "4635529230", "363818432", "363818488", "363818567", "363818611", "363818653"}
local tbl_upvr_2 = {"342190005", "342190012", "342190017", "342190024"}
local tbl = {"4117590991", "4117588426", "4117589176", "4117589687", "4117590335"}
local module = {}
local ACS_WorkSpace_upvr = workspace:WaitForChild("ACS_WorkSpace")
local TweenService_upvr = game:GetService("TweenService")
function module.HitEffect(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 20
	--[[ Upvalues[12]:
		[1]: tbl_upvr_10 (readonly)
		[2]: Debris_upvr (readonly)
		[3]: tbl_upvr_4 (readonly)
		[4]: tbl_upvr_3 (readonly)
		[5]: tbl_upvr_7 (readonly)
		[6]: tbl_upvr_8 (readonly)
		[7]: tbl_upvr_5 (readonly)
		[8]: tbl_upvr (readonly)
		[9]: tbl_upvr_6 (readonly)
		[10]: tbl_upvr_2 (readonly)
		[11]: ACS_WorkSpace_upvr (readonly)
		[12]: TweenService_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [2] 2. Error Block 152 start (CF ANALYSIS FAILED)
	local Attachment = Instance.new("Attachment", workspace.Terrain)
	Attachment.CFrame = CFrame.new(arg2, arg2 + arg4)
	if arg3.Name == "Head" or arg3.Parent.Name == "Top" then
		local Sound_2 = Instance.new("Sound")
		Sound_2.Parent = Attachment
		Sound_2.Volume = math.random(20, 30) / 10
		Sound_2.MaxDistance = 100
		Sound_2.EmitterSize = 5
		Sound_2.PlaybackSpeed = math.random(34, 50) / 40
		Sound_2.SoundId = "rbxassetid://"..tbl_upvr_10[math.random(1, #tbl_upvr_10)]
		Sound_2:Play()
		local ParticleEmitter = Instance.new("ParticleEmitter")
		ParticleEmitter.Enabled = false
		ParticleEmitter.Color = ColorSequence.new(Color3.fromRGB(125, 0, 0))
		ParticleEmitter.LightEmission = 0
		ParticleEmitter.LightInfluence = 1
		ParticleEmitter.Size = NumberSequence.new(0.25, 2.5)
		ParticleEmitter.Texture = "rbxasset://textures/particles/smoke_main.dds"
		ParticleEmitter.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.5, 0), NumberSequenceKeypoint.new(1, 1)})
		ParticleEmitter.Acceleration = Vector3.new(0, 5, 0)
		ParticleEmitter.Lifetime = NumberRange.new(0.25, 1)
		ParticleEmitter.Rate = 2000
		ParticleEmitter.Drag = 10
		ParticleEmitter.RotSpeed = NumberRange.new(-150, 150)
		ParticleEmitter.Speed = NumberRange.new(7, 15)
		ParticleEmitter.VelocitySpread = math.random(2, 20)
		ParticleEmitter.SpreadAngle = Vector2.new(-150, 150)
		ParticleEmitter.LockedToPart = true
		ParticleEmitter.Parent = Attachment
		ParticleEmitter.EmissionDirection = "Front"
		ParticleEmitter:Emit(50)
		Debris_upvr:AddItem(Attachment, ParticleEmitter.Lifetime.Max)
		-- KONSTANTWARNING: GOTO [3722] #2653
	end
	-- KONSTANTERROR: [2] 2. Error Block 152 end (CF ANALYSIS FAILED)
end
function module.Explosion(arg1, arg2, arg3) -- Line 820
	--[[ Upvalues[2]:
		[1]: tbl_upvr_9 (readonly)
		[2]: Debris_upvr (readonly)
	]]
	local Attachment_2 = Instance.new("Attachment")
	Attachment_2.CFrame = CFrame.new(arg1, arg1 + arg3)
	Attachment_2.Parent = workspace.Terrain
	local Sound = Instance.new("Sound")
	Sound.EmitterSize = 50
	Sound.MaxDistance = 1500
	Sound.SoundId = "rbxassetid://"..tbl_upvr_9[math.random(1, 7)]
	Sound.PlaybackSpeed = math.random(30, 55) / 40
	Sound.Volume = 2
	Sound.Parent = Attachment_2
	Sound.PlayOnRemove = true
	Sound:Destroy()
	local Explosion_2 = Instance.new("Explosion")
	Explosion_2.BlastPressure = 0
	Explosion_2.BlastRadius = 0
	Explosion_2.DestroyJointRadiusPercent = 0
	Explosion_2.Position = Attachment_2.Position
	Explosion_2.Parent = Attachment_2
	Debris_upvr:AddItem(Attachment_2, 5)
end
return module