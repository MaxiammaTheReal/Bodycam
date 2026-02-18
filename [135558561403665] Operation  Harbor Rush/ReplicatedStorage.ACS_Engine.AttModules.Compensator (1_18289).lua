-- Name: Compensator
-- Path: game:GetService("ReplicatedStorage").ACS_Engine.AttModules.Compensator
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.5379783999997017 seconds

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 07:18:33
-- Luau version 6, Types version 3
-- Time taken: 0.000963 seconds

return {
	SightZoom = 0;
	SightZoom2 = 0;
	IsSuppressor = false;
	IsFlashHider = false;
	IsBipod = false;
	EnableLaser = false;
	EnableFlashlight = false;
	InfraRed = false;
	DamageMod = 1;
	minDamageMod = 1;
	camRecoil = {
		RecoilUp = 1.1;
		RecoilTilt = 1;
		RecoilLeft = 0.9;
		RecoilRight = 0.9;
	};
	gunRecoil = {
		RecoilUp = 1.1;
		RecoilTilt = 1;
		RecoilLeft = 0.9;
		RecoilRight = 0.9;
	};
	AimRecoilReduction = 1;
	AimSpreadReduction = 1;
	MinRecoilPower = 1;
	MaxRecoilPower = 1;
	RecoilPowerStepAmount = 1;
	MinSpread = 1;
	MaxSpread = 1;
	AimInaccuracyStepAmount = 1;
	AimInaccuracyDecrease = 1;
	WalkMult = 1;
	MuzzleVelocityMod = 1;
}