-- Name: LocalScript
-- Path: game:GetService("StarterGui").Health.LocalScript
-- Class: LocalScript
-- Exploit: Xeno 
-- Time to decompile: 0.2621934999988298 seconds

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 07:17:24
-- Luau version 6, Types version 3
-- Time taken: 0.004044 seconds

local Body_upvr = script.Parent.Body
Body_upvr.Head.HP.Changed:Connect(function() -- Line 3
	--[[ Upvalues[1]:
		[1]: Body_upvr (readonly)
	]]
	script.Parent.Body.Visible = true
	if Body_upvr.Head.HP.Value <= 0 then
		Body_upvr.Head.ImageColor3 = Color3.new(1, 0, 0)
	else
		if Body_upvr.Head.HP.Value == 1 then
			Body_upvr.Head.ImageColor3 = Color3.new(1, 1, 0)
			return
		end
		Body_upvr.Head.ImageColor3 = Color3.new(1, 0, 0)
	end
end)
Body_upvr.Torso.HP.Changed:Connect(function() -- Line 13
	--[[ Upvalues[1]:
		[1]: Body_upvr (readonly)
	]]
	script.Parent.Body.Visible = true
	if Body_upvr.Torso.HP.Value <= 0 then
		Body_upvr.Torso.ImageColor3 = Color3.new(1, 0, 0)
	else
		if Body_upvr.Torso.HP.Value == 1 then
			Body_upvr.Torso.ImageColor3 = Color3.new(1, 1, 0)
			return
		end
		if Body_upvr.Torso.HP.Value == 2 then
			Body_upvr.Torso.ImageColor3 = Color3.new(0.996078, 1, 0.72549)
			return
		end
		Body_upvr.Torso.ImageColor3 = Color3.new(1, 1, 1)
	end
end)
Body_upvr.LeftArm.HP.Changed:Connect(function() -- Line 26
	--[[ Upvalues[1]:
		[1]: Body_upvr (readonly)
	]]
	script.Parent.Body.Visible = true
	if Body_upvr.LeftArm.HP.Value <= 0 then
		Body_upvr.LeftArm.ImageColor3 = Color3.new(1, 0, 0)
	else
		if Body_upvr.LeftArm.HP.Value == 1 then
			Body_upvr.LeftArm.ImageColor3 = Color3.new(1, 1, 0)
			return
		end
		Body_upvr.LeftArm.ImageColor3 = Color3.new(1, 1, 1)
	end
end)
Body_upvr.RightArm.HP.Changed:Connect(function() -- Line 37
	--[[ Upvalues[1]:
		[1]: Body_upvr (readonly)
	]]
	script.Parent.Body.Visible = true
	if Body_upvr.RightArm.HP.Value <= 0 then
		Body_upvr.RightArm.ImageColor3 = Color3.new(1, 0, 0)
	else
		if Body_upvr.RightArm.HP.Value == 1 then
			Body_upvr.RightArm.ImageColor3 = Color3.new(1, 1, 0)
			return
		end
		Body_upvr.RightArm.ImageColor3 = Color3.new(1, 1, 1)
	end
end)
Body_upvr.LeftLeg.HP.Changed:Connect(function() -- Line 48
	--[[ Upvalues[1]:
		[1]: Body_upvr (readonly)
	]]
	script.Parent.Body.Visible = true
	if Body_upvr.LeftLeg.HP.Value <= 0 then
		Body_upvr.LeftLeg.ImageColor3 = Color3.new(1, 0, 0)
	else
		if Body_upvr.LeftLeg.HP.Value == 1 then
			Body_upvr.LeftLeg.ImageColor3 = Color3.new(1, 1, 0)
			return
		end
		Body_upvr.LeftLeg.ImageColor3 = Color3.new(1, 1, 1)
	end
end)
Body_upvr.RightLeg.HP.Changed:Connect(function() -- Line 59
	--[[ Upvalues[1]:
		[1]: Body_upvr (readonly)
	]]
	script.Parent.Body.Visible = true
	if Body_upvr.RightLeg.HP.Value <= 0 then
		Body_upvr.RightLeg.ImageColor3 = Color3.new(1, 0, 0)
	else
		if Body_upvr.RightLeg.HP.Value == 1 then
			Body_upvr.RightLeg.ImageColor3 = Color3.new(1, 1, 0)
			return
		end
		Body_upvr.RightLeg.ImageColor3 = Color3.new(1, 1, 1)
	end
end)