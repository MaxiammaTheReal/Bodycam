-- Name: PlayerClient
-- Path: game:GetService("ReplicatedStorage").PlayerClient
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.554952599999524 seconds

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 07:18:23
-- Luau version 6, Types version 3
-- Time taken: 0.003115 seconds

local module = {}
local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local Players_upvr = game:GetService("Players")
local var4_upvw
local var5_upvw
function module.onPlayerAdded() -- Line 10
	--[[ Upvalues[2]:
		[1]: var4_upvw (read and write)
		[2]: ReplicatedStorage_upvr (readonly)
	]]
	if var4_upvw == nil then
		local BindableEvent = Instance.new("BindableEvent")
		BindableEvent.Name = "PlayerAdded"
		BindableEvent.Parent = ReplicatedStorage_upvr
		var4_upvw = BindableEvent
	end
	return var4_upvw
end
function module.onPlayerRemoved() -- Line 22
	--[[ Upvalues[2]:
		[1]: var5_upvw (read and write)
		[2]: ReplicatedStorage_upvr (readonly)
	]]
	if var5_upvw == nil then
		local BindableEvent_2 = Instance.new("BindableEvent")
		BindableEvent_2.Name = "PlayerRemoved"
		BindableEvent_2.Parent = ReplicatedStorage_upvr
		var5_upvw = BindableEvent_2
	end
	return var5_upvw
end
function module.GetPlayers() -- Line 33
	--[[ Upvalues[1]:
		[1]: Players_upvr (readonly)
	]]
	for _, v in pairs(Players_upvr:GetChildren()) do
		if v:IsA("Player") then
			table.insert({}, v)
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end
task.spawn(function() -- Line 45
	--[[ Upvalues[3]:
		[1]: Players_upvr (readonly)
		[2]: var4_upvw (read and write)
		[3]: var5_upvw (read and write)
	]]
	Players_upvr.ChildAdded:Connect(function(arg1) -- Line 46
		--[[ Upvalues[1]:
			[1]: var4_upvw (copied, read and write)
		]]
		if arg1:IsA("Player") then
			var4_upvw:Fire(arg1)
		end
	end)
	Players_upvr.ChildRemoved:Connect(function(arg1) -- Line 52
		--[[ Upvalues[1]:
			[1]: var5_upvw (copied, read and write)
		]]
		if arg1:IsA("Player") then
			var5_upvw:Fire(arg1)
		end
	end)
end)
return module