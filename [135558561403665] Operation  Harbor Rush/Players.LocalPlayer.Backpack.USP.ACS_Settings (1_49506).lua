-- Name: ACS_Settings
-- Path: game:GetService("Players").LocalPlayer.Backpack.USP.ACS_Settings
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.5590922999999748 seconds

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 07:17:37
-- Luau version 6, Types version 3
-- Time taken: 0.003358 seconds

local TouchEnabled = game:GetService("UserInputService").TouchEnabled
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
tbl_3.camRecoilTilt = {10, 15}
local function INLINED_3() -- Internal function, doesn't exist in bytecode
	tbl_5[2] = 0
	tbl_5[1] = 0
	local tbl_5 = {}
	return tbl_5
end
if not TouchEnabled or not INLINED_3() then
end
tbl_3.camRecoilLeft = {5, 8}
local function INLINED_4() -- Internal function, doesn't exist in bytecode
	tbl_4[2] = 0
	tbl_4[1] = 0
	local tbl_4 = {}
	return tbl_4
end
if not TouchEnabled or not INLINED_4() then
end
tbl_3.camRecoilRight = {5, 8}
module.camRecoil = tbl_3
module.gunRecoil = {
	gunRecoilUp = {150, 150};
	gunRecoilTilt = {25, 50};
	gunRecoilLeft = {10, 20};
	gunRecoilRight = {10, 20};
}
module.AimRecoilReduction = 1
module.AimSpreadReduction = 1
module.MinRecoilPower = 1
module.MaxRecoilPower = 1.5
module.RecoilPowerStepAmount = 0.1
module.MinSpread = 5
module.MaxSpread = 50
module.AimInaccuracyStepAmount = 5.75
module.AimInaccuracyDecrease = 1
module.WalkMult = 0
module.EnableZeroing = false
module.MaxZero = 500
module.ZeroIncrement = 50
module.CurrentZero = 0
module.BulletType = ".45 ACP"
module.MuzzleVelocity = 1000
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