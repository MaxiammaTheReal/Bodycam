-- Name: DeletePromptsForDeadPlayer
-- Path: game:GetService("StarterGui").DeletePromptsForDeadPlayer
-- Class: LocalScript
-- Exploit: Xeno 
-- Time to decompile: 0.2548973000011756 seconds

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 07:17:14
-- Luau version 6, Types version 3
-- Time taken: 0.000849 seconds

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("DeletePromptsForDeadPlayer").OnClientEvent:Connect(function() -- Line 3
	for _, v in pairs(workspace:GetDescendants()) do
		if v:IsA("ProximityPrompt") then
			v:Destroy()
		end
	end
end)