local ItemDrops = workspace.ItemDrops
local Mobs = workspace.Mobs

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/vozoid/scripts/master/uilibrary.lua"))()
local tooldrops
local mobesp
local window = library:window("Incline")
local folder = window:folder("Folder")

folder:toggle({name = "ToolDrop ESP", flag = "tooldropesp",callback = function(tog)
	tooldrops = tog
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
end})
folder:toggle({name = "Mob ESP", flag="mpobesp", callback = function(tog)
	mobesp = tog
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
end})
