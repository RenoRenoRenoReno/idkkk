local ItemDrops = workspace.ItemDrops
local Mobs = workspace.Mobs

local lib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/fluxlib.txt")()
_G.closeBind = Enum.KeyCode.Tab
local win = lib:Window("Incline", "Suck my dick!", Color3.fromRGB(21, 19, 19), _G.closeBind)
local tooldrops
local mobesp
local tab = win:Tab("Main UWU~", "http://www.roblox.com/asset/?id=6023426915")

tab:Toggle("ToolDrops ESP", "Allows you see ItemDrops through walls", false, function(t)
	tooldrops = t
	while tooldrops == true do
		task.wait(1)
		for _,item in pairs(ItemDrops:GetChildren()) do
			if (item:FindFirstChild(item.Name.."-highlight")) then
				item[item.Name.."-highlight"]:Destroy()
			end
			local highlight = Instance.new("Highlight", item)
			highlight.Name = item.Name.."-highlight"
			highlight.Enabled = true
			highlight.FillColor = Color3.fromRGB(73, 152, 255)
			highlight.OutlineTransparency = 0
			highlight.FillTransparency = 0
			print(item.Name)
		end
	end
end)

tab:Toggle("Mobs ESP", "Allows you see Mobs through walls", false, function(t)
	tooldrops = t
	while tooldrops == true do
		mobesp = a
		while mobesp == true do
			task.wait(1)
			for _,mob in pairs(Mobs:GetChildren()) do
				if (mob:FindFirstChild(mob.Name.."-highlight")) then
				else
					if (mob:FindFirstChild("Handle")) then
						if (mob.Handle:FindFirstChild(mob.Name.."-highlight")) then
						else
							local highlight = Instance.new("Highlight", mob["Handle"])
							highlight.Name = mob.Name.."-highlight"
							highlight.Enabled = true
							highlight.FillColor = Color3.fromRGB(255, 55, 58)
							highlight.OutlineTransparency = 0
							highlight.FillTransparency = 0
						end
					elseif (mob:FindFirstChild("Cube")) then
						if (mob.Cube:FindFirstChild(mob.Name.."-highlight")) then
						else
							local highlight = Instance.new("Highlight", mob["Cube"])
							highlight.Name = mob.Name.."-highlight"
							highlight.Enabled = true
							highlight.FillColor = Color3.fromRGB(255, 55, 58)
							highlight.OutlineTransparency = 0
							highlight.FillTransparency = 0
						end
					else
						if (mob.Handle:FindFirstChild(mob.Name.."-highlight")) then
						else
							local highlight = Instance.new("Highlight", mob)
							highlight.Name = mob.Name.."-highlight"
							highlight.Enabled = true
							highlight.FillColor = Color3.fromRGB(255, 55, 58)
							highlight.OutlineTransparency = 0
							highlight.FillTransparency = 0
						end
					end
				end
			end
		end
	end
end)
