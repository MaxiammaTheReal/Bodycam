-- Name: ACS_Settings
-- Path: game:GetService("Teams").Suspects.USP.ACS_Settings
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.5425547999984701 seconds

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 07:19:15
-- Luau version 6, Types version 3
-- Time taken: 0.002462 seconds

local module = {
	SlideEx = CFrame.new(0, 0, -0.3);
	SlideLock = true;
	canAim = true;
	Zoom = 70;
	Zoom2 = 70;
	gunName = script.Parent.Name;
	Type = "Gun";
	EnableHUD = true;
	IncludeChamberedBullet = true;
	Ammo = 12;
	StoredAmmo = 60;
	AmmoInGun = module.Ammo;
	MaxStoredAmmo = 84;
	CanCheckMag = true;
	MagCount = true;
	ShellInsert = false;
	ShootRate = 700;
	Bullets = 1;
	BurstShot = 3;
	ShootType = 1;
	FireModes = {
		ChangeFiremode = false;
		Semi = false;
		Burst = false;
		Auto = false;
	};
	LimbDamage = {22, 26};
	TorsoDamage = {34, 38};
	HeadDamage = {120, 120};
	DamageFallOf = 2;
	MinDamage = 5;
	IgnoreProtection = false;
	BulletPenetration = 50.5;
	CrossHair = false;
	CenterDot = false;
	CrosshairOffset = 0;
	CanBreachDoor = false;
	SightAtt = "";
	BarrelAtt = "";
	UnderBarrelAtt = "";
	OtherAtt = "";
	camRecoil = {
		camRecoilUp = {5, 8};
		camRecoilTilt = {10, 15};
		camRecoilLeft = {5, 8};
		camRecoilRight = {5, 8};
	};
	gunRecoil = {
		gunRecoilUp = {150, 150};
		gunRecoilTilt = {25, 50};
		gunRecoilLeft = {10, 20};
		gunRecoilRight = {10, 20};
	};
	AimRecoilReduction = 1;
	AimSpreadReduction = 1;
	MinRecoilPower = 1;
	MaxRecoilPower = 1.5;
	RecoilPowerStepAmount = 0.1;
	MinSpread = 5;
	MaxSpread = 50;
	AimInaccuracyStepAmount = 5.75;
	AimInaccuracyDecrease = 1;
	WalkMult = 0;
	EnableZeroing = false;
	MaxZero = 500;
	ZeroIncrement = 50;
	CurrentZero = 0;
	BulletType = ".45 ACP";
	MuzzleVelocity = 1000;
	BulletDrop = 0.25;
	Tracer = false;
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