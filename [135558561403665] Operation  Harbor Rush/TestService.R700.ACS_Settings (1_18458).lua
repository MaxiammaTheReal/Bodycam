-- Name: ACS_Settings
-- Path: game:GetService("TestService").R700.ACS_Settings
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.7480552999986685 seconds

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 07:19:27
-- Luau version 6, Types version 3
-- Time taken: 0.002442 seconds

local module = {
	SlideEx = CFrame.new(0, 0, -0.2);
	SlideLock = false;
	canAim = true;
	Zoom = 60;
	Zoom2 = 60;
	gunName = script.Parent.Name;
	Type = "Gun";
	EnableHUD = true;
	IncludeChamberedBullet = true;
	Ammo = 10;
	StoredAmmo = 30;
	AmmoInGun = module.Ammo;
	MaxStoredAmmo = 70;
	CanCheckMag = true;
	MagCount = true;
	ShellInsert = false;
	ShootRate = 800;
	Bullets = 1;
	BurstShot = 3;
	ShootType = 5;
	FireModes = {
		ChangeFiremode = false;
		Semi = false;
		Burst = false;
		Auto = false;
	};
	LimbDamage = {75, 90};
	TorsoDamage = {100, 125};
	HeadDamage = {300, 300};
	DamageFallOf = 0.5;
	MinDamage = 5;
	IgnoreProtection = false;
	BulletPenetration = 75;
	adsTime = 1;
	CrossHair = false;
	CenterDot = false;
	CrosshairOffset = 0;
	CanBreachDoor = true;
	SightAtt = "";
	BarrelAtt = "";
	UnderBarrelAtt = "";
	OtherAtt = "";
	camRecoil = {
		camRecoilUp = {35, 45};
		camRecoilTilt = {100, 100};
		camRecoilLeft = {40, 50};
		camRecoilRight = {40, 50};
	};
	gunRecoil = {
		gunRecoilUp = {150, 175};
		gunRecoilTilt = {25, 50};
		gunRecoilLeft = {75, 150};
		gunRecoilRight = {75, 150};
	};
	AimRecoilReduction = 1;
	AimSpreadReduction = 1;
	MinRecoilPower = 1;
	MaxRecoilPower = 1;
	RecoilPowerStepAmount = 1;
	MinSpread = 0.25;
	MaxSpread = 100;
	AimInaccuracyStepAmount = 5;
	AimInaccuracyDecrease = 1.5;
	WalkMult = 0;
	EnableZeroing = true;
	MaxZero = 1000;
	ZeroIncrement = 50;
	CurrentZero = 0;
	BulletType = ".338 Lapua Magnum";
	MuzzleVelocity = 2000;
	BulletDrop = 0.5;
	Tracer = true;
	BulletFlare = true;
	TracerColor = Color3.fromRGB(255, 255, 255);
	RandomTracer = {
		Enabled = false;
		Chance = 25;
	};
	TracerEveryXShots = 0;
	RainbowMode = false;
	InfraRed = false;
	CanBreak = true;
	Jammed = false;
}
return module