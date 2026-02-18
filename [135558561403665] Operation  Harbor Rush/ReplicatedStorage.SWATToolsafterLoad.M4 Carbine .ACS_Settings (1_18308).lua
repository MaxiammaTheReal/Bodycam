-- Name: ACS_Settings
-- Path: game:GetService("ReplicatedStorage").SWATToolsafterLoad['M4 Carbine '].ACS_Settings
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.2591408999996929 seconds

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 07:17:42
-- Luau version 6, Types version 3
-- Time taken: 0.003392 seconds

local TouchEnabled = game:GetService("UserInputService").TouchEnabled
local module = {
	SlideEx = CFrame.new(0, 0, -0.4);
	SlideLock = true;
	canAim = true;
	Zoom = 50;
	Zoom2 = 60;
	gunName = script.Parent.Name;
	Type = "Gun";
	EnableHUD = true;
	IncludeChamberedBullet = true;
	Ammo = 30;
	StoredAmmo = 90;
	AmmoInGun = module.Ammo;
	MaxStoredAmmo = 90;
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
	LimbDamage = {25, 30};
	TorsoDamage = {40, 52};
	HeadDamage = {100, 150};
	DamageFallOf = 1;
	MinDamage = 5;
	IgnoreProtection = false;
	BulletPenetration = 72;
	adsTime = 0.7;
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
tbl_3.camRecoilUp = {12, 15}
local function INLINED_2() -- Internal function, doesn't exist in bytecode
	tbl[2] = 0
	tbl[1] = 0
	local tbl = {}
	return tbl
end
if not TouchEnabled or not INLINED_2() then
end
tbl_3.camRecoilTilt = {10, 15}
local function INLINED_3() -- Internal function, doesn't exist in bytecode
	tbl_5[2] = 0
	tbl_5[1] = 0
	local tbl_5 = {}
	return tbl_5
end
if not TouchEnabled or not INLINED_3() then
end
tbl_3.camRecoilLeft = {7, 10}
local function INLINED_4() -- Internal function, doesn't exist in bytecode
	tbl_4[2] = 0
	tbl_4[1] = 0
	local tbl_4 = {}
	return tbl_4
end
if not TouchEnabled or not INLINED_4() then
end
tbl_3.camRecoilRight = {6, 9}
module.camRecoil = tbl_3
module.gunRecoil = {
	gunRecoilUp = {20, 25};
	gunRecoilTilt = {10, 20};
	gunRecoilLeft = {15, 20};
	gunRecoilRight = {15, 20};
}
module.AimRecoilReduction = 4
module.AimSpreadReduction = 1
module.MinRecoilPower = 0.5
module.MaxRecoilPower = 1.5
module.RecoilPowerStepAmount = 0.1
module.MinSpread = 0.75
module.MaxSpread = 100
module.AimInaccuracyStepAmount = 0.75
module.AimInaccuracyDecrease = 0.25
module.WalkMult = 0
module.EnableZeroing = false
module.MaxZero = 500
module.ZeroIncrement = 50
module.CurrentZero = 0
module.BulletType = "5.56x45mm"
module.MuzzleVelocity = 1500
module.BulletDrop = 0.25
module.Tracer = false
module.BulletFlare = false
module.TracerColor = Color3.fromRGB(255, 255, 255)
module.RandomTracer = {
	Enabled = false;
	Chance = 25;
}
module.TracerEveryXShots = 3
module.RainbowMode = false
module.InfraRed = false
module.CanBreak = true
module.Jammed = false
return module