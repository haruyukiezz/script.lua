local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local Playergui = player:WaitForChild("PlayerGui")

local Scrrengui = Instance.new("ScreenGui", Playergui)

local button = Instance.new("ImageButton", Scrrengui)
local cornerbutton = Instance.new("UICorner", button)
local sound = Instance.new("Sound", Scrrengui)

sound.SoundId = 'rbxassetid://98962816997522'
button.Size = UDim2.new(0, 50, 0, 50)
button.BackgroundColor3 = Color3.fromHSV(0, 0, 1)
button.BorderSizePixel = 0
cornerbutton.CornerRadius = UDim.new(0, 100)
button.Image = 'rbxassetid://18590653205'
button.Position = UDim2.new(0, 10, 0, 10)

local aberto = false
local menuFrame 

button.Activated:Connect(function()
	aberto = not aberto

	if aberto then
		
		menuFrame = Instance.new("ScreenGui", Playergui)

		local Frame = Instance.new("Frame", menuFrame)
		local Uicorner = Instance.new("UICorner", Frame)
		sound:Play()
		Frame.Size = UDim2.new(0, 500, 0, 350)
		Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		Frame.BackgroundTransparency = 0.5
		Frame.AnchorPoint = Vector2.new(0.5, 0.5)
		Frame.Position = UDim2.new(0.5, 0, 0.5, 0)

		Uicorner.CornerRadius = UDim.new(0, 10)

		local TextLabel = Instance.new("TextLabel", Frame)
		local stroke = Instance.new("UIStroke", TextLabel)
		local strokeframe = Instance.new("UIStroke", Frame)

		stroke.Thickness = 1
		strokeframe.Color = Color3.fromHSV(0, 0, 1)

		TextLabel.Size = UDim2.new(0, 200, 0, 50)
		TextLabel.Position = UDim2.new(0, 150, -0.15, 0)
		TextLabel.BackgroundTransparency = 1
		TextLabel.Text = "RyoMenuX"
		TextLabel.TextScaled = true
		TextLabel.TextColor3 = Color3.fromHSV(0, 0.0313725, 1)
		TextLabel.Font = Enum.Font.Fondamento

		local TextButton = Instance.new("TextButton", Frame)
		local cornerbutton = Instance.new("UICorner", TextButton)

		local ativo = false

		TextButton.Size = UDim2.new(0, 50, 0, 50)
		TextButton.BackgroundColor3 = Color3.fromHSV(0, 1, 1)
		TextButton.TextColor3 = Color3.fromHSV(0, 0, 1)
		TextButton.TextScaled = true
		TextButton.Text = "speed"
		TextButton.Font = Enum.Font.FredokaOne

		cornerbutton.CornerRadius = UDim.new(0, 100)

		TextButton.Activated:Connect(function()
			ativo = not ativo

			if ativo then
				TextButton.BackgroundColor3 = Color3.fromHSV(0.297389, 1, 1)
				humanoid.WalkSpeed = 100
			else
				TextButton.BackgroundColor3 = Color3.fromHSV(0, 1, 1)
				humanoid.WalkSpeed = 16
			end
		end)

	else
		
		if menuFrame then
			menuFrame:Destroy()
			menuFrame = nil
		end
	end
end)
