-- Name: Toggle Flashlight
-- Path: game:GetService("StarterGui")['Toggle Flashlight']
-- Class: LocalScript
-- Exploit: Xeno 
-- Time to decompile: 0.2603570999999647 seconds

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 07:17:20
-- Luau version 6, Types version 3
-- Time taken: 0.001823 seconds

function Light() -- Line 2
	local Character = game.Players.LocalPlayer.Character
	local Light_3 = Character.Head:FindFirstChild("Light")
	if Light_3 then
		Character.Head:FindFirstChild("Sound"):Destroy()
		Light_3:Destroy()
	else
		local SurfaceLight = Instance.new("SurfaceLight", Character:FindFirstChild("Head"))
		SurfaceLight.Name = "Light"
		SurfaceLight.Range = 55
		SurfaceLight.Brightness = 3
		SurfaceLight.Angle = 30
		SurfaceLight.Color = Color3.new(0.996078, 1, 0.792157)
		SurfaceLight.Shadows = true
		local Sound = Instance.new("Sound", Character:FindFirstChild("Head"))
		Sound.SoundId = "http://www.roblox.com/asset/?id=276495837"
		Sound:Play()
	end
end
game.Players.LocalPlayer:GetMouse().KeyDown:connect(function(arg1) -- Line 25
	if arg1:lower() == 'v' then
		Light()
	end
end)