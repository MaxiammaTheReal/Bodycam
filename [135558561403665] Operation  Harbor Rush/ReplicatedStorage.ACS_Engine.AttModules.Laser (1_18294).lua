-- Name: Laser
-- Path: game:GetService("ReplicatedStorage").ACS_Engine.AttModules.Laser
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.5458212000012281 seconds

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 07:18:37
-- Luau version 6, Types version 3
-- Time taken: 0.001268 seconds

return {
	SightZoom = 0;
	SightZoom2 = 0;
	IsSuppressor = false;
	IsFlashHider = false;
	IsBipod = false;
	EnableLaser = true;
	EnableFlashlight = false;
	InfraRed = false;
	DamageMod = 1;
	minDamageMod = 1;
	camRecoil = {
		RecoilUp = 1;
		RecoilTilt = 1;
		RecoilLeft = 1;
		RecoilRight = 1;
	};
	gunRecoil = {
		RecoilUp = 1;
		RecoilTilt = 1;
		RecoilLeft = 1;
		RecoilRight = 1;
	};
	AimRecoilReduction = 1;
	AimSpreadReduction = 1;
	MinRecoilPower = 1;
	MaxRecoilPower = 1;
	RecoilPowerStepAmount = 1;
	MinSpread = 0.75;
	MaxSpread = 0.75;
	AimInaccuracyStepAmount = 1;
	AimInaccuracyDecrease = 1.5;
	WalkMult = 0.75;
	MuzzleVelocityMod = 1;
}