-- Name: bob
-- Path: game:GetService("StarterPlayer").StarterCharacterScripts.bob
-- Class: LocalScript
-- Exploit: Xeno 
-- Time to decompile: 0.2618341999987024 seconds

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 07:16:56
-- Luau version 6, Types version 3
-- Time taken: 0.001788 seconds

local var1_upvw = false
game.Players.LocalPlayer.Character.Humanoid.Running:Connect(function(arg1) -- Line 4
	--[[ Upvalues[1]:
		[1]: var1_upvw (read and write)
	]]
	if 2 <= arg1 then
		var1_upvw = true
	else
		var1_upvw = false
	end
end)
local zero_cframe_upvw = CFrame.new()
game:GetService("RunService"):BindToRenderStep("camera woosh", 1999, function() -- Line 12
	--[[ Upvalues[2]:
		[1]: var1_upvw (read and write)
		[2]: zero_cframe_upvw (read and write)
	]]
	if var1_upvw then
		local var5 = game.Players.LocalPlayer.Character.Humanoid.WalkSpeed / 2
		zero_cframe_upvw = zero_cframe_upvw:lerp(CFrame.new(math.sin((tick()) * (2 * var5)) * 0.03, -math.cos((tick()) * (4 * var5)) * 0.01, 0) * CFrame.Angles(0, 0, math.sin((tick()) * (2 * var5)) * -0.01), 0.2)
	else
		zero_cframe_upvw = zero_cframe_upvw:lerp(CFrame.new(), 0.05)
	end
	workspace.CurrentCamera.CFrame = workspace.CurrentCamera.CFrame * zero_cframe_upvw
end)