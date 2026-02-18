-- Name: ACS_Settings
-- Path: game:GetService("ReplicatedStorage").SWATToolsafterLoad.Flashbang.ACS_Settings
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.25922390000050655 seconds

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 07:17:39
-- Luau version 6, Types version 3
-- Time taken: 0.003059 seconds

return {
	SlideEx = CFrame.new(0, 0, 0);
	SlideLock = false;
	canAim = false;
	Zoom = 70;
	Zoom2 = 70;
	gunName = script.Parent.Name;
	Type = "Grenade";
	EnableHUD = false;
	IncludeChamberedBullet = false;
	Ammo = 0;
	StoredAmmo = 0;
	AmmoInGun = 0;
	MaxStoredAmmo = 0;
	CanCheckMag = false;
	MagCount = false;
	ShellInsert = false;
	ShootRate = 0;
	Bullets = 0;
	BurstShot = 0;
	ShootType = 0;
	FireModes = {
		ChangeFiremode = false;
		Semi = false;
		Burst = false;
		Auto = false;
	};
	LimbDamage = {0, 0};
	TorsoDamage = {0, 0};
	HeadDamage = {0, 0};
	DamageFallOf = 0;
	MinDamage = 0;
	IgnoreProtection = false;
	BulletPenetration = 0;
	adsTime = 1;
	CrossHair = false;
	CenterDot = true;
	CrosshairOffset = 0;
	CanBreachDoor = false;
	SightAtt = "";
	BarrelAtt = "";
	UnderBarrelAtt = "";
	OtherAtt = "";
	camRecoil = {
		camRecoilUp = {0, 0};
		camRecoilTilt = {0, 0};
		camRecoilLeft = {0, 0};
		camRecoilRight = {0, 0};
	};
	gunRecoil = {
		gunRecoilUp = {0, 0};
		gunRecoilTilt = {0, 0};
		gunRecoilLeft = {0, 0};
		gunRecoilRight = {0, 0};
	};
	AimRecoilReduction = 1;
	AimSpreadReduction = 1;
	MinRecoilPower = 1;
	MaxRecoilPower = 1;
	RecoilPowerStepAmount = 1;
	MinSpread = 0;
	MaxSpread = 0;
	AimInaccuracyStepAmount = 0;
	AimInaccuracyDecrease = 0;
	WalkMult = 0;
	EnableZeroing = false;
	MaxZero = 0;
	ZeroIncrement = 0;
	CurrentZero = 0;
	BulletType = "";
	MuzzleVelocity = 0;
	BulletDrop = 0;
	Tracer = false;
	BulletFlare = false;
	TracerColor = Color3.fromRGB(255, 255, 255);
	RandomTracer = {
		Enabled = false;
		Chance = 25;
	};
	TracerEveryXShots = 0;
	RainbowMode = false;
	InfraRed = false;
	CanBreak = false;
	Jammed = false;
}