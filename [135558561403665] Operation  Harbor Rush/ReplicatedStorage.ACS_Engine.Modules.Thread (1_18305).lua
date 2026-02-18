-- Name: Thread
-- Path: game:GetService("ReplicatedStorage").ACS_Engine.Modules.Thread
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.7338815999992221 seconds

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 07:18:46
-- Luau version 6, Types version 3
-- Time taken: 0.002192 seconds

local module = {}
local RunService_upvr = game:GetService("RunService")
function module.Wait(arg1, arg2) -- Line 5
	--[[ Upvalues[1]:
		[1]: RunService_upvr (readonly)
	]]
	if arg2 ~= nil then
		if 0 + RunService_upvr.Heartbeat:Wait() < arg2 then
			-- KONSTANTWARNING: GOTO [10] #8
		end
	else
		RunService_upvr.Heartbeat:Wait()
	end
end
function module.Spawn(arg1, arg2) -- Line 17
	local BindableEvent = Instance.new("BindableEvent")
	BindableEvent.Event:connect(arg2)
	BindableEvent:Fire()
	BindableEvent:Destroy()
end
function module.Delay(arg1, arg2, arg3) -- Line 24
	arg1:Spawn(function() -- Line 25
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
			[3]: arg3 (readonly)
		]]
		arg1:Wait(arg2)
		arg3()
	end)
end
return module