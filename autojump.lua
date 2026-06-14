local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

while true do
    task.wait(1)
    humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
    print("Pulando")
end
