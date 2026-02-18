-- Name: WindShake
-- Path: game:GetService("StarterPlayer").StarterPlayerScripts.ClientPlayer.Player.Wind.WindShakeInit.WindShake
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.2582356000002619 seconds

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 07:17:06
-- Luau version 6, Types version 3
-- Time taken: 0.020530 seconds

local Settings_upvr = require(script.Settings)
local tbl_2_upvr = {
	WindDirection = Vector3.new(0.5, 0, 0.5);
	WindSpeed = 20;
	WindPower = 0.5;
}
local BindableEvent_upvr_2 = Instance.new("BindableEvent")
local BindableEvent_upvr = Instance.new("BindableEvent")
local BindableEvent_upvr_3 = Instance.new("BindableEvent")
local BindableEvent_upvr_4 = Instance.new("BindableEvent")
local BindableEvent_upvr_5 = Instance.new("BindableEvent")
local module = {
	RenderDistance = 150;
	MaxRefreshRate = (1/60);
	SharedSettings = Settings_upvr.new(script);
	ObjectMetadata = {};
	VectorMap = require(script.VectorMap).new();
	Handled = 0;
	Active = 0;
	_partList = table.create(500);
	_cframeList = table.create(500);
	ObjectShakeAdded = BindableEvent_upvr_2.Event;
	ObjectShakeRemoved = BindableEvent_upvr.Event;
	ObjectShakeUpdated = BindableEvent_upvr_3.Event;
	Paused = BindableEvent_upvr_4.Event;
	Resumed = BindableEvent_upvr_5.Event;
	Connect = function(arg1, arg2, arg3) -- Line 62, Named "Connect"
		local var9_upvr = arg1[arg2]
		local var10
		if typeof(var9_upvr) ~= "function" then
			var10 = false
		else
			var10 = true
		end
		assert(var10, "Unknown function: "..arg2)
		return arg3:Connect(function(...) -- Line 66
			--[[ Upvalues[2]:
				[1]: var9_upvr (readonly)
				[2]: arg1 (readonly)
			]]
			return var9_upvr(arg1, ...)
		end)
	end;
	AddObjectShake = function(arg1, arg2, arg3) -- Line 71, Named "AddObjectShake"
		--[[ Upvalues[2]:
			[1]: Settings_upvr (readonly)
			[2]: BindableEvent_upvr_2 (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		if typeof(arg2) ~= "Instance" then
		else
			local var12
			if not arg2:IsA("BasePart") and not arg2:IsA("Bone") then return end
			local ObjectMetadata = arg1.ObjectMetadata
			if ObjectMetadata[arg2] then return end
			arg1.Handled += 1
			local tbl = {}
			if arg2:IsA("Bone") then
				var12 = arg2.WorldPosition
			else
				var12 = arg2.Position
			end
			tbl.ChunkKey = arg1.VectorMap:AddObject(var12, arg2)
			tbl.Settings = Settings_upvr.new(arg2)
			var12 = 5000
			tbl.Seed = math.random(var12) * 0.32
			if arg2:IsA("Bone") then
			else
			end
			tbl.Origin = arg2.CFrame
			tbl.LastUpdate = os.clock()
			ObjectMetadata[arg2] = tbl
			if arg3 then
				var12 = arg3
				arg1:UpdateObjectSettings(arg2, var12)
			end
			BindableEvent_upvr_2:Fire(arg2)
		end
	end;
	RemoveObjectShake = function(arg1, arg2) -- Line 107, Named "RemoveObjectShake"
		--[[ Upvalues[1]:
			[1]: BindableEvent_upvr (readonly)
		]]
		if typeof(arg2) ~= "Instance" then
		else
			local ObjectMetadata_2 = arg1.ObjectMetadata
			local var16 = ObjectMetadata_2[arg2]
			if var16 then
				arg1.Handled -= 1
				ObjectMetadata_2[arg2] = nil
				var16.Settings:Destroy()
				arg1.VectorMap:RemoveObject(var16.ChunkKey, arg2)
				if arg2:IsA("BasePart") then
					arg2.CFrame = var16.Origin
				elseif arg2:IsA("Bone") then
					arg2.WorldCFrame = var16.Origin
				end
			end
			BindableEvent_upvr:Fire(arg2)
		end
	end;
	Update = function(arg1, arg2) -- Line 131, Named "Update"
		debug.profilebegin("WindShake")
		local var17_upvw = 0
		debug.profilebegin("Update")
		local _partList_upvr = arg1._partList
		local _cframeList_upvr = arg1._cframeList
		table.clear(_partList_upvr)
		table.clear(_cframeList_upvr)
		local CurrentCamera = workspace.CurrentCamera
		local RenderDistance_upvr = arg1.RenderDistance
		local SharedSettings = arg1.SharedSettings
		local ObjectMetadata_3_upvr = arg1.ObjectMetadata
		local Position_upvr = CurrentCamera.CFrame.Position
		local var26_upvr = arg2 * 3
		local MaxRefreshRate_upvr = arg1.MaxRefreshRate
		local os_clock_result1_upvr = os.clock()
		local WindDirection_upvr = SharedSettings.WindDirection
		local WindPower_2_upvr = SharedSettings.WindPower
		local WindSpeed_upvr = SharedSettings.WindSpeed
		local minimum_upvr = math.min(1, arg2 * 5)
		local var33_upvw = 0
		arg1.VectorMap:ForEachObjectInView(CurrentCamera, RenderDistance_upvr, function(arg1_2, arg2_2) -- Line 161
			--[[ Upvalues[14]:
				[1]: ObjectMetadata_3_upvr (readonly)
				[2]: Position_upvr (readonly)
				[3]: RenderDistance_upvr (readonly)
				[4]: var26_upvr (readonly)
				[5]: MaxRefreshRate_upvr (readonly)
				[6]: os_clock_result1_upvr (readonly)
				[7]: var17_upvw (read and write)
				[8]: WindDirection_upvr (readonly)
				[9]: WindPower_2_upvr (readonly)
				[10]: WindSpeed_upvr (readonly)
				[11]: minimum_upvr (readonly)
				[12]: var33_upvw (read and write)
				[13]: _partList_upvr (readonly)
				[14]: _cframeList_upvr (readonly)
			]]
			local var34 = ObjectMetadata_3_upvr[arg2_2]
			local LastUpdate = var34.LastUpdate
			local var36
			if arg1_2 ~= "Bone" then
				LastUpdate = false
			else
				LastUpdate = true
			end
			if LastUpdate then
				var36 = arg2_2.WorldCFrame
			else
				var36 = arg2_2.CFrame
			end
			local var37 = (Position_upvr - var36.Position).Magnitude / RenderDistance_upvr
			local var38 = var37 * var37
			if os_clock_result1_upvr - (LastUpdate or 0) + 1 / math.random(60, 120) <= var26_upvr * var38 + MaxRefreshRate_upvr then
			else
				var34.LastUpdate = os_clock_result1_upvr
				var17_upvw += 1
				local Settings = var34.Settings
				local WindDirection = Settings.WindDirection
				if not WindDirection then
					WindDirection = WindDirection_upvr
				end
				if WindDirection.Magnitude < 0.00001 then return end
				local WindPower = Settings.WindPower
				if not WindPower then
					WindPower = WindPower_2_upvr
				end
				local var42 = WindPower * 0.2
				if var42 < 0.00001 then return end
				local WindSpeed = Settings.WindSpeed
				if not WindSpeed then
					WindSpeed = WindSpeed_upvr
				end
				local var44 = (os_clock_result1_upvr) * (WindSpeed * 0.08)
				if var44 < 0.00001 then return end
				local Seed = var34.Seed
				local var46 = (math.noise(var44, 0, Seed) + 0.4) * var42
				local var47 = var42 / 3
				local PivotOffset = Settings.PivotOffset
				if not PivotOffset then
					PivotOffset = CFrame.identity
				end
				if LastUpdate then
					arg2_2.Transform = arg2_2.Transform:Lerp(CFrame.fromAxisAngle(var34.Origin * PivotOffset:VectorToObjectSpace(WindDirection):Cross(Vector3.new(0, 1, 0)), -var46) * CFrame.Angles(math.noise(Seed, 0, var44) * var47, math.noise(Seed, var44, 0) * var47, math.noise(var44, Seed, 0) * var47) + var34.Origin * PivotOffset:VectorToObjectSpace(WindDirection) * var46 * var42, math.clamp(minimum_upvr + var38, 0.1, 0.5))
					return
				end
				var33_upvw += 1
				_partList_upvr[var33_upvw] = arg2_2
				local PivotOffsetInverse = Settings.PivotOffsetInverse
				if not PivotOffsetInverse then
					PivotOffsetInverse = CFrame.identity
				end
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				_cframeList_upvr[var33_upvw] = var36:Lerp(var34.Origin * PivotOffset * CFrame.fromAxisAngle(var34.Origin * PivotOffset:VectorToObjectSpace(WindDirection):Cross(Vector3.new(0, 1, 0)), -var46) * CFrame.Angles(math.noise(Seed, 0, var44) * var47, math.noise(Seed, var44, 0) * var47, math.noise(var44, Seed, 0) * var47) * PivotOffsetInverse + (WindDirection * var46) * (var42 * 2), math.clamp(minimum_upvr + var38, 0.1, 0.5))
			end
		end)
		arg1.Active = var17_upvw
		debug.profileend()
		workspace:BulkMoveTo(_partList_upvr, _cframeList_upvr, Enum.BulkMoveMode.FireCFrameChanged)
		debug.profileend()
	end;
	Pause = function(arg1) -- Line 247, Named "Pause"
		--[[ Upvalues[1]:
			[1]: BindableEvent_upvr_4 (readonly)
		]]
		if arg1.UpdateConnection then
			arg1.UpdateConnection:Disconnect()
			arg1.UpdateConnection = nil
		end
		arg1.Active = 0
		arg1.Running = false
		BindableEvent_upvr_4:Fire()
	end;
}
local RunService_upvr = game:GetService("RunService")
function module.Resume(arg1) -- Line 259
	--[[ Upvalues[2]:
		[1]: RunService_upvr (readonly)
		[2]: BindableEvent_upvr_5 (readonly)
	]]
	if arg1.Running then
	else
		arg1.Running = true
		arg1.UpdateConnection = arg1:Connect("Update", RunService_upvr.Heartbeat)
		BindableEvent_upvr_5:Fire()
	end
end
local CollectionService_upvr = game:GetService("CollectionService")
function module.Init(arg1, arg2) -- Line 272
	--[[ Upvalues[2]:
		[1]: tbl_2_upvr (readonly)
		[2]: CollectionService_upvr (readonly)
	]]
	if arg1.Initialized then
	else
		if typeof(script:GetAttribute("WindPower")) ~= "number" then
			script:SetAttribute("WindPower", tbl_2_upvr.WindPower)
		end
		if typeof(script:GetAttribute("WindSpeed")) ~= "number" then
			script:SetAttribute("WindSpeed", tbl_2_upvr.WindSpeed)
		end
		if typeof(script:GetAttribute("WindDirection")) ~= "Vector3" then
			script:SetAttribute("WindDirection", tbl_2_upvr.WindDirection)
		end
		arg1:Cleanup()
		arg1.Initialized = true
		arg1.AddedConnection = arg1:Connect("AddObjectShake", CollectionService_upvr:GetInstanceAddedSignal("WindShake"))
		arg1.RemovedConnection = arg1:Connect("RemoveObjectShake", CollectionService_upvr:GetInstanceRemovedSignal("WindShake"))
		for _, v in CollectionService_upvr:GetTagged("WindShake") do
			arg1:AddObjectShake(v)
		end
		if arg2 and arg2.MatchWorkspaceWind then
			arg1:MatchWorkspaceWind()
			arg1.WorkspaceWindConnection = workspace:GetPropertyChangedSignal("GlobalWind"):Connect(function() -- Line 312
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				arg1:MatchWorkspaceWind()
			end)
		end
		arg1:Resume()
	end
end
function module.Cleanup(arg1) -- Line 321
	if not arg1.Initialized then
	else
		arg1:Pause()
		if arg1.AddedConnection then
			arg1.AddedConnection:Disconnect()
			arg1.AddedConnection = nil
		end
		if arg1.RemovedConnection then
			arg1.RemovedConnection:Disconnect()
			arg1.RemovedConnection = nil
		end
		if arg1.WorkspaceWindConnection then
			arg1.WorkspaceWindConnection:Disconnect()
			arg1.WorkspaceWindConnection = nil
		end
		table.clear(arg1.ObjectMetadata)
		arg1.VectorMap:ClearAll()
		arg1.Handled = 0
		arg1.Active = 0
		arg1.Initialized = false
	end
end
function module.UpdateObjectSettings(arg1, arg2, arg3) -- Line 351
	--[[ Upvalues[1]:
		[1]: BindableEvent_upvr_3 (readonly)
	]]
	if typeof(arg2) ~= "Instance" then
	else
		if typeof(arg3) ~= "table" then return end
		if not arg1.ObjectMetadata[arg2] and arg2 ~= script then return end
		for i_2, v_2 in arg3 do
			arg2:SetAttribute(i_2, v_2)
		end
		BindableEvent_upvr_3:Fire(arg2)
	end
end
function module.UpdateAllObjectSettings(arg1, arg2) -- Line 371
	--[[ Upvalues[1]:
		[1]: BindableEvent_upvr_3 (readonly)
	]]
	if typeof(arg2) ~= "table" then
	else
		for var62, _ in arg1.ObjectMetadata do
			for var64, var65 in arg2 do
				var62:SetAttribute(var64, var65)
			end
			BindableEvent_upvr_3:Fire(var62)
		end
	end
end
function module.SetDefaultSettings(arg1, arg2) -- Line 384
	arg1:UpdateObjectSettings(script, arg2)
end
function module.MatchWorkspaceWind(arg1) -- Line 388
	local GlobalWind = workspace.GlobalWind
	local var67 = 0
	local var68 = 0
	local Magnitude = GlobalWind.Magnitude
	if 0 < Magnitude then
		if 1 < Magnitude then
			var68 = math.log10(Magnitude) + 0.2
		else
			var68 = 0.3
		end
		if Magnitude < 100 then
			var67 = Magnitude * 1.2 + 5
		else
			var67 = 125
		end
	end
	arg1:SetDefaultSettings({
		WindDirection = GlobalWind.Unit;
		WindSpeed = var67;
		WindPower = var68;
	})
end
return module