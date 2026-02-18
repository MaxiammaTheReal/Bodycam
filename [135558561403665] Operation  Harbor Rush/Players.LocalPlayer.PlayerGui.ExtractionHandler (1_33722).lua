-- Name: ExtractionHandler
-- Path: game:GetService("Players").LocalPlayer.PlayerGui.ExtractionHandler
-- Class: LocalScript
-- Exploit: Xeno 
-- Time to decompile: 0.5509707000001072 seconds

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 07:17:29
-- Luau version 6, Types version 3
-- Time taken: 0.000904 seconds

game:GetService("ReplicatedStorage"):FindFirstChild("Remotes"):FindFirstChild("Extraction"):FindFirstChild("ToggleInfo").OnClientEvent:Connect(function(arg1, arg2) -- Line 9
	workspace:FindFirstChild("Rescue"):FindFirstChild("Destination").Transparency = arg2
	workspace:FindFirstChild("Rescue"):FindFirstChild("DestinationPosition"):FindFirstChild("BringInfo").Enabled = arg1
end)