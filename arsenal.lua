-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Aimlock = Instance.new("Frame")
local TANQRSCRIPT = Instance.new("TextLabel")
local TANQRAIM = Instance.new("TextButton")
local PurpleTeam = Instance.new("TextButton")
local ImageLabel = Instance.new("ImageLabel")
local TextLabel = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Aimlock.Name = "Aimlock"
Aimlock.Parent = ScreenGui
Aimlock.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Aimlock.Position = UDim2.new(0.034251675, 0, 0.0638820603, 0)
Aimlock.Size = UDim2.new(0, 368, 0, 263)

TANQRSCRIPT.Name = "Arsenal Aimbot Menu "
TANQRSCRIPT.Parent = Aimlock
TANQRSCRIPT.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TANQRSCRIPT.BorderColor3 = Color3.fromRGB(27, 42, 53)
TANQRSCRIPT.Position = UDim2.new(0, 0, -0.000990283792, 0)
TANQRSCRIPT.Size = UDim2.new(0, 362, 0, 50)
TANQRSCRIPT.Font = Enum.Font.Bangers
TANQRSCRIPT.Text = "Arsenal Aimbot Menu"
TANQRSCRIPT.TextColor3 = Color3.fromRGB(85, 255, 255)
TANQRSCRIPT.TextScaled = true
TANQRSCRIPT.TextSize = 14.000
TANQRSCRIPT.TextWrapped = true

TANQRAIM.Name = "TANQR AIM"
TANQRAIM.Parent = Aimlock
TANQRAIM.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TANQRAIM.Position = UDim2.new(0.0221923646, 0, 0.280032873, 0)
TANQRAIM.Size = UDim2.new(0, 162, 0, 46)
TANQRAIM.Font = Enum.Font.Bangers
TANQRAIM.Text = "Aimbot Click To Turn On" 
TANQRAIM.TextColor3 = Color3.fromRGB(85, 255, 255)
TANQRAIM.TextScaled = true
TANQRAIM.TextSize = 14.000
TANQRAIM.TextWrapped = true
TANQRAIM.MouseButton1Down:connect(function()
	function getplrsname()
		for i,v in pairs(game:GetChildren()) do
			if v.ClassName == "Players" then
				return v.Name
			end
		end
	end
	local players = getplrsname()
	local plr = game[players].LocalPlayer
	coroutine.resume(coroutine.create(function()
		while  wait(1) do
			coroutine.resume(coroutine.create(function()
				for _,v in pairs(game[players]:GetPlayers()) do
					if v.Name ~= plr.Name and v.Character then
						v.Character.RightUpperLeg.CanCollide = false
						v.Character.RightUpperLeg.Transparency = 10
						v.Character.RightUpperLeg.Size = Vector3.new(13,13,13)

						v.Character.LeftUpperLeg.CanCollide = false
						v.Character.LeftUpperLeg.Transparency = 10
						v.Character.LeftUpperLeg.Size = Vector3.new(13,13,13)

						v.Character.HeadHB.CanCollide = false
						v.Character.HeadHB.Transparency = 10
						v.Character.HeadHB.Size = Vector3.new(13,13,13)

						v.Character.HumanoidRootPart.CanCollide = false
						v.Character.HumanoidRootPart.Transparency = 10
						v.Character.HumanoidRootPart.Size = Vector3.new(13,13,13)

					end
				end
			end))
		end
	end))
end)
PurpleTeam.Name = "Purple Team"
PurpleTeam.Parent = Aimlock
PurpleTeam.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
PurpleTeam.Position = UDim2.new(0.550503433, 0, 0.280032873, 0)
PurpleTeam.Size = UDim2.new(0, 165, 0, 46)
PurpleTeam.Font = Enum.Font.Bangers
PurpleTeam.Text = "Purple Team"
PurpleTeam.TextColor3 = Color3.fromRGB(85, 255, 255)
PurpleTeam.TextScaled = true
PurpleTeam.TextSize = 14.000
PurpleTeam.TextWrapped = true
PurpleTeam.MouseButton1Down:connect(function()
	loadstring(game:HttpGet(('https://pastebin.com/raw/pyzjWNhk'),true))()

end)
ImageLabel.Parent = Aimlock
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.Position = UDim2.new(0.399142921, 0, 0.524728835, 0)
ImageLabel.Size = UDim2.new(0, 74, 0, 60)
ImageLabel.Image = "http://www.roblox.com/asset/?id=4761224815"

TextLabel.Parent = Aimlock
TextLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Position = UDim2.new(-0.00107441097, 0, 0.808442593, 0)
TextLabel.Size = UDim2.new(0, 368, 0, 50)
TextLabel.Font = Enum.Font.Bangers
TextLabel.Text = "Made By BaconPastebinScripts On YouTube"
TextLabel.TextColor3 = Color3.fromRGB(85, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

-- Scripts:

local function IRPAKL_fake_script() -- ScreenGui.Script 
	local script = Instance.new('Script', ScreenGui)

	frame = script.Parent.Aimlock -- Take out {}s, and put name of frame
	frame.Draggable = true
	frame.Active = true
	frame.Selectable = true
end
coroutine.wrap(IRPAKL_fake_script)()
