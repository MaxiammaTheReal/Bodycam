-- Name: WindShakeInit
-- Path: game:GetService("Players").LocalPlayer.PlayerScripts.ClientPlayer.Player.Wind.WindShakeInit
-- Class: LocalScript
-- Exploit: Xeno 
-- Time to decompile: 0.6633454999991955 seconds

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 07:17:05
-- Luau version 6, Types version 3
-- Time taken: 0.000411 seconds

local WindShake = require(script.WindShake)
WindShake:Init({
	MatchWorkspaceWind = false;
})
WindShake.RenderDistance = 200
WindShake.MaxRefreshRate = (1/60)