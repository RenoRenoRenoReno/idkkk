local ItemDrops = workspace.ItemDrops
local Mobs = workspace.Mobs

local Bracket = loadstring(game:HttpGet("https://raw.githubusercontent.com/AlexR32/Bracket/main/BracketV33.lua"))()
local tooldrops
local mobesp

local Window = Bracket:Window({Name = "Incline",Enabled = true,Color = Color3.new(1,0.5,0.25),Size = UDim2.new(0,496,0,496),Position = UDim2.new(0.5,-248,0.5,-248)}) do
	local Tab = Window:Tab({Name = "Tab"}) do
		local ToolDropESP = Tab:Toggle({Name = "ToolDrops ESP",Flag = "Toggle",Side = "Left",Value = false,Callback = function(Toggle_Bool) 
			tooldrops = Toggle_Bool
			while tooldrops == true do
				task.wait(0.05)
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
		local mobsESP = Tab:Toggle({Name = "Mobs ESP", Flag = "ESP",Side = "Left", Value = false, Callback = function(Toggle) 
			mobesp = Toggle
			while mobesp == true do
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
	end
end
