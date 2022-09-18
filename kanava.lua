local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()

local Window = Library.CreateLib("Симулятор падения в Канаву | milanifi.github.io", "Ocean")

-- MAIN
local Main = Window:NewTab("Автофарм")
local AutoFarmSection = Main:NewSection("Автофарм")

AutoFarmSection:NewToggle("Вкл / Выкл", "Автоматически зарабатывает монеты", function(state)
    if state then
        while wait() do
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, -12289, -28, 1, 0, 0, 0, 1, 0, 0, 0, 1)
            end
    else
        local ts = game:GetService("TeleportService")
        local p = game:GetService("Players").LocalPlayer

        ts:Teleport(game.PlaceId, p)

        Notification:Notify(
    {Title = "Выключаю автофарм...", Description = "Это займёт около 5 секунд."},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 5, Type = "default"}
)
    end
end)

local AntiAFKSection = Main:NewSection("АнтиАФК")
AntiAFKSection:NewButton("Запустить", "Отключает кик за 20 минутное бездействие", function()
    local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(1)
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
wait(1)
Notification:Notify(
    {Title = "АнтиАФК запущен", Description = "Теперь тебя не кикнет за 20 минутное бездействие."},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 5, Type = "default"}
)
end)

--Scripts
local Scripts = Window:NewTab("Скрипты")
local AdminSection = Scripts:NewSection("Админ Панель")

AdminSection:NewButton("Infinite Yield", "Админ Панель", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

local Badges = Window:NewTab("Значки")
local BadgesSection = Badges:NewSection("Значки, Бейджи, Достижения")

BadgesSection:NewButton("пук", "Ты зачем пёрнул на ЧИСТЫЙ УНИТАЗ?!", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(54.9689369, 2050.85083, 26.765892, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    Notification:Notify(
    {Title = "Инструкция", Description = "Сядь на унитаз и ничего не делай."},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 5, Type = "default"}
)
end)

BadgesSection:NewButton("69G интернет убивает", "доказано учёными и не только", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(117.257195, 2145.32178, 221.5858, 0.707134247, 0, 0.707079291, 0, 1, 0, -0.707079291, 0, 0.707134247)
end)

-- Teleport
local Teleport = Window:NewTab("Телепорт")
local TeleportSection = Teleport:NewSection("Телепорт")

TeleportSection:NewButton("Дно Канавы", "Дно Канавы", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, -12289, -28, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end)

TeleportSection:NewButton("Белое здание", "Белое здание", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(87, 2075, 24, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end)

TeleportSection:NewButton("Двор", "Двор на другой стороне карты", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-186.699585, 2051.54907, 209.7724, 9.19303566e-05, 7.94512971e-08, 1, -3.79977383e-09, 1, -7.94509418e-08, -1, -3.79246989e-09, 9.19303566e-05)
end)

TeleportSection:NewButton("Крыша", "Крыша дома во дворе", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-207.768982, 2100.49951, 194.064423, -0.654181123, -2.99312468e-08, 0.756337941, -1.03894129e-08, 1, 3.0587767e-08, -0.756337941, 1.21520332e-08, -0.654181123)
end)

-- Misc
local Misc = Window:NewTab("Другое")
local PowerSection = Misc:NewSection("Передвижение")

PowerSection:NewSlider("Скорость", "Скорость персонажа", 200, 1, function(s)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

PowerSection:NewSlider("Прыжок", "Сила прыжка", 150, 1, function(s)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)

local ServerSection = Misc:NewSection("Сервер")

ServerSection:NewButton("Перезайти (Скрипт нужно перезапустить)", "Перезайти на сервер (на этот, не на другой)", function()
    local ts = game:GetService("TeleportService")
    local p = game:GetService("Players").LocalPlayer

    ts:Teleport(game.PlaceId, p)

    Notification:Notify(
    {Title = "Перезахожу на сервер...", Description = "Это займёт около 5 секунд."},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 5, Type = "default"}
)
end)