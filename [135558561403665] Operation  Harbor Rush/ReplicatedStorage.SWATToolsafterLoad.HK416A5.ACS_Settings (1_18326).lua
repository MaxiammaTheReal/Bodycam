-- Name: ACS_Settings
-- Path: game:GetService("ReplicatedStorage").SWATToolsafterLoad.HK416A5.ACS_Settings
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.5541878000003635 seconds

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 07:19:11
-- Luau version 6, Types version 3
-- Time taken: 0.003763 seconds

local TouchEnabled = game:GetService("UserInputService").TouchEnabled
local module = {
	SlideEx = CFrame.new(0, 0, -0.4);
	SlideLock = true;
	canAim = true;
	Zoom = 91;
	Zoom = 90;
	gunName = script.Parent.Name;
	Type = "Gun";
	EnableHUD = true;
	IncludeChamberedBullet = true;
	Ammo = 30;
	StoredAmmo = 180;
	AmmoInGun = module.Ammo;
	MaxStoredAmmo = 180;
	CanCheckMag = true;
	MagCount = true;
	ShellInsert = false;
	ShootRate = 900;
	Bullets = 1;
	BurstShot = 2;
	ShootType = 3;
	FireModes = {
		ChangeFiremode = true;
		Semi = true;
		Burst = false;
		Auto = true;
	};
	LimbDamage = {35, 40};
	TorsoDamage = {57, 62};
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
}
local tbl_3 = {}
local function INLINED() -- Internal function, doesn't exist in bytecode
	tbl_2[2] = 0
	tbl_2[1] = 0
	local tbl_2 = {}
	return tbl_2
end
if not TouchEnabled or not INLINED() then
end
tbl_3.camRecoilUp = {5, 8}
local function INLINED_2() -- Internal function, doesn't exist in bytecode
	tbl[2] = 0
	tbl[1] = 0
	local tbl = {}
	return tbl
end
if not TouchEnabled or not INLINED_2() then
end
tbl_3.camRecoilTilt = {600, 610}
tbl_3.camRecoilLeft = {0, 0}
tbl_3.camRecoilRight = {0, 0}
module.camRecoil = tbl_3
module.gunRecoil = {
	gunRecoilUp = {150, 165};
	gunRecoilTilt = {80, 100};
	gunRecoilLeft = {0, 0};
	gunRecoilRight = {0, 0};
}
module.AimRecoilReduction = 2
module.AimSpreadReduction = 1
module.MinRecoilPower = 0.3
module.MaxRecoilPower = 1
module.RecoilPowerStepAmount = 0.1
module.MinSpread = 0.75
module.MaxSpread = 0
module.AimInaccuracyStepAmount = 0.75
module.AimInaccuracyDecrease = 0.25
module.WalkMult = 0
module.EnableZeroing = true
module.MaxZero = 500
module.ZeroIncrement = 50
module.CurrentZero = 0
module.BulletType = "5.56x45mm"
module.MuzzleVelocity = 1500
module.BulletDrop = 0.25
module.Tracer = true
module.BulletFlare = false
module.TracerColor = Color3.fromRGB(255, 255, 255)
module.RandomTracer = {
	Enabled = false;
	Chance = 25;
}
module.TracerEveryXShots = 3
module.RainbowMode = false
module.FlashChance = 9
module.CanBreak = false
module.Jammed = false
return module