-- Name: Utilities
-- Path: game:GetService("ReplicatedStorage").ACS_Engine.Modules.Utilities
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.5497322999999597 seconds

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 07:18:43
-- Luau version 6, Types version 3
-- Time taken: 0.002523 seconds

return {
	Weld = function(arg1, arg2, arg3, arg4) -- Line 3
		local Motor6D = Instance.new("Motor6D", arg1)
		Motor6D.Part0 = arg1
		Motor6D.Part1 = arg2
		Motor6D.Name = arg2.Name
		local var4 = arg3
		if not var4 then
			var4 = arg1.CFrame:inverse() * arg2.CFrame
		end
		Motor6D.C0 = var4
		var4 = arg4
		local var5 = var4
		if not var5 then
			var5 = CFrame.new()
		end
		Motor6D.C1 = var5
		return Motor6D
	end;
	WeldComplex = function(arg1, arg2, arg3) -- Line 13
		local Motor6D_2 = Instance.new("Motor6D")
		Motor6D_2.Name = arg3
		Motor6D_2.Part0 = arg1
		Motor6D_2.Part1 = arg2
		local cframe = CFrame.new(arg1.Position)
		Motor6D_2.C0 = arg1.CFrame:inverse() * cframe
		Motor6D_2.C1 = arg2.CFrame:inverse() * cframe
		Motor6D_2.Parent = arg1
		return Motor6D_2
	end;
	CheckForHumanoid = function(arg1) -- Line 27
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [32] 24. Error Block 7 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [32] 24. Error Block 7 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [48] 34. Error Block 9 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [48] 34. Error Block 9 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [49] 35. Error Block 10 start (CF ANALYSIS FAILED)
		do
			return false, nil
		end
		-- KONSTANTERROR: [49] 35. Error Block 10 end (CF ANALYSIS FAILED)
	end;
}