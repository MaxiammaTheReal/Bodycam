-- Name: NotificationSystem
-- Path: game:GetService("ReplicatedStorage").NotificationSystem
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.5553001999996923 seconds

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 07:18:22
-- Luau version 6, Types version 3
-- Time taken: 0.003434 seconds

local module = {}
local NotificationSound_upvr = game:GetService("SoundService"):WaitForChild("NotificationSound")
local Notification_upvr = script:WaitForChild("Notification")
function AppearAnimation(arg1) -- Line 14
	for i = 1, 0, -0.03 do
		arg1.TextTransparency = i
		arg1.TextStrokeTransparency = i
		task.wait()
	end
end
function DisappearAnimation(arg1) -- Line 23
	for i_2 = 0, 1, 0.05 do
		arg1.TextTransparency = i_2
		task.wait()
	end
	arg1:Destroy()
end
function module.CreateNotificationLocal(arg1, arg2, arg3) -- Line 34
	--[[ Upvalues[2]:
		[1]: NotificationSound_upvr (readonly)
		[2]: Notification_upvr (readonly)
	]]
	NotificationSound_upvr.Looped = false
	NotificationSound_upvr:Play()
	local clone_3 = Notification_upvr:Clone()
	clone_3.Parent = arg1:WaitForChild("PlayerGui").NotificationUI.BF
	clone_3.Text = arg2
	AppearAnimation(clone_3)
	task.wait(arg3)
	DisappearAnimation(clone_3)
	DisappearAnimation(Notification_upvr)
end
local Players_upvr = game:GetService("Players")
function module.CreateNotification(arg1, arg2) -- Line 55
	--[[ Upvalues[3]:
		[1]: NotificationSound_upvr (readonly)
		[2]: Players_upvr (readonly)
		[3]: Notification_upvr (readonly)
	]]
	NotificationSound_upvr.Looped = false
	NotificationSound_upvr:Play()
	if arg1 == "GUN SECURED! <font color='rgb(255, 0, 0)'> +10 </font>" or arg1 == "GUN SECURED! <font color='rgb(255, 0, 0)'> +20 </font>" or arg1 == "DEAD OFFICER REPORTED! <font color='rgb(255, 0, 0)'> +10 </font>" or arg1 == "DEAD SUSPECT REPORTED! <font color='rgb(255, 0, 0)'> +0 </font>" or arg1 == "INJURED CIVILIAN REPORTED! <font color='rgb(255, 0, 0)'> +0 </font> " then
	end
	for _, v_upvr in ipairs(Players_upvr:GetPlayers()) do
		task.spawn(function() -- Line 75
			--[[ Upvalues[4]:
				[1]: v_upvr (readonly)
				[2]: Notification_upvr (copied, readonly)
				[3]: arg1 (readonly)
				[4]: arg2 (readonly)
			]]
			local clone_2 = Notification_upvr:Clone()
			clone_2.Parent = v_upvr:WaitForChild("PlayerGui").NotificationUI.BF
			clone_2.Text = arg1
			AppearAnimation(clone_2)
			task.wait(arg2)
			DisappearAnimation(clone_2)
		end)
	end
end
function module.CreateNotificationPlayer(arg1, arg2, arg3) -- Line 94
	--[[ Upvalues[2]:
		[1]: NotificationSound_upvr (readonly)
		[2]: Notification_upvr (readonly)
	]]
	NotificationSound_upvr.Looped = false
	NotificationSound_upvr:Play()
	if arg2 == "GUN SECURED! <font color='rgb(255, 0, 0)'> +10 </font>" or arg2 == "GUN SECURED! <font color='rgb(255, 0, 0)'> +20 </font>" or arg2 == "DEAD OFFICER REPORTED! <font color='rgb(255, 0, 0)'> +10 </font>" or arg2 == "DEAD SUSPECT REPORTED! <font color='rgb(255, 0, 0)'> +0 </font>" or arg2 == "INJURED CIVILIAN REPORTED! <font color='rgb(255, 0, 0)'> +0 </font> " then
	end
	task.spawn(function() -- Line 113
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: Notification_upvr (copied, readonly)
			[3]: arg2 (readonly)
			[4]: arg3 (readonly)
		]]
		local clone = Notification_upvr:Clone()
		clone.Parent = arg1:WaitForChild("PlayerGui").NotificationUI.BF
		clone.Text = arg2
		AppearAnimation(clone)
		task.wait(arg3)
		DisappearAnimation(clone)
	end)
end
return module