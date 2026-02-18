-- Name: HandleIntro
-- Path: game:GetService("ReplicatedFirst").HandleIntro
-- Class: LocalScript
-- Exploit: Xeno 
-- Time to decompile: 0.738478600000235 seconds

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 07:17:43
-- Luau version 6, Types version 3
-- Time taken: 0.000429 seconds

game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.All, false)
script:WaitForChild("Intro").Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")