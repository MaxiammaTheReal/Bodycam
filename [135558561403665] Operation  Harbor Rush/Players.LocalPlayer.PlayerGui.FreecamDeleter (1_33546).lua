-- Name: FreecamDeleter
-- Path: game:GetService("Players").LocalPlayer.PlayerGui.FreecamDeleter
-- Class: LocalScript
-- Exploit: Xeno 
-- Time to decompile: 0.5433604999998352 seconds

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 07:17:16
-- Luau version 6, Types version 3
-- Time taken: 0.000577 seconds

local PlayerGui = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui", 5)
if not PlayerGui then
else
	local Freecam = PlayerGui:FindFirstChild("Freecam")
	if not Freecam then return end
	Freecam:FindFirstChild("FreecamScript").Enabled = false
	Freecam:Destroy()
end