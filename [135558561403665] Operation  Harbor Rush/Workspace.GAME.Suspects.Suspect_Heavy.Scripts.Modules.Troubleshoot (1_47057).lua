-- Name: Troubleshoot
-- Path: game:GetService("Workspace").GAME.Suspects.Suspect_Heavy.Scripts.Modules.Troubleshoot
-- Class: ModuleScript
-- Exploit: Xeno 
-- Time to decompile: 0.2574616000001697 seconds

-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2026-02-18 07:15:29
-- Luau version 6, Types version 3
-- Time taken: 0.005323 seconds

local module = {}
local Parent_upvr = script.Parent.Parent.Parent
local Value_upvr = Parent_upvr.Settings.Debug.Value
function module.visualizePath(arg1) -- Line 9
	--[[ Upvalues[1]:
		[1]: Value_upvr (readonly)
	]]
	if not Value_upvr then
	else
		for i_2, v in ipairs(arg1:GetWaypoints()) do
			local Part_3 = Instance.new("Part")
			Part_3.Size = Vector3.new(1, 1, 1)
			Part_3.CanCollide = false
			Part_3.Shape = Enum.PartType.Ball
			Part_3.Transparency = 0.5
			Part_3.Material = Enum.Material.Neon
			Part_3.BrickColor = BrickColor.Random()
			Part_3.Anchored = true
			Part_3.Position = v.Position
			Part_3.Name = i_2
			Part_3.Parent = script
		end
	end
end
local Part_2_upvr = Instance.new("Part")
if Value_upvr then
	Part_2_upvr.Size = Vector3.new(3, 3, 3)
	Part_2_upvr.CanCollide = false
	Part_2_upvr.Shape = Enum.PartType.Ball
	Part_2_upvr.Transparency = 0.5
	Part_2_upvr.Material = Enum.Material.Neon
	Part_2_upvr.BrickColor = BrickColor.new("Bright bluish green")
	Part_2_upvr.Anchored = true
	Part_2_upvr.Parent = script
end
function module.waypoint(arg1) -- Line 38
	--[[ Upvalues[2]:
		[1]: Value_upvr (readonly)
		[2]: Part_2_upvr (readonly)
	]]
	if not Value_upvr then
	else
		Part_2_upvr.Position = arg1
	end
end
function module.mark(arg1) -- Line 43
	--[[ Upvalues[1]:
		[1]: Value_upvr (readonly)
	]]
	if not Value_upvr then
	else
		local Part = Instance.new("Part")
		Part.Size = Vector3.new(2, 2, 2)
		Part.CanCollide = false
		Part.Shape = Enum.PartType.Ball
		Part.Transparency = 0.5
		Part.Material = Enum.Material.Neon
		Part.BrickColor = BrickColor.new("Really red")
		Part.Anchored = true
		Part.Parent = script
		Part.Position = arg1
	end
end
local module_2_upvr = {}
function initBeams() -- Line 58
	--[[ Upvalues[2]:
		[1]: Parent_upvr (readonly)
		[2]: module_2_upvr (readonly)
	]]
	for _ = 1, 100 do
		local Attachment_5 = Instance.new("Attachment")
		Attachment_5.Parent = workspace.Terrain
		local Attachment = Instance.new("Attachment")
		Attachment.Parent = workspace.Terrain
		local Beam_2 = Instance.new("Beam")
		Beam_2.FaceCamera = true
		Beam_2.Color = ColorSequence.new(Color3.new(0, 1, 0))
		Beam_2.Parent = Parent_upvr.Beams
		Beam_2.Width0 = 0.3
		Beam_2.Width1 = 0.3
		Beam_2.Attachment0 = Attachment_5
		Beam_2.Attachment1 = Attachment
		table.insert(module_2_upvr, {
			beam = Beam_2;
			a0 = Attachment_5;
			a1 = Attachment;
		})
	end
end
if Value_upvr then
	initBeams()
end
local var18_upvw = 1
function module.createBeam(arg1, arg2) -- Line 86
	--[[ Upvalues[3]:
		[1]: Value_upvr (readonly)
		[2]: var18_upvw (read and write)
		[3]: module_2_upvr (readonly)
	]]
	if not Value_upvr then return end
	var18_upvw += 1
	if #module_2_upvr < var18_upvw then
		var18_upvw = 1
	end
	module_2_upvr[var18_upvw].a0.WorldPosition = arg1
	module_2_upvr[var18_upvw].a1.WorldPosition = arg1 + arg2
	return module_2_upvr[var18_upvw].beam
end
function module.newBeam(arg1, arg2) -- Line 101
	local Attachment_3 = Instance.new("Attachment")
	Attachment_3.Parent = workspace.Terrain
	local Attachment_4 = Instance.new("Attachment")
	Attachment_4.Parent = workspace.Terrain
	Attachment_3.WorldPosition = arg1
	Attachment_4.WorldPosition = arg1 + arg2
	local Beam = Instance.new("Beam")
	Beam.Width0 = 0.2
	Beam.Width1 = 0.2
	Beam.Parent = workspace
	Beam.Attachment0 = Attachment_3
	Beam.Attachment1 = Attachment_4
	game:GetService("Debris"):AddItem(Beam, 3)
end
local SelectionBox_upvr = Instance.new("SelectionBox")
if Value_upvr then
	SelectionBox_upvr.Parent = Parent_upvr
	SelectionBox_upvr.Color3 = Color3.new(1, 0, 0)
	SelectionBox_upvr.LineThickness = 0.1
end
function module.selectionBox(arg1) -- Line 129
	--[[ Upvalues[2]:
		[1]: Value_upvr (readonly)
		[2]: SelectionBox_upvr (readonly)
	]]
	if not Value_upvr then
	else
		SelectionBox_upvr.Adornee = arg1
	end
end
local Attachment_2_upvr = Instance.new("Attachment")
function module.createLine(arg1) -- Line 135
	--[[ Upvalues[2]:
		[1]: Value_upvr (readonly)
		[2]: Attachment_2_upvr (readonly)
	]]
	if not Value_upvr then
	else
		Attachment_2_upvr.Parent = arg1
	end
end
return module