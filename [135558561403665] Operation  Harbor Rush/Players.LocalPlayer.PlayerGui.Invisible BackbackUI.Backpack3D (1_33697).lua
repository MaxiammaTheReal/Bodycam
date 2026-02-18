-- Name: Backpack3D
-- Path: game:GetService("Players").LocalPlayer.PlayerGui['Invisible BackbackUI'].Backpack3D
-- Class: LocalScript
-- Exploit: Xeno 
-- Time to decompile: 0.5629798999998457 seconds

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 07:17:25
-- Luau version 6, Types version 3
-- Time taken: 0.013238 seconds

local Backpack_2 = script.Parent:WaitForChild("Backpack")
Backpack_2.DescendantAdded:wait()
local Module3D_upvr = require(script.Parent.Module3D)
local RunService_upvr_2 = game:GetService("RunService")
local CurrentCamera_upvr_2 = workspace.CurrentCamera
local function apply3D_upvr(arg1) -- Line 10, Named "apply3D"
	--[[ Upvalues[2]:
		[1]: CurrentCamera_upvr_2 (readonly)
		[2]: Module3D_upvr (readonly)
	]]
	local GearReference = arg1:findFirstChild("GearReference")
	if GearReference then
		local Value_3 = GearReference.Value
		if Value_3 then
			local Handle_upvr_3 = Value_3:findFirstChild("Handle")
			if Handle_upvr_3 then
				print(Handle_upvr_3)
				local var76
				if Handle_upvr_3:findFirstChild("Mesh") then
					var76 = 0
					for _, v in pairs(Value_3:GetChildren()) do
						if v:IsA("BasePart") and v.Transparency < 1 then
							var76 += 1
						end
					end
					if var76 <= 1 then
						wait()
						if arg1:findFirstChild("GearText") then
							arg1.GearText.Text = ""
						end
						if arg1:findFirstChild("GearImage") then
							arg1.GearImage.Image = ""
						end
						local clone_upvr_3 = Handle_upvr_3:clone()
						clone_upvr_3.Anchored = true
						clone_upvr_3.CanCollide = false
						clone_upvr_3.FormFactor = "Custom"
						clone_upvr_3.Size = Vector3.new()
						clone_upvr_3.Parent = CurrentCamera_upvr_2
						for _, v_2 in pairs(clone_upvr_3:GetChildren()) do
							if v_2.Name ~= "Mesh" and not v_2:IsA("Decal") then
								v_2:Destroy()
							end
						end
						local any_toEulerAnglesXYZ_result1_upvr_3, any_toEulerAnglesXYZ_result2_upvr_2, any_toEulerAnglesXYZ_result3_upvr = Value_3.Grip:toEulerAnglesXYZ()
						Spawn(function() -- Line 64
							--[[ Upvalues[2]:
								[1]: arg1 (readonly)
								[2]: clone_upvr_3 (readonly)
							]]
							arg1:WaitForChild("Kill").Changed:connect(function(arg1_4) -- Line 66
								--[[ Upvalues[1]:
									[1]: clone_upvr_3 (copied, readonly)
								]]
								if arg1_4 then
									clone_upvr_3.Parent = nil
								end
							end)
						end)
						return function() -- Line 49, Named "update"
							--[[ Upvalues[8]:
								[1]: Handle_upvr_3 (readonly)
								[2]: arg1 (readonly)
								[3]: Module3D_upvr (copied, readonly)
								[4]: clone_upvr_3 (readonly)
								[5]: any_toEulerAnglesXYZ_result1_upvr_3 (readonly)
								[6]: any_toEulerAnglesXYZ_result2_upvr_2 (readonly)
								[7]: any_toEulerAnglesXYZ_result3_upvr (readonly)
								[8]: CurrentCamera_upvr_2 (copied, readonly)
							]]
							if not Handle_upvr_3 then
								arg1.Kill.Value = true
							else
								clone_upvr_3.Mesh.Scale = (Handle_upvr_3.Mesh.Scale) * (1 / -Module3D_upvr:GetDepthForWidth(Handle_upvr_3.Size.magnitude * 1.5, arg1.AbsoluteSize.Y))
								local var87 = arg1.AbsolutePosition + arg1.AbsoluteSize / 2
								clone_upvr_3.CFrame = (CurrentCamera_upvr_2.CoordinateFrame) * (CFrame.new(Module3D_upvr:ScreenSpaceToWorld(var87.X, var87.Y, -0.625)) * CFrame.Angles(0, tick() % 6.28, 0) * CFrame.Angles(-any_toEulerAnglesXYZ_result1_upvr_3, -any_toEulerAnglesXYZ_result2_upvr_2, -any_toEulerAnglesXYZ_result3_upvr))
							end
						end
					end
				end
			end
		end
	end
end
local tbl_upvr = {}
for i_3_upvr = 0, 9 do
	local SOME = Backpack_2:WaitForChild("Slot"..i_3_upvr)
	if SOME:GetChildren()[1] then
		wait()
		local apply3D_result1_2 = apply3D_upvr(SOME:GetChildren()[1])
		if apply3D_result1_2 then
			if tbl_upvr[i_3_upvr] then
				tbl_upvr[i_3_upvr]:disconnect()
			end
			tbl_upvr[i_3_upvr] = RunService_upvr_2.RenderStepped:connect(apply3D_result1_2)
		end
	end
	SOME.ChildAdded:connect(function(arg1) -- Line 84, Named "add"
		--[[ Upvalues[4]:
			[1]: apply3D_upvr (readonly)
			[2]: tbl_upvr (readonly)
			[3]: i_3_upvr (readonly)
			[4]: RunService_upvr_2 (readonly)
		]]
		wait()
		local apply3D_upvr_result1 = apply3D_upvr(arg1)
		if apply3D_upvr_result1 then
			if tbl_upvr[i_3_upvr] then
				tbl_upvr[i_3_upvr]:disconnect()
			end
			tbl_upvr[i_3_upvr] = RunService_upvr_2.RenderStepped:connect(apply3D_upvr_result1)
		end
	end)
	SOME.ChildRemoved:connect(function() -- Line 98
		--[[ Upvalues[2]:
			[1]: tbl_upvr (readonly)
			[2]: i_3_upvr (readonly)
		]]
		if tbl_upvr[i_3_upvr] then
			tbl_upvr[i_3_upvr]:disconnect()
		end
	end)
end