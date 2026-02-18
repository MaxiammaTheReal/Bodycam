-- Name: RemoveMBJumpButton
-- Path: game:GetService("Players").LocalPlayer.PlayerGui.RemoveMBJumpButton
-- Class: LocalScript
-- Exploit: Xeno 
-- Time to decompile: 0.5666131999987556 seconds

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 07:17:18
-- Luau version 6, Types version 3
-- Time taken: 0.002136 seconds

local PlayerGui = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
if not game:GetService("UserInputService").TouchEnabled then
elseif PlayerGui then
	local TouchGui_3 = PlayerGui:WaitForChild("TouchGui")
	if TouchGui_3 then
		local TouchControlFrame_3 = TouchGui_3:WaitForChild("TouchControlFrame")
		if TouchControlFrame_3 then
			local JumpButton = TouchControlFrame_3:WaitForChild("JumpButton")
			if JumpButton then
				JumpButton:Destroy()
			end
		end
	end
end