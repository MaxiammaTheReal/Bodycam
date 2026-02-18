-- Name: AUTO_CONFIG
-- Path: game:GetService("StarterPlayer").StarterCharacterScripts.NVG.Giver.AUTO_CONFIG
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.5628610000003391 seconds

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 07:17:55
-- Luau version 6, Types version 3
-- Time taken: 0.010667 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
local TweenService = game:GetService("TweenService")
local twistjoint = script.Parent:WaitForChild("twistjoint")
local TweenInfo_new_result1 = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)
local Lens = script.Parent:WaitForChild("Lens", 0.5)
local Parent = script.Parent.Parent
local Parent_2 = Parent.Parent
local var7
if Parent_2.Humanoid.RigType ~= Enum.HumanoidRigType.R15 then
	Parent = false
else
	Parent = true
end
if Parent then
	var7 = "LeftUpperArm"
else
	var7 = "Torso"
end
if Parent then
	var7 = "LeftShoulder"
else
	var7 = "Left Shoulder"
end
local var8 = Parent_2[var7][var7]
local function INLINED() -- Internal function, doesn't exist in bytecode
	var7 = CFrame.new(0.371513367, 0.805222511, 0.0908584595)
	return var7 * CFrame.Angles(-2.243994752564138, 0, 0.5235987755982988)
end
if not Parent or not INLINED() then
	var7 = 0.371513367
	local cframe_2 = CFrame.new(var7, 0.805222511, 0.0908584595, 0.2390735, -0.489400715, -0.838648081, 0.368107677, -0.753542781, 0.544673681, -0.898521364, -0.438929617, 3.92756156e-08)
end
local function INLINED_2() -- Internal function, doesn't exist in bytecode
	var7 = CFrame.new(0.268680573, 0.646888733, 0.0362091064) * CFrame.Angles(-1.9634954084936207, 0, 0.5817764173314431)
	return var7
end
if not Parent or not INLINED_2() then
	var7 = CFrame.new(0.268680573, 0.646888733, 0.0362091064, 0.400977284, -0.368627459, -0.838648081, 0.617395043, -0.567585051, 0.544673681, -0.67678684, -0.736178458, 2.95832923e-08)
end
if not Parent or not CFrame.new(0.500000358, 0.394326687, 8.94069672e-08, 1, 0, 0, 0, 1, 0, 0, 0, 1) then
	local cframe = CFrame.new(0.5, 0.5, 0, -4.37113883e-08, 0, -1, 0, 0.99999994, 0, 1, 0, -4.37113883e-08)
end
return {
	dark = {
		src = {460199742, 460199916, 460200108, 460200265, 460200379, 460200555};
	};
	light = {
		src = {460107714, 460107818, 460107958, 460108053, 460108179, 460108373};
	};
	onanim = {TweenService:Create(var8, TweenInfo_new_result1, {
		C1 = cframe_2;
	}), 0.5, TweenService:Create(twistjoint, TweenInfo_new_result1, {
		C0 = script.Parent:WaitForChild("downvalue").Value;
	}), TweenService:Create(Lens, TweenInfo_new_result1, {
		Transparency = 0;
		Reflectance = 0;
		Color = script.Parent.NVG_Settings.LensColor.Value;
	}), TweenService:Create(var8, TweenInfo_new_result1, {
		C1 = var7;
	}), 0.5, TweenService:Create(var8, TweenInfo_new_result1, {
		C1 = cframe;
	})};
	offanim = {TweenService:Create(var8, TweenInfo_new_result1, {
		C1 = var7;
	}), 0.5, TweenService:Create(twistjoint, TweenInfo_new_result1, {
		C0 = script.Parent:WaitForChild("upvalue").Value;
	}), TweenService:Create(Lens, TweenInfo_new_result1, {
		Transparency = 0.3;
		Reflectance = 0.005;
		Color = Lens.Color;
	}), TweenService:Create(var8, TweenInfo_new_result1, {
		C1 = cframe_2;
	}), 0.5, TweenService:Create(var8, TweenInfo_new_result1, {
		C1 = cframe;
	})};
	tweeninfo = TweenInfo_new_result1;
	lens = Lens;
}