-- Name: Status
-- Path: game:GetService("Workspace").GAME.Suspects.Suspect_Regular.Scripts.Modules.Status
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.2623327999990579 seconds

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 07:15:32
-- Luau version 6, Types version 3
-- Time taken: 0.001049 seconds

return {
	reloading = false;
	weaponAimed = false;
	weaponCool = true;
	m4Equipped = false;
	knifeEquipped = false;
	grenadeCool = true;
	currentTarget = false;
	mood = "Idle";
	currentFace = "";
	gunPointedAt = nil;
	tookDamage = false;
	potentialTargets = {};
	activeAllies = {};
	mag = 30;
	set = function(arg1, arg2, arg3) -- Line 18, Named "set"
		arg1[arg2] = arg3
	end;
	get = function(arg1, arg2) -- Line 22, Named "get"
		return arg1[arg2]
	end;
}