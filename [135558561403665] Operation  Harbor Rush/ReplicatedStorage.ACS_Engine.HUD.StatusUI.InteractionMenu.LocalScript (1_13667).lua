-- Name: LocalScript
-- Path: game:GetService("ReplicatedStorage").ACS_Engine.HUD.StatusUI.InteractionMenu.LocalScript
-- Class: LocalScript
-- Exploit: Xeno 
-- Time to decompile: 0.2611256999989564 seconds

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 07:17:12
-- Luau version 6, Types version 3
-- Time taken: 0.001051 seconds

for _, v_upvr in ipairs(script.Parent:GetChildren()) do
	if v_upvr.className ~= "LocalScript" and v_upvr.Name ~= "CirculoDeFundo" then
		v_upvr.Botao.MouseEnter:connect(function() -- Line 6
			--[[ Upvalues[1]:
				[1]: v_upvr (readonly)
			]]
			v_upvr.CirculoSelecao.Visible = true
		end)
		v_upvr.Botao.MouseLeave:connect(function() -- Line 10
			--[[ Upvalues[1]:
				[1]: v_upvr (readonly)
			]]
			v_upvr.CirculoSelecao.Visible = false
		end)
	end
end