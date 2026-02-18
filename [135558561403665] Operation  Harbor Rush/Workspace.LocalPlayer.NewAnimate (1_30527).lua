-- Name: NewAnimate
-- Path: game:GetService("Workspace").LocalPlayer.NewAnimate
-- Class: LocalScript
-- Exploit: Xeno 
-- Time to decompile: 0.9315984000004391 seconds

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 07:16:54
-- Luau version 6, Types version 3
-- Time taken: 0.032312 seconds

local Parent_upvr = script.Parent
local var13_upvw
for _, v in pairs(Parent_upvr:GetChildren()) do
	if v:IsA("Humanoid") then
		var13_upvw = v
	end
end
local var14_upvw = "Standing"
local var15_upvw = ""
local var16_upvw
local var17_upvw
local var18_upvw
local var19_upvw = 1
local var20_upvw
local var21_upvw
local tbl_upvr = {}
local tbl_upvr_2 = {
	idle = {{
		id = "http://www.roblox.com/asset/?id=7941880917";
		weight = 1;
	}, {
		id = "http://www.roblox.com/asset/?id=7941880917";
		weight = 1;
	}, {
		id = "http://www.roblox.com/asset/?id=7941880917";
		weight = 9;
	}};
	walk = {{
		id = "http://www.roblox.com/asset/?id=7941869467";
		weight = 10;
	}};
	run = {{
		id = "http://www.roblox.com/asset/?id=7941865843";
		weight = 10;
	}};
	swim = {{
		id = "http://www.roblox.com/asset/?id=507784897";
		weight = 10;
	}};
	swimidle = {{
		id = "http://www.roblox.com/asset/?id=507785072";
		weight = 10;
	}};
	jump = {{
		id = "http://www.roblox.com/asset/?id=4609414620";
		weight = 10;
	}};
	fall = {{
		id = "http://www.roblox.com/asset/?id=507767968";
		weight = 10;
	}};
	climb = {{
		id = "http://www.roblox.com/asset/?id=507765644";
		weight = 10;
	}};
	sit = {{
		id = "http://www.roblox.com/asset/?id=2506281703";
		weight = 10;
	}};
	toolnone = {{
		id = "http://www.roblox.com/asset/?id=507768375";
		weight = 10;
	}};
	toolslash = {{
		id = "http://www.roblox.com/asset/?id=522635514";
		weight = 10;
	}};
	toollunge = {{
		id = "http://www.roblox.com/asset/?id=522638767";
		weight = 10;
	}};
	wave = {{
		id = "http://www.roblox.com/asset/?id=507770239";
		weight = 10;
	}};
	point = {{
		id = "http://www.roblox.com/asset/?id=507770453";
		weight = 10;
	}};
	dance = {{
		id = "http://www.roblox.com/asset/?id=4699979658";
		weight = 10;
	}, {
		id = "http://www.roblox.com/asset/?id=4699979658";
		weight = 10;
	}, {
		id = "http://www.roblox.com/asset/?id=4699979658";
		weight = 10;
	}};
	dance2 = {{
		id = "http://www.roblox.com/asset/?id=507776043";
		weight = 10;
	}, {
		id = "http://www.roblox.com/asset/?id=507776720";
		weight = 10;
	}, {
		id = "http://www.roblox.com/asset/?id=507776879";
		weight = 10;
	}};
	dance3 = {{
		id = "http://www.roblox.com/asset/?id=507777268";
		weight = 10;
	}, {
		id = "http://www.roblox.com/asset/?id=507777451";
		weight = 10;
	}, {
		id = "http://www.roblox.com/asset/?id=507777623";
		weight = 10;
	}};
	laugh = {{
		id = "http://www.roblox.com/asset/?id=507770818";
		weight = 10;
	}};
	cheer = {{
		id = "http://www.roblox.com/asset/?id=507770677";
		weight = 10;
	}};
}
local tbl_upvr_3 = {
	wave = false;
	point = false;
	dance = true;
	dance2 = true;
	dance3 = true;
	laugh = false;
	cheer = false;
}
math.randomseed(tick())
function configureAnimationSet(arg1, arg2) -- Line 86
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	local var116
	if var116 ~= nil then
		var116 = pairs(tbl_upvr[arg1].connections)
		local pairs_result1_4, pairs_result2_6, pairs_result3_3 = pairs(tbl_upvr[arg1].connections)
		for _, v_2 in pairs_result1_4, pairs_result2_6, pairs_result3_3 do
			v_2:disconnect()
		end
	end
	pairs_result1_4 = tbl_upvr
	pairs_result1_4[arg1] = {}
	pairs_result1_4 = tbl_upvr[arg1]
	pairs_result1_4.count = 0
	pairs_result1_4 = tbl_upvr[arg1]
	pairs_result1_4.totalWeight = 0
	pairs_result1_4 = tbl_upvr[arg1]
	pairs_result1_4.connections = {}
	pairs_result1_4 = true
	local var120_upvw = true
	local _, _ = pcall(function() -- Line 98
		--[[ Upvalues[1]:
			[1]: var120_upvw (read and write)
		]]
		var120_upvw = UserSettings():IsUserFeatureEnabled("UserAllowDisableCustomAnims")
	end)
	if var120_upvw then
		local PlayerSettings = game:GetService("StarterPlayer"):FindFirstChild("PlayerSettings")
		if PlayerSettings ~= nil then
			pairs_result1_4 = not require(PlayerSettings).UseDefaultAnimations
		end
	end
	local SOME_2 = script:FindFirstChild(arg1)
	if pairs_result1_4 and SOME_2 ~= nil then
		table.insert(tbl_upvr[arg1].connections, SOME_2.ChildAdded:connect(function(arg1_5) -- Line 109
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: arg2 (readonly)
			]]
			configureAnimationSet(arg1, arg2)
		end))
		table.insert(tbl_upvr[arg1].connections, SOME_2.ChildRemoved:connect(function(arg1_6) -- Line 110
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: arg2 (readonly)
			]]
			configureAnimationSet(arg1, arg2)
		end))
		local var128 = 1
		for _, v_3 in pairs(SOME_2:GetChildren()) do
			if v_3:IsA("Animation") then
				table.insert(tbl_upvr[arg1].connections, v_3.Changed:connect(function(arg1_7) -- Line 114
					--[[ Upvalues[2]:
						[1]: arg1 (readonly)
						[2]: arg2 (readonly)
					]]
					configureAnimationSet(arg1, arg2)
				end))
				tbl_upvr[arg1][var128] = {}
				tbl_upvr[arg1][var128].anim = v_3
				local Weight_2 = v_3:FindFirstChild("Weight")
				if Weight_2 == nil then
					tbl_upvr[arg1][var128].weight = 1
				else
					tbl_upvr[arg1][var128].weight = Weight_2.Value
				end
				tbl_upvr[arg1].count = tbl_upvr[arg1].count + 1
				tbl_upvr[arg1].totalWeight = tbl_upvr[arg1].totalWeight + tbl_upvr[arg1][var128].weight
			end
		end
	end
	if tbl_upvr[arg1].count <= 0 then
		for i_4, v_4 in pairs(arg2) do
			v_3 = tbl_upvr[arg1]
			v_3[i_4] = {}
			v_3 = tbl_upvr[arg1][i_4]
			v_3.anim = Instance.new("Animation")
			v_3 = tbl_upvr[arg1][i_4].anim
			v_3.Name = arg1
			v_3 = tbl_upvr[arg1][i_4].anim
			v_3.AnimationId = v_4.id
			v_3 = tbl_upvr[arg1][i_4]
			v_3.weight = v_4.weight
			v_3 = tbl_upvr[arg1]
			v_3.count = tbl_upvr[arg1].count + 1
			v_3 = tbl_upvr[arg1]
			v_3.totalWeight = tbl_upvr[arg1].totalWeight + v_4.weight
		end
	end
end
function scriptChildModified(arg1) -- Line 141
	--[[ Upvalues[1]:
		[1]: tbl_upvr_2 (readonly)
	]]
	local var137 = tbl_upvr_2[arg1.Name]
	if var137 ~= nil then
		configureAnimationSet(arg1.Name, var137)
	end
end
script.ChildAdded:connect(scriptChildModified)
script.ChildRemoved:connect(scriptChildModified)
for i_5, v_5 in pairs(tbl_upvr_2) do
	configureAnimationSet(i_5, v_5)
end
local var141_upvw = "None"
local var142_upvw = 0
function stopAllAnimations() -- Line 158
	--[[ Upvalues[7]:
		[1]: var15_upvw (read and write)
		[2]: tbl_upvr_3 (readonly)
		[3]: var16_upvw (read and write)
		[4]: var18_upvw (read and write)
		[5]: var17_upvw (read and write)
		[6]: var21_upvw (read and write)
		[7]: var20_upvw (read and write)
	]]
	local var143
	if tbl_upvr_3[var15_upvw] ~= nil and tbl_upvr_3[var143] == false then
		var143 = "idle"
	end
	var15_upvw = ""
	var16_upvw = nil
	if var18_upvw ~= nil then
		var18_upvw:disconnect()
	end
	if var17_upvw ~= nil then
		var17_upvw:Stop()
		var17_upvw:Destroy()
		var17_upvw = nil
	end
	if var21_upvw ~= nil then
		var21_upvw:disconnect()
	end
	if var20_upvw ~= nil then
		var20_upvw:Stop()
		var20_upvw:Destroy()
		var20_upvw = nil
	end
	return var143
end
function setRunSpeed(arg1) -- Line 184
	--[[ Upvalues[2]:
		[1]: var17_upvw (read and write)
		[2]: var20_upvw (read and write)
	]]
	if arg1 < 0.75 then
		var17_upvw:AdjustWeight(1)
		var20_upvw:AdjustWeight(0.0001)
	elseif arg1 < 0.76 then
		local var144 = (arg1 - 0.33) / 0.33
		var17_upvw:AdjustWeight(1 - var144 + 0.0001)
		var20_upvw:AdjustWeight(var144 + 0.0001)
	else
		var17_upvw:AdjustWeight(0.0001)
		var20_upvw:AdjustWeight(1)
	end
	local var145 = arg1 * 1.25
	var20_upvw:AdjustSpeed(var145)
	var17_upvw:AdjustSpeed(var145)
end
function setAnimationSpeed(arg1) -- Line 201
	--[[ Upvalues[3]:
		[1]: var19_upvw (read and write)
		[2]: var15_upvw (read and write)
		[3]: var17_upvw (read and write)
	]]
	if arg1 ~= var19_upvw then
		var19_upvw = arg1
		if var15_upvw == "walk" then
			setRunSpeed(arg1)
			return
		end
		var17_upvw:AdjustSpeed(var19_upvw)
	end
end
function keyFrameReachedFunc(arg1) -- Line 211
	--[[ Upvalues[6]:
		[1]: var15_upvw (read and write)
		[2]: var20_upvw (read and write)
		[3]: var17_upvw (read and write)
		[4]: tbl_upvr_3 (readonly)
		[5]: var19_upvw (read and write)
		[6]: var13_upvw (read and write)
	]]
	if arg1 == "End" then
		if var15_upvw == "walk" then
			var20_upvw.TimePosition = 0
			var17_upvw.TimePosition = 0
			return
		end
		local var146
		if tbl_upvr_3[var15_upvw] ~= nil and tbl_upvr_3[var146] == false then
			var146 = "idle"
		end
		playAnimation(var146, 0.15, var13_upvw)
		setAnimationSpeed(var19_upvw)
	end
end
function rollAnimation(arg1) -- Line 227
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	local var148
	while tbl_upvr[arg1][var148].weight < math.random(1, tbl_upvr[arg1].totalWeight) do
		var148 += 1
	end
	return var148
end
function playAnimation(arg1, arg2, arg3) -- Line 237
	--[[ Upvalues[8]:
		[1]: tbl_upvr (readonly)
		[2]: var16_upvw (read and write)
		[3]: var17_upvw (read and write)
		[4]: var20_upvw (read and write)
		[5]: var19_upvw (read and write)
		[6]: var15_upvw (read and write)
		[7]: var18_upvw (read and write)
		[8]: var21_upvw (read and write)
	]]
	local anim = tbl_upvr[arg1][rollAnimation(arg1)].anim
	if anim ~= var16_upvw then
		if var17_upvw ~= nil then
			var17_upvw:Stop(arg2)
			var17_upvw:Destroy()
		end
		if var20_upvw ~= nil then
			var20_upvw:Stop(arg2)
			var20_upvw:Destroy()
		end
		var19_upvw = 1
		var17_upvw = arg3:LoadAnimation(anim)
		var17_upvw.Priority = Enum.AnimationPriority.Core
		var17_upvw:Play(arg2)
		var15_upvw = arg1
		var16_upvw = anim
		if var18_upvw ~= nil then
			var18_upvw:disconnect()
		end
		var18_upvw = var17_upvw.KeyframeReached:connect(keyFrameReachedFunc)
		if arg1 == "walk" then
			var20_upvw = arg3:LoadAnimation(tbl_upvr.run[rollAnimation("run")].anim)
			var20_upvw.Priority = Enum.AnimationPriority.Core
			var20_upvw:Play(arg2)
			if var21_upvw ~= nil then
				var21_upvw:disconnect()
			end
			var21_upvw = var20_upvw.KeyframeReached:connect(keyFrameReachedFunc)
		end
	end
end
local var150_upvw = ""
local var151_upvw
local var152_upvw
local var153_upvw
function toolKeyFrameReachedFunc(arg1) -- Line 278
	--[[ Upvalues[2]:
		[1]: var150_upvw (read and write)
		[2]: var13_upvw (read and write)
	]]
	if arg1 == "End" then
		playToolAnimation(var150_upvw, 0, var13_upvw)
	end
end
function playToolAnimation(arg1, arg2, arg3, arg4) -- Line 283
	--[[ Upvalues[5]:
		[1]: tbl_upvr (readonly)
		[2]: var152_upvw (read and write)
		[3]: var151_upvw (read and write)
		[4]: var150_upvw (read and write)
		[5]: var153_upvw (read and write)
	]]
	local anim_2 = tbl_upvr[arg1][rollAnimation(arg1)].anim
	local var155
	if var152_upvw ~= anim_2 then
		if var151_upvw ~= nil then
			var151_upvw:Stop()
			var151_upvw:Destroy()
			var155 = 0
		end
		var151_upvw = arg3:LoadAnimation(anim_2)
		if arg4 then
			var151_upvw.Priority = arg4
		end
		var151_upvw:Play(var155)
		var150_upvw = arg1
		var152_upvw = anim_2
		var153_upvw = var151_upvw.KeyframeReached:connect(toolKeyFrameReachedFunc)
	end
end
function stopToolAnimations() -- Line 302
	--[[ Upvalues[4]:
		[1]: var150_upvw (read and write)
		[2]: var153_upvw (read and write)
		[3]: var152_upvw (read and write)
		[4]: var151_upvw (read and write)
	]]
	if var153_upvw ~= nil then
		var153_upvw:disconnect()
	end
	var150_upvw = ""
	var152_upvw = nil
	if var151_upvw ~= nil then
		var151_upvw:Stop()
		var151_upvw:Destroy()
		var151_upvw = nil
	end
	return var150_upvw
end
function onRunning(arg1) -- Line 316
	--[[ Upvalues[4]:
		[1]: var13_upvw (read and write)
		[2]: var14_upvw (read and write)
		[3]: tbl_upvr_3 (readonly)
		[4]: var15_upvw (read and write)
	]]
	if 0.5 < arg1 then
		playAnimation("walk", 0.1, var13_upvw)
		setAnimationSpeed(arg1 / 16)
		var14_upvw = "Running"
	elseif tbl_upvr_3[var15_upvw] == nil then
		playAnimation("idle", 0.1, var13_upvw)
		var14_upvw = "Standing"
	end
end
function onDied() -- Line 329
	--[[ Upvalues[1]:
		[1]: var14_upvw (read and write)
	]]
	var14_upvw = "Dead"
end
function onJumping() -- Line 332
	--[[ Upvalues[3]:
		[1]: var13_upvw (read and write)
		[2]: var142_upvw (read and write)
		[3]: var14_upvw (read and write)
	]]
	playAnimation("jump", 0.1, var13_upvw)
	var142_upvw = 0.31
	var14_upvw = "Jumping"
end
function onClimbing(arg1) -- Line 337
	--[[ Upvalues[2]:
		[1]: var13_upvw (read and write)
		[2]: var14_upvw (read and write)
	]]
	playAnimation("climb", 0.1, var13_upvw)
	setAnimationSpeed(arg1 / 5)
	var14_upvw = "Climbing"
end
function onGettingUp() -- Line 343
	--[[ Upvalues[1]:
		[1]: var14_upvw (read and write)
	]]
	var14_upvw = "GettingUp"
end
function onFreeFall() -- Line 346
	--[[ Upvalues[3]:
		[1]: var142_upvw (read and write)
		[2]: var13_upvw (read and write)
		[3]: var14_upvw (read and write)
	]]
	if var142_upvw <= 0 then
		playAnimation("fall", 0.2, var13_upvw)
	end
	var14_upvw = "FreeFall"
end
function onFallingDown() -- Line 352
	--[[ Upvalues[1]:
		[1]: var14_upvw (read and write)
	]]
	var14_upvw = "FallingDown"
end
function onSeated() -- Line 355
	--[[ Upvalues[1]:
		[1]: var14_upvw (read and write)
	]]
	var14_upvw = "Seated"
end
function onPlatformStanding() -- Line 358
	--[[ Upvalues[1]:
		[1]: var14_upvw (read and write)
	]]
	var14_upvw = "PlatformStanding"
end
function onSwimming(arg1) -- Line 361
	--[[ Upvalues[2]:
		[1]: var13_upvw (read and write)
		[2]: var14_upvw (read and write)
	]]
	if 1 < arg1 then
		playAnimation("swim", 0.4, var13_upvw)
		setAnimationSpeed(arg1 / 10)
		var14_upvw = "Swimming"
	else
		playAnimation("swimidle", 0.4, var13_upvw)
		var14_upvw = "Standing"
	end
end
function animateTool() -- Line 372
	--[[ Upvalues[2]:
		[1]: var141_upvw (read and write)
		[2]: var13_upvw (read and write)
	]]
	if var141_upvw == "None" then
		playToolAnimation("toolnone", 0.1, var13_upvw, Enum.AnimationPriority.Idle)
	else
		if var141_upvw == "Slash" then
			playToolAnimation("toolslash", 0, var13_upvw, Enum.AnimationPriority.Action)
			return
		end
		if var141_upvw == "Lunge" then
			playToolAnimation("toollunge", 0, var13_upvw, Enum.AnimationPriority.Action)
			return
		end
	end
end
function getToolAnim(arg1) -- Line 386
	for _, v_6 in ipairs(arg1:GetChildren()) do
		if v_6.Name == "toolanim" and v_6.className == "StringValue" then
			return v_6
		end
	end
	return nil
end
local var161_upvw = 0
local var162_upvw = 0
function stepAnimate(arg1) -- Line 395
	--[[ Upvalues[8]:
		[1]: var161_upvw (read and write)
		[2]: var142_upvw (read and write)
		[3]: var14_upvw (read and write)
		[4]: var13_upvw (read and write)
		[5]: Parent_upvr (readonly)
		[6]: var141_upvw (read and write)
		[7]: var162_upvw (read and write)
		[8]: var152_upvw (read and write)
	]]
	var161_upvw = arg1
	if 0 < var142_upvw then
		var142_upvw -= arg1 - var161_upvw
	end
	if var14_upvw == "FreeFall" and var142_upvw <= 0 then
		playAnimation("fall", 0.2, var13_upvw)
	else
		if var14_upvw == "Seated" then
			playAnimation("sit", 0.5, var13_upvw)
			return
		end
		if var14_upvw == "Running" then
			playAnimation("walk", 0.1, var13_upvw)
		elseif var14_upvw == "Dead" or var14_upvw == "GettingUp" or var14_upvw == "FallingDown" or var14_upvw == "Seated" or var14_upvw == "PlatformStanding" then
			stopAllAnimations()
		end
	end
	local class_Tool = Parent_upvr:FindFirstChildOfClass("Tool")
	if class_Tool and (class_Tool.RequiresHandle or class_Tool:FindFirstChild("Handle")) then
		local getToolAnim_result1 = getToolAnim(class_Tool)
		if getToolAnim_result1 then
			var141_upvw = getToolAnim_result1.Value
			getToolAnim_result1.Parent = nil
			var162_upvw = arg1 + 0.3
		end
		if var162_upvw < arg1 then
			var162_upvw = 0
			var141_upvw = "None"
		end
		animateTool()
	else
		stopToolAnimations()
		var141_upvw = "None"
		var152_upvw = nil
		var162_upvw = 0
	end
end
var13_upvw.Died:connect(onDied)
var13_upvw.Running:connect(onRunning)
var13_upvw.Jumping:connect(onJumping)
var13_upvw.Climbing:connect(onClimbing)
var13_upvw.GettingUp:connect(onGettingUp)
var13_upvw.FreeFalling:connect(onFreeFall)
var13_upvw.FallingDown:connect(onFallingDown)
var13_upvw.Seated:connect(onSeated)
var13_upvw.PlatformStanding:connect(onPlatformStanding)
var13_upvw.Swimming:connect(onSwimming)
game:GetService("Players").LocalPlayer.Chatted:connect(function(arg1) -- Line 448
	--[[ Upvalues[3]:
		[1]: var14_upvw (read and write)
		[2]: tbl_upvr_3 (readonly)
		[3]: var13_upvw (read and write)
	]]
	local var166
	if string.sub(arg1, 1, 3) == "/e " then
		var166 = string.sub(arg1, 4)
	elseif string.sub(arg1, 1, 7) == "/emote " then
		var166 = string.sub(arg1, 8)
	end
	if var14_upvw == "Standing" and tbl_upvr_3[var166] ~= nil then
		playAnimation(var166, 0.1, var13_upvw)
	end
end)
playAnimation("idle", 0.1, var13_upvw)
var14_upvw = "Standing"
while Parent_upvr.Parent ~= nil do
	local _, wait_result2 = wait(0.1)
	stepAnimate(wait_result2)
end