-- Name: ACS_Settings
-- Path: game:GetService("Teams").Suspects['AK-74U'].ACS_Settings
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.733604999999443 seconds

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 07:19:13
-- Luau version 6, Types version 3
-- Time taken: 0.002489 seconds

local module = {
	SlideEx = CFrame.new(0, 0, -0.4);
	SlideLock = true;
	canAim = true;
	Zoom = 60;
	Zoom2 = 60;
	gunName = script.Parent.Name;
	Type = "Gun";
	EnableHUD = true;
	IncludeChamberedBullet = true;
	Ammo = 30;
	StoredAmmo = 90;
	AmmoInGun = module.Ammo;
	MaxStoredAmmo = 210;
	CanCheckMag = true;
	MagCount = true;
	ShellInsert = false;
	ShootRate = 900;
	Bullets = 1;
	BurstShot = 3;
	ShootType = 3;
	FireModes = {
		ChangeFiremode = true;
		Semi = true;
		Burst = false;
		Auto = true;
	};
	LimbDamage = {55, 60};
	TorsoDamage = {77, 82};
	HeadDamage = {150, 150};
	DamageFallOf = 1;
	MinDamage = 5;
	IgnoreProtection = false;
	BulletPenetration = 72;
	adsTime = 1;
	CrossHair = false;
	CenterDot = false;
	CrosshairOffset = 0;
	CanBreachDoor = false;
	SightAtt = "";
	BarrelAtt = "";
	UnderBarrelAtt = "";
	OtherAtt = "";
	camRecoil = {
		camRecoilUp = {40, 70};
		camRecoilTilt = {2, 7};
		camRecoilLeft = {3, 9};
		camRecoilRight = {6, 9};
	};
	gunRecoil = {
		gunRecoilUp = {20, 25};
		gunRecoilTilt = {10, 20};
		gunRecoilLeft = {15, 20};
		gunRecoilRight = {15, 20};
	};
	AimRecoilReduction = 4;
	AimSpreadReduction = 1;
	MinRecoilPower = 0.5;
	MaxRecoilPower = 1.5;
	RecoilPowerStepAmount = 0.1;
	MinSpread = 0.75;
	MaxSpread = 100;
	AimInaccuracyStepAmount = 0.75;
	AimInaccuracyDecrease = 0.25;
	WalkMult = 0;
	EnableZeroing = true;
	MaxZero = 500;
	ZeroIncrement = 50;
	CurrentZero = 0;
	BulletType = "5.45x39mm";
	MuzzleVelocity = 1500;
	BulletDrop = 0.25;
	Tracer = true;
	BulletFlare = false;
	TracerColor = Color3.fromRGB(255, 255, 255);
	RandomTracer = {
		Enabled = false;
		Chance = 25;
	};
	TracerEveryXShots = 3;
	RainbowMode = false;
	InfraRed = false;
	CanBreak = true;
	Jammed = false;
}
return module