-- Name: ACS_Settings
-- Path: game:GetService("TestService").MP5.ACS_Settings
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.5536996000009822 seconds

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 07:19:25
-- Luau version 6, Types version 3
-- Time taken: 0.004252 seconds

local module = {
	SlideEx = CFrame.new(0, 0, -0.3);
	SlideLock = false;
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
	ShootRate = 800;
	Bullets = 1;
	BurstShot = 3;
	ShootType = 3;
	FireModes = {
		ChangeFiremode = true;
		Semi = true;
		Burst = false;
		Auto = true;
	};
	LimbDamage = {18, 22};
	TorsoDamage = {33, 36};
	HeadDamage = {110, 110};
	DamageFallOf = 2;
	MinDamage = 5;
	IgnoreProtection = false;
	BulletPenetration = 62.5;
	CrossHair = false;
	CenterDot = false;
	CrosshairOffset = 0;
	CanBreachDoor = false;
	SightAtt = "";
	BarrelAtt = "";
	UnderBarrelAtt = "";
	OtherAtt = "";
	camRecoil = {
		camRecoilUp = {8, 12};
		camRecoilTilt = {10, 15};
		camRecoilLeft = {4, 6};
		camRecoilRight = {4, 6};
	};
	gunRecoil = {
		gunRecoilUp = {15, 20};
		gunRecoilTilt = {10, 15};
		gunRecoilLeft = {10, 15};
		gunRecoilRight = {10, 15};
	};
	AimRecoilReduction = 4;
	AimSpreadReduction = 1;
	MinRecoilPower = 0.25;
	MaxRecoilPower = 1.5;
	RecoilPowerStepAmount = 0.05;
	MinSpread = 2.5;
	MaxSpread = 100;
	AimInaccuracyStepAmount = 1;
	AimInaccuracyDecrease = 0.25;
	WalkMult = 0;
	EnableZeroing = true;
	MaxZero = 200;
	ZeroIncrement = 50;
	CurrentZero = 0;
	BulletType = "9x19mm";
	MuzzleVelocity = 1250;
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