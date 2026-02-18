-- Name: ArmorSetterManagerSingle
-- Path: game:GetService("ReplicatedStorage").ModuleScripts.ArmorSetterManagerSingle
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.5471010000001115 seconds

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 07:18:24
-- Luau version 6, Types version 3
-- Time taken: 0.002558 seconds

local module = {}
local TemplateCharacter_upvr = script.Presets.TemplateCharacter
function module.SetArmor(arg1, arg2) -- Line 13
	--[[ Upvalues[1]:
		[1]: TemplateCharacter_upvr (readonly)
	]]
	if not arg1 or not arg2 then
	else
		local Armor = arg1:FindFirstChild("Armor")
		if not Armor then
			local Model = Instance.new("Model", arg1)
			Model.Name = "Armor"
			Armor = Model
		end
		local ArmorType = arg2:FindFirstChild("ArmorType")
		if not ArmorType then return end
		arg2.Name = ArmorType.Value
		for _, v in arg2:GetDescendants() do
			if v:IsA("BasePart") then
				local Name = v.Parent.Name
				if not arg1:FindFirstChild(Name) then
					Name = "Head"
				end
				local Weld = Instance.new("Weld", arg1[Name])
				Weld.Part0 = arg1[Name]
				Weld.Part1 = v
				Weld.C0 = TemplateCharacter_upvr[Name].CFrame:ToObjectSpace(v.CFrame)
			end
		end
		arg2.Parent = Armor
	end
end
return module