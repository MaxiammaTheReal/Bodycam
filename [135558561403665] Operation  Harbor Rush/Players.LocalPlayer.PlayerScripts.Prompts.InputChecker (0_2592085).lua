-- Name: InputChecker
-- Path: game:GetService("Players").LocalPlayer.PlayerScripts.Prompts.InputChecker
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.7000301000007312 seconds

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 07:17:03
-- Luau version 6, Types version 3
-- Time taken: 0.001806 seconds

local UserInputService_upvr = game:GetService("UserInputService")
local module_upvr = {
	gamepadTypeFromNewestInput = "none";
	inputTypeThePlayerIsUsing = "KeyboardAndMouse";
	gamepadType = "none";
}
local _ = {"ButtonA", "ButtonB", "ButtonX", "ButtonY", "ButtonLB", "ButtonLT", "ButtonLS", "ButtonRB", "ButtonRT", "ButtonRS", "ButtonStart", "ButtonSelect"}
local tbl_upvr = {"ButtonCross", "ButtonCircle", "ButtonSquare", "ButtonTriangle", "ButtonL1", "ButtonL2", "ButtonL3", "ButtonR1", "ButtonR2", "ButtonR3", "ButtonOptions", "ButtonTouchpad", "ButtonShare"}
UserInputService_upvr.InputBegan:Connect(function(arg1) -- Line 46
	--[[ Upvalues[3]:
		[1]: UserInputService_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: module_upvr (readonly)
	]]
	for _, v in pairs(UserInputService_upvr:GetSupportedGamepadKeyCodes(UserInputService_upvr:GetLastInputType())) do
		if arg1.KeyCode == v then
			if table.find(tbl_upvr, UserInputService_upvr:GetStringForKeyCode(v)) then
				module_upvr.gamepadTypeFromNewestInput = "PlayStation"
			else
				module_upvr.gamepadTypeFromNewestInput = "Xbox"
			end
			if module_upvr.gamepadTypeFromNewestInput ~= module_upvr.gamepadType then
				module_upvr.gamepadType = module_upvr.gamepadTypeFromNewestInput
			end
		end
	end
end)
return module_upvr