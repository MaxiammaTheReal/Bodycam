-- Name: TeleportBack
-- Path: game:GetService("StarterGui").GameOver.Container.PASSED.BackToHub.TeleportBack
-- Class: LocalScript
-- Exploit: Xeno 
-- Time to decompile: 0.2584544999990612 seconds

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 07:17:21
-- Luau version 6, Types version 3
-- Time taken: 0.000831 seconds

local var2_upvw = false
local TeleportBackToLobby_upvr = game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("TeleportBackToLobby")
script.Parent.MouseButton1Click:Connect(function() -- Line 8
	--[[ Upvalues[2]:
		[1]: var2_upvw (read and write)
		[2]: TeleportBackToLobby_upvr (readonly)
	]]
	if var2_upvw then
	else
		var2_upvw = true
		TeleportBackToLobby_upvr:FireServer()
	end
end)