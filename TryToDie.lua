local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()

Notification:Notify(
    {Title = "MILANIFI.GITHUB.IO", Description = "PRESS F TO DIE"},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 5, Type = "default"}
)

local uis = game:GetService("UserInputService")

uis.InputBegan:Connect(function(input)
 if input.KeyCode == Enum.KeyCode.F then
  game.Players.LocalPlayer.Character.Humanoid.Health = 0
 end
end)