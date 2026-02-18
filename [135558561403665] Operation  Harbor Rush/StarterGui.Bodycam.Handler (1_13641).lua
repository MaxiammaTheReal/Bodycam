-- Name: Handler
-- Path: game:GetService("StarterGui").Bodycam.Handler
-- Class: LocalScript
-- Exploit: Xeno 
-- Time to decompile: 0.25938739999946847 seconds

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 07:17:21
-- Luau version 6, Types version 3
-- Time taken: 0.003454 seconds

-- KONSTANTERROR: [0] 1. Error Block 38 start (CF ANALYSIS FAILED)
local tbl = {268592485, 268592462, 268592427, 268590007}
local tick_result1 = tick()
for _ = 1, #tbl do
	script.Parent.Static.TileSize = UDim2.fromScale(math.random(600, 1000) / 1000, math.random(600, 1000) / 1000)
	task.wait()
end
local os_date_result1 = os.date("*t")
for i_2, v in pairs(os_date_result1) do
	os_date_result1[i_2] = tostring(v)
	if #os_date_result1[i_2] <= 1 then
		os_date_result1[i_2] = '0'..v
	end
end
script.Parent.Holder.Top.Text = "%s-%s-%s T%s:%s:%sZ":format(os_date_result1.year, os_date_result1.month, os_date_result1.day, os_date_result1.hour, os_date_result1.min, os_date_result1.sec)
if (tick() - tick_result1) % 2 < 1 then
	script.Parent.Recording.Rec.Visible = true
	-- KONSTANTWARNING: GOTO [128] #89
end
-- KONSTANTERROR: [0] 1. Error Block 38 end (CF ANALYSIS FAILED)
-- KONSTANTERROR: [117] 83. Error Block 30 start (CF ANALYSIS FAILED)
script.Parent.Recording.Rec.Visible = false
if (tick() - tick_result1) % 1.5 < 0.75 then
	script.Parent.Vignette.Battery.Image = "http://www.roblox.com/asset/?id=6034983843"
else
	script.Parent.Vignette.Battery.Image = "http://www.roblox.com/asset/?id=6034983854"
end
local _, _, _ = pairs({
	["60"] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17};
	["59"] = {18, 19, 20, 21};
	["58"] = {21, 22};
})
-- KONSTANTERROR: [117] 83. Error Block 30 end (CF ANALYSIS FAILED)