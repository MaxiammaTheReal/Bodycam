-- Name: ClientToServerDecreaseReport
-- Path: game:GetService("StarterGui").ClientToServerDecreaseReport
-- Class: LocalScript
-- Exploit: Xeno 
-- Time to decompile: 0.2573322000007465 seconds

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 07:17:36
-- Luau version 6, Types version 3
-- Time taken: 0.000865 seconds

local DecreaseNeedToReport_upvr = game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("DecreaseNeedToReport")
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("ClientToServerDecreaseReport").OnClientEvent:Connect(function() -- Line 7
	--[[ Upvalues[1]:
		[1]: DecreaseNeedToReport_upvr (readonly)
	]]
	DecreaseNeedToReport_upvr:FireServer()
end)