-- Name: CLS
-- Path: game:GetService("ReplicatedStorage").ACS_Engine.HUD.CombatLog.CLS
-- Class: LocalScript
-- Exploit: Xeno 
-- Time to decompile: 0.6841045000001031 seconds

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 07:18:48
-- Luau version 6, Types version 3
-- Time taken: 0.001437 seconds

local List_upvr = script.Parent.HUD.List
local Fx_upvr = script.Parent.Fx
function Refresh(arg1) -- Line 5
	--[[ Upvalues[2]:
		[1]: List_upvr (readonly)
		[2]: Fx_upvr (readonly)
	]]
	for _, v in pairs(List_upvr:GetChildren()) do
		if v:IsA("TextLabel") then
			v:Destroy()
		end
	end
	for _, v_2 in pairs(arg1) do
		local clone = Fx_upvr.LogText:clone()
		clone.Parent = List_upvr
		clone.Text = v_2
		clone.Visible = true
	end
end
function Close() -- Line 20
	script.Parent:Destroy()
end
script.Parent.Refresh.Event:Connect(Refresh)
script.Parent.HUD.Close.MouseButton1Click:Connect(Close)