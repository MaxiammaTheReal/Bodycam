-- Name: Bang
-- Path: game:GetService("ReplicatedStorage").ACS_Engine.GrenadeModels.Flashbang.Grenade.Damage.Bangson.Bang
-- Class: LocalScript
-- Exploit: Xeno 
-- Time to decompile: 0.5591385000006994 seconds

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 07:18:52
-- Luau version 6, Types version 3
-- Time taken: 0.001217 seconds

if script.Parent.Parent.Parent.CurrentCamera:FindFirstChild("Bang") ~= nil then
	script.Parent.Parent.Parent.CurrentCamera:FindFirstChild("Bang"):Destroy()
end
local ColorCorrectionEffect = Instance.new("ColorCorrectionEffect")
ColorCorrectionEffect.Parent = script.Parent.Parent.Parent.CurrentCamera
ColorCorrectionEffect.Brightness = script.Parent.Brightness.Value
ColorCorrectionEffect.Name = "Bang"
game:GetService("TweenService"):Create(ColorCorrectionEffect, TweenInfo.new(script.Parent.Time.Value, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0), {
	Brightness = 0;
}):Play()
wait(script.Parent.Time.Value + 0.5)
ColorCorrectionEffect:Destroy()
script.Parent:Destroy()