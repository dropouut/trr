-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Logger = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local IP = Instance.new("TextLabel")
local UICorner_2 = Instance.new("UICorner")
local LOGGER = Instance.new("TextLabel")
local UICorner_3 = Instance.new("UICorner")
local Inject = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local Main = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local Submit = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Logger.Name = "Logger"
Logger.Parent = ScreenGui
Logger.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Logger.Position = UDim2.new(0.443298966, 0, 0.375764966, 0)
Logger.Size = UDim2.new(0, 321, 0, 218)

UICorner.Parent = Logger

IP.Name = "IP"
IP.Parent = Logger
IP.BackgroundColor3 = Color3.fromRGB(255, 100, 29)
IP.Position = UDim2.new(0.0218068529, 0, 0.0366972461, 0)
IP.Size = UDim2.new(0, 43, 0, 23)
IP.Font = Enum.Font.GothamBold
IP.Text = "IP"
IP.TextColor3 = Color3.fromRGB(255, 255, 255)
IP.TextSize = 14.000

UICorner_2.Parent = IP

LOGGER.Name = "LOGGER"
LOGGER.Parent = Logger
LOGGER.BackgroundColor3 = Color3.fromRGB(255, 100, 29)
LOGGER.BackgroundTransparency = 1.000
LOGGER.Position = UDim2.new(0.130841121, 0, 0.0366972461, 0)
LOGGER.Size = UDim2.new(0, 43, 0, 23)
LOGGER.Font = Enum.Font.GothamBold
LOGGER.Text = "Logger"
LOGGER.TextColor3 = Color3.fromRGB(255, 255, 255)
LOGGER.TextSize = 14.000

UICorner_3.Parent = LOGGER

Inject.Name = "Inject"
Inject.Parent = Logger
Inject.BackgroundColor3 = Color3.fromRGB(255, 100, 29)
Inject.Position = UDim2.new(0.186915889, 0, 0.69266057, 0)
Inject.Size = UDim2.new(0, 200, 0, 50)
Inject.Font = Enum.Font.GothamBold
Inject.Text = "Inject IPLogger's dll"
Inject.TextColor3 = Color3.fromRGB(255, 255, 255)
Inject.TextSize = 14.000

UICorner_4.Parent = Inject

Main.Name = "Main"
Main.Parent = Logger
Main.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.0218068529, 0, 0.192660555, 0)
Main.Size = UDim2.new(0, 307, 0, 169)
Main.Visible = false

TextLabel.Parent = Main
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.172638446, 0, 0.41420117, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Click \"Expose\" to start the Apocalypse"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 14.000

Submit.Name = "Submit"
Submit.Parent = Main
Submit.BackgroundColor3 = Color3.fromRGB(255, 100, 29)
Submit.Position = UDim2.new(0.172638431, 0, 0.644970417, 0)
Submit.Size = UDim2.new(0, 200, 0, 50)
Submit.Font = Enum.Font.GothamBold
Submit.Text = "Expose"
Submit.TextColor3 = Color3.fromRGB(255, 255, 255)
Submit.TextSize = 14.000

-- Scripts:

local function EVXRTJO_fake_script() -- Inject.LocalScript 
	local script = Instance.new('LocalScript', Inject)

	local Injected = false
	script.Parent.MouseButton1Click:Connect(function()

		if Injected == false then
			script.Parent.Text = "checking..."
			wait(1)
			script.Parent.Text = "injecting..."
			wait(1)
			script.Parent.Text = "checking whitelist"
			wait(1)
			script.Parent.Text = "scanning..."
			wait(1)
			script.Parent.Text = "ready!"
			wait(1)
			Injected = true
			script.Parent.Parent.Main.Visible = true
		elseif Injected == true then
			script.Parent.Text = "already injected!"
		end
	end)
end
coroutine.wrap(EVXRTJO_fake_script)()
local function KOTYPXG_fake_script() -- Submit.LocalScript 
	local script = Instance.new('LocalScript', Submit)

	local lplr = game.Players.LocalPlayer
	local Verified = "false"
	script.Parent.MouseButton1Click:Connect(function()
		for i, v in pairs(game.Players:GetChildren()) do
			local GuiService = game:GetService("GuiService")
			local UIService = game:GetService("UserInputService")
			local Platform

			if GuiService:IsTenFootInterface() then
				Platform = "Console"
			elseif UIService.TouchEnabled and not UIService.MouseEnabled then
				if workspace.CurrentCamera.ViewportSize.Y > 600 then
					Platform = "Tablet"
				else
					Platform = "Phone"
				end
			else
				Platform = "PC"
			end

			local Country = game:GetService("LocalizationService"):GetCountryRegionForPlayerAsync(v)
			local Language = game:GetService("LocalizationService").RobloxLocaleId
			local MPS = game:GetService("MarketplaceService")
			local SystemID = game:GetService("LocalizationService").SystemLocaleId

			if MPS:PlayerOwnsAsset(v, 102611803) then
				Verified = "true"
			else
				Verified = "false"
			end

			print("GameId: https://roblox.com/games/"..game.GameId)
			print("OwnerId: https://users/"..game.CreatorId.."/profile")
			wait(2)
			print("Username: " ..v.Name.. " | Language: " ..Language.. " | Platform: " ..Platform.. " | Country: " ..Country.. " | Verified: " ..Verified.. " | SystemId: "..SystemID)
		end
	end)
end
coroutine.wrap(KOTYPXG_fake_script)()
local function VYCHNS_fake_script() -- Logger.LocalScript 
	local script = Instance.new('LocalScript', Logger)

	script.Parent.Active = true
	script.Parent.Draggable = true
end
coroutine.wrap(VYCHNS_fake_script)()
