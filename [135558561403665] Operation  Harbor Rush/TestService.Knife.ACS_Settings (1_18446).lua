-- Name: ACS_Settings
-- Path: game:GetService("TestService").Knife.ACS_Settings
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.5621739000016532 seconds

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 07:19:17
-- Luau version 6, Types version 3
-- Time taken: 0.002621 seconds

local module = {
	SlideEx = CFrame.new(0, 0, 0);
	SlideLock = false;
	canAim = false;
	Zoom = 70;
	Zoom2 = 70;
	gunName = script.Parent.Name;
	Type = "Melee";
	EnableHUD = false;
	BladeRange = 7;
	IncludeChamberedBullet = false;
	Ammo = 0;
	StoredAmmo = 0;
	AmmoInGun = module.Ammo;
	MaxStoredAmmo = 0;
	CanCheckMag = false;
	MagCount = false;
	ShellInsert = false;
	ShootRate = 0;
	Bullets = 0;
	ShootType = 1;
	FireModes = {
		ChangeFiremode = false;
		Semi = false;
		Burst = false;
		Auto = false;
	};
	LimbDamage = {32, 32};
	TorsoDamage = {32, 32};
	HeadDamage = {75, 75};
	DamageFallOf = 0;
	MinDamage = 0;
	IgnoreProtection = true;
	BulletPenetration = 0;
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
	MinRecoilPower = 0;
	MaxRecoilPower = 0;
	RecoilPowerStepAmount = 0;
	MinSpread = 0;
	MaxSpread = 0;
	AimInaccuracyStepAmount = 0;
	AimInaccuracyDecrease = 0;
	WalkMult = 0;
	EnableZeroing = false;
	MaxZero = 500;
	ZeroIncrement = 50;
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
return module