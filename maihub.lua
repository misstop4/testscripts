local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("MAI HUB", "DarkTheme")

local Tab = Window:NewTab("RESTART")
local Section = Tab:NewSection("Auto RESTART")
Section:NewToggle("Auto RESTART Raid", "Auto RESTART Raid", function(state)
while state do
    wait(10)
    if state then
        getgenv().Toggle = true

local button = game:GetService("Players").LocalPlayer.PlayerGui["Restart Votes"].Frame.Yes
local events = { "MouseButton1Click", "MouseButton1Down", "Activated" }
spawn(function()
    while Toggle do
        task.wait()
        for i, v in pairs(events) do
            for i, v in pairs(getconnections(button[v])) do
                v:Fire()
            end
        end
    end
end)
    else
        print("Toggle Off")
    end
end
end)