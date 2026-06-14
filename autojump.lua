local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local Playergui = player:WaitForChild("PlayerGui")

local Scrrengui = Instance.new("ScreenGui", Playergui)

local Frame = Instance.new("Frame", Scrrengui)
Frame.Size = UDim2.new(1, 0, 1, 0)
Frame.BackgroundColor3 = Color3.fromRGB(144, 0, 255)
Frame.BackgroundTransparency = 1

local TextButton = Instance.new("TextButton", Frame)
local ativo = false
TextButton.Size = UDim2.new(0, 200, 0, 50)
TextButton.BackgroundTransparency = 0
TextButton.Text = 'speed'

TextButton.Activated:Connect(function()
	ativo = not ativo
	if ativo then
		humanoid.WalkSpeed = 100
	else
		humanoid.WalkSpeed = 16
	end
end)
