--[[    KINETIC UI

    Author : Blissful#4492
    Finish Date : 26/2/22
    Documentation : https://blissful.gitbook.io/kinetic/
    GitRepo : https://github.com/Blissful4992/Kinetic

]]--
-- lets see if this update it
--GLOCAL VARIABLES

_G.hallows = false
_G.MachineGun = false
_G.HeatSeeker = false
_G.bigDice = false
_G.blackballs = false
_G.autofarm = false

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/Kinetic"))()

local Overrides = {
    Background = Color3.fromRGB(23, 30, 51),
    Section_Background = Color3.fromRGB(18, 23, 38),

    Dark_Borders = Color3.fromRGB(18, 23, 38),
    Light_Borders = Color3.fromRGB(255, 255, 255),

    Text_Color = Color3.fromRGB(235, 235, 235),

    Accent = Color3.fromRGB(255, 81, 0),
    Dark_Accent = Color3.fromRGB(140, 45, 0),
}

local Window = Library.NewWindow({
    Text = "Shadovis Scripts by xs.ar",

    WindowSize = Vector2.new(550, 450),     -- Initial Size of the Window
    WindowPosition = Vector2.new(400, 200), -- Initial Position of the Window

    ThemeOverrides = Overrides,
    Scalable = true, -- Default : True
    
    -- WindowSizeCallback will fire everytime the user changes the size of the UI, 
    -- you can use this to save the size into a config system for example
    WindowSizeCallback = function(new)
        print("You changed the window size to: " .. new.X .. ", " .. new.Y)
    end,

    -- WindowPositionCallback will fire everytime the user moves/drags the UI to a new position, 
    -- you can use this to save the position into a config system for example
    WindowPositionCallback = function(new)
        print("You moved the window to: " .. new.X .. ", " .. new.Y)
    end,

    -- CloseCallback will fire when the user presses the close button on the UI (Top Right)
    CloseCallback = function()
        print("You closed the script !")
    end
})

local Page = Window.NewPage({Text = "Page 1"})
-- BOSSES TP'S

local Section = Page.NewSection({Text = "Autofarm"})

local Toggle = Section.NewToggle({
    Text = "Autofarm",
    Callback = function(bool)
        _G.autofarm = bool
        if bool then
            AutoFarm()
        end
    end, 
    Default = false,
    Description = "Spams Hallowsword Pumpkins when toggled"
})

-- WEAPON SCRIPTS

local Section = Page.NewSection({Text = "Weapon Scripts"})

local Toggle = Section.NewToggle({
    Text = "Hallow Spam",
    Callback = function(bool)
        _G.hallows = bool
        if bool then
            autoHallow()
        end
    end, 
    Default = false,
    Description = "Spams Hallowsword Pumpkins when toggled"
})

local Toggle = Section.NewToggle({
    Text = "MachineGun",
    Callback = function(bool)
        _G.MachineGun = bool
        if bool then
            machineGun()
        end
    end, 
    Default = false,
    Description = "Spams Magicians Rod when toggled"
})

local Toggle = Section.NewToggle({
    Text = "Heat Seekers",
    Callback = function(bool)
        _G.HeatSeeker = bool
        if bool then
            heatSeeker()
        end
    end, 
    Default = false,
    Description = "Spams Magicians Rod when toggled"
})

local Toggle = Section.NewToggle({
    Text = "Big Dice",
    Callback = function(bool)
        _G.bigDice = bool
        if bool then
            BigDice()
        end
    end, 
    Default = false,
    Description = "Spams Big Dice when toggled"
})


local Toggle = Section.NewToggle({
    Text = "Big Dice",
    Callback = function(bool)
        _G.blackballs = bool
        if bool then
            BlackBalls()
        end
    end, 
    Default = false,
    Description = "Spams Big Dice when toggled"
})



-- NOTIFICATIONS

for i = 1, 1 do
    Window.NewNotification({
        Title = "GUI LOADED",
        Body = "Skidded by xs.ar",
        Time = 4
    })
    task.wait(0.2)
end



-- FUNCTIONS


function autoHallow()
spawn (function()
    while _G.hallows == true do
        local args = {
            [1] = "Input",
            [2] = "HallowHallow Greatsword",
            [3] = 0.1,
            [4] = "Hallows"}
        game:GetService("Players").LocalPlayer.Character.Combat.RemoteEvent:FireServer(unpack(args))
        wait(.3)
        end
    end)
end

function machineGun()
    spawn (function()
        while _G.MachineGun == true do
            local args = {
                [1] = "Input",
                [2] = "Magician's Rod",
                [3] = 0,
                [4] = "Fireball"}
            game:GetService("Players").LocalPlayer.Character.Combat.RemoteEvent:FireServer(unpack(args))
            wait(.3)
        end
    end)
end

function heatSeeker()
    spawn (function()
        while _G.HeatSeeker == true do
            local args = {
                [1] = "Input",
                [2] = "GygaxDice of Gygax",
                [3] = 8,
                [4] = "Evil"}
            game:GetService("Players").LocalPlayer.Character.Combat.RemoteEvent:FireServer(unpack(args))
            wait(.3)
        end
    end)
end

function BigDice()
    spawn (function()
        while _G.bigDice == true do
        local args = {
        [1] = "Input",
        [2] = "GygaxDice of Gygax",
        [3] = 7,
        [4] = "Dice"}
        game:GetService("Players").LocalPlayer.Character.Combat.RemoteEvent:FireServer(unpack(args))
        wait(.3)
        end
    end)
end

function BlackBalls()
spawn (function()
    local ohString1 = "Input"
    local ohString2 = "AureusAurelion Hood"
    local ohNumber3 = 20
    local ohString4 = "Darkness"
    workspace.ItzMrMan.Combat.RemoteEvent:FireServer(ohString1, ohString2, ohNumber3, ohString4)
    wait(.3)
    end)
end


function AutoFarm()
    spawn (function()
        while _G.autofarm == true do
        local plr = game.Players.LocalPlayer
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(6337, 2385, 10753) 
        BlackBalls() wait(1.3)
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(6521, 2304, 10758)
        BlackBalls() wait(1.3)
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(6422, 2317, 10832)
        BlackBalls() wait(1.3)
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(6470, 2281, 10933)
        BlackBalls() wait(1.3)
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(6287.25049, 2559.5, 10999.499)
        BlackBalls() wait(1.3)
        plr.Character.HumanoidRootPart.CFrame = CFrame.new(6181.81885, 2290.5, 10891.9053)
        BlackBalls() wait(1.3)
        end
    end)
end

-- 6 locations waiting 1.3seconds each = 7.8seconds rotation time