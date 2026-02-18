-- Name: CoreModule
-- Path: game:GetService("Workspace").GAME.Suspects.Suspect_Regular.Scripts.Modules.CoreModule
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.2640460000002349 seconds

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 07:15:31
-- Luau version 6, Types version 3
-- Time taken: 0.009050 seconds

local module_upvr = {}
local Status_upvr = require(script.Parent.Status)
local Parent_upvr = script.Parent.Parent.Parent
local HumanoidRootPart_upvr = Parent_upvr.HumanoidRootPart
local Head_upvr = Parent_upvr.Head
local BindableEvent_upvr = Instance.new("BindableEvent")
function module_upvr.spawn(arg1, ...) -- Line 14
	--[[ Upvalues[1]:
		[1]: BindableEvent_upvr (readonly)
	]]
	BindableEvent_upvr:Fire(...)
	BindableEvent_upvr.Event:Connect(arg1):Disconnect()
end
function module_upvr.checkDist(arg1, arg2) -- Line 20
	return (arg1.Position - arg2.Position).Magnitude
end
function module_upvr.applyDamage(arg1, arg2) -- Line 24
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	if not module_upvr.isAlly(arg1.Parent) and 0 < arg1.Health then
		arg1:TakeDamage(arg2)
	end
end
function module_upvr.getHuman(arg1) -- Line 30
	local var7
	if arg1:IsA("Tool") or var7:IsA("Accessory") then
		var7 = var7.Parent
	end
	return var7:FindFirstChild("Humanoid")
end
local RaycastParams_new_result1_upvr = RaycastParams.new()
RaycastParams_new_result1_upvr.FilterDescendantsInstances = {Parent_upvr}
local Settings_upvr = Parent_upvr.Settings
function module_upvr.checkSight(arg1) -- Line 40
	--[[ Upvalues[5]:
		[1]: Parent_upvr (readonly)
		[2]: Settings_upvr (readonly)
		[3]: RaycastParams_new_result1_upvr (readonly)
		[4]: module_upvr (readonly)
		[5]: Status_upvr (readonly)
	]]
	local workspace_Raycast_result1 = workspace:Raycast(Parent_upvr.Head.Position, (arg1.Position - Parent_upvr.Head.Position).Unit * Settings_upvr.M4.Range.Value, RaycastParams_new_result1_upvr)
	if workspace_Raycast_result1 and workspace_Raycast_result1.Instance.Parent then
		if workspace_Raycast_result1.Instance:IsDescendantOf(arg1.Parent) or workspace_Raycast_result1.Instance.Name == "Bullet" then
			return true
		end
		local any_getHuman_result1 = module_upvr.getHuman(workspace_Raycast_result1.Instance.Parent)
		if any_getHuman_result1 and any_getHuman_result1.Health <= 0 and not module_upvr.isAlly(any_getHuman_result1.Parent) then
			local randint = math.random(1, 2)
			if randint == 1 and false == false then
				Parent_upvr.Helmet.Kill1:Play()
			elseif randint == 2 and true == false then
				Parent_upvr.Helmet.Kill2:Play()
			end
		end
		if any_getHuman_result1 and 0 < any_getHuman_result1.Health and not module_upvr.isAlly(any_getHuman_result1.Parent) then
			if math.random(1, 2) == 1 and false == false and Parent_upvr.Helmet.Spotted1.IsPlaying == false then
				Parent_upvr.Helmet.Spotted1:Play()
			end
			Status_upvr:set("currentTarget", any_getHuman_result1.RootPart)
			return true
		end
	end
	return false
end
function module_upvr.checkPotentialSight(arg1) -- Line 85
	--[[ Upvalues[3]:
		[1]: module_upvr (readonly)
		[2]: Head_upvr (readonly)
		[3]: RaycastParams_new_result1_upvr (readonly)
	]]
	if workspace:Raycast(Head_upvr.Position, (Vector3.new(arg1.Position.X, Head_upvr.Position.Y, arg1.Position.Z) - Head_upvr.Position).Unit * module_upvr.checkDist(Head_upvr, arg1), RaycastParams_new_result1_upvr) then
		return false
	end
	return true
end
function module_upvr.raycast(arg1, arg2) -- Line 96
	--[[ Upvalues[1]:
		[1]: RaycastParams_new_result1_upvr (readonly)
	]]
	local workspace_Raycast_result1_2 = workspace:Raycast(arg1, arg2, RaycastParams_new_result1_upvr)
	if workspace_Raycast_result1_2 then
		return true, workspace_Raycast_result1_2
	end
	return false
end
local Barrel_upvr = Parent_upvr.M4.Barrel
function module_upvr.checkShot(arg1) -- Line 105
	--[[ Upvalues[6]:
		[1]: module_upvr (readonly)
		[2]: HumanoidRootPart_upvr (readonly)
		[3]: Barrel_upvr (readonly)
		[4]: RaycastParams_new_result1_upvr (readonly)
		[5]: Head_upvr (readonly)
		[6]: Status_upvr (readonly)
	]]
	local any_checkDist_result1 = module_upvr.checkDist(HumanoidRootPart_upvr, arg1)
	local workspace_Raycast_result1_4 = workspace:Raycast(Barrel_upvr.WorldPosition, (arg1.Position - Barrel_upvr.WorldPosition).Unit * any_checkDist_result1, RaycastParams_new_result1_upvr)
	local workspace_Raycast_result1_3 = workspace:Raycast(Head_upvr.Position, (arg1.Position - Head_upvr.Position).Unit * any_checkDist_result1, RaycastParams_new_result1_upvr)
	if workspace_Raycast_result1_4 and workspace_Raycast_result1_3 and workspace_Raycast_result1_4.Instance.Parent == workspace_Raycast_result1_3.Instance.Parent then
		if workspace_Raycast_result1_4.Instance:IsDescendantOf(arg1.Parent) or workspace_Raycast_result1_4.Instance.Name == "Bullet" then
			return true
		end
		local Humanoid = workspace_Raycast_result1_4.Instance.Parent:FindFirstChild("Humanoid")
		if Humanoid and 0 < Humanoid.Health and not module_upvr.isAlly(Humanoid.Parent) then
			Status_upvr:set("currentTarget", Humanoid.RootPart)
			return true
		end
	end
	return false
end
local tbl_upvr = {}
local Value_upvr = Parent_upvr.Settings.Team.Value
local Value_upvr_2 = Parent_upvr.Settings.AttackPlayers.Value
function module_upvr.isAlly(arg1) -- Line 126
	--[[ Upvalues[3]:
		[1]: tbl_upvr (readonly)
		[2]: Value_upvr (readonly)
		[3]: Value_upvr_2 (readonly)
	]]
	local var28
	if arg1:FindFirstChild("Team") then
		var28 = arg1.Team.Value
	elseif arg1:FindFirstChild("Settings") and arg1.Settings:FindFirstChild("Team") then
		var28 = arg1.Settings.Team.Value
	end
	for _, v in ipairs(tbl_upvr) do
		if arg1.Name == v then
			return true
		end
	end
	if var28 and var28 == Value_upvr or not Value_upvr_2 and game.Players:GetPlayerFromCharacter(arg1) then
		return true
	end
	return false
end
function module_upvr.facingTarget() -- Line 145
	--[[ Upvalues[2]:
		[1]: HumanoidRootPart_upvr (readonly)
		[2]: Status_upvr (readonly)
	]]
	local Position = Status_upvr:get("currentTarget").Position
	if (HumanoidRootPart_upvr.CFrame.LookVector - CFrame.new(HumanoidRootPart_upvr.Position, Vector3.new(Position.X, HumanoidRootPart_upvr.Position.Y, Position.Z)).LookVector).Magnitude < 0.5 then
		return true
	end
	return false
end
return module_upvr