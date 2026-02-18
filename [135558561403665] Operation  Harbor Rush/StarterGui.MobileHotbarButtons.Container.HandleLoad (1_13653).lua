-- Name: HandleLoad
-- Path: game:GetService("StarterGui").MobileHotbarButtons.Container.HandleLoad
-- Class: LocalScript
-- Exploit: Xeno 
-- Time to decompile: 0.2625145000001794 seconds

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 07:17:32
-- Luau version 6, Types version 3
-- Time taken: 0.000733 seconds

if not game:GetService("Players").LocalPlayer.Character then
end
if game:GetService("UserInputService").TouchEnabled then
	script.Parent.Parent.Enabled = true
end