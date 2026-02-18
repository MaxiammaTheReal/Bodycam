-- Name: FireDebugClient
-- Path: game:GetService("Players").LocalPlayer.PlayerGui.FireDebugClient
-- Class: LocalScript
-- Exploit: Xeno 
-- Time to decompile: 0.5548598999994283 seconds

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 07:17:15
-- Luau version 6, Types version 3
-- Time taken: 0.000672 seconds

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("FireDebugClient").OnClientEvent:Connect(function(arg1) -- Line 3
	print(arg1)
end)