-- Name: ACS_Settings
-- Path: game:GetService("ReplicatedStorage").SWATToolsafterLoad.M870.ACS_Settings
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.5500443999990239 seconds

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 07:19:04
-- Luau version 6, Types version 3
-- Time taken: 0.002444 seconds

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
	Ammo = 7;
	StoredAmmo = 21;
	AmmoInGun = module.Ammo;
	MaxStoredAmmo = 49;
	CanCheckMag = false;
	MagCount = false;
	ShellInsert = true;
	ShootRate = 800;
	Bullets = 8;
	BurstShot = 3;
	ShootType = 4;
	FireModes = {
		ChangeFiremode = false;
		Semi = false;
		Burst = false;
		Auto = false;
	};
	LimbDamage = {25, 25};
	TorsoDamage = {45, 45};
	HeadDamage = {100, 100};
	DamageFallOf = 2;
	MinDamage = 5;
	IgnoreProtection = false;
	BulletPenetration = 50;
	adsTime = 1;
	CrossHair = false;
	CenterDot = false;
	CrosshairOffset = 0;
	CanBreachDoor = true;
	SightAtt = "";
	BarrelAtt = "Flashlight";
	UnderBarrelAtt = "";
	OtherAtt = "Laser";
	camRecoil = {
		camRecoilUp = {70, 75};
		camRecoilTilt = {90, 100};
		camRecoilLeft = {40, 45};
		camRecoilRight = {40, 45};
	};
	gunRecoil = {
		gunRecoilUp = {150, 200};
		gunRecoilTilt = {50, 75};
		gunRecoilLeft = {100, 175};
		gunRecoilRight = {100, 175};
	};
	AimRecoilReduction = 1;
	AimSpreadReduction = 1;
	MinRecoilPower = 1;
	MaxRecoilPower = 1;
	RecoilPowerStepAmount = 1;
	MinSpread = 20;
	MaxSpread = 75;
	AimInaccuracyStepAmount = 2;
	AimInaccuracyDecrease = 1.5;
	WalkMult = 0;
	EnableZeroing = false;
	MaxZero = 500;
	ZeroIncrement = 50;
	CurrentZero = 0;
	BulletType = ".12 Gauge";
	MuzzleVelocity = 1500;
	BulletDrop = 0.25;
	Tracer = true;
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
return module