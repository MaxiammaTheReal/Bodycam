-- Name: DeleteOtherUIS
-- Path: game:GetService("Players").LocalPlayer.PlayerGui.DeleteOtherUIS
-- Class: LocalScript
-- Exploit: Xeno 
-- Time to decompile: 0.5750755999997637 seconds

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 07:17:13
-- Luau version 6, Types version 3
-- Time taken: 0.002154 seconds

local PlayerGui_upvr = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("DeleteOtherUIS").OnClientEvent:Connect(function() -- Line 7
	--[[ Upvalues[1]:
		[1]: PlayerGui_upvr (readonly)
	]]
	workspace:SetAttribute("GameOver", true)
	for _, v in ipairs(PlayerGui_upvr:FindFirstChild("StatusUI"):GetChildren()) do
		if v.Name ~= "Crosshair" and v.Name ~= "Efeitos" then
			v:Destroy()
		end
	end
	task.wait()
	for _, v_2 in ipairs(PlayerGui_upvr:FindFirstChild("StatusUI"):GetChildren()) do
		if v_2:IsA("Frame") and v_2.Name == "Efeitos" then
			v_2.BackgroundTransparency = 1
			for _, v_3 in ipairs(v_2:GetChildren()) do
				if v_3:IsA("ImageLabel") then
					v_3.ImageTransparency = 1
				end
			end
		end
	end
	if PlayerGui_upvr:FindFirstChild("Health") then
		PlayerGui_upvr.Health:Destroy()
	end
end)