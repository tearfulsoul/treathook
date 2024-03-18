local heartbeat = game:GetService("RunService").Heartbeat
local renderstepped = game:GetService("RunService").RenderStepped
local stepped = game:GetService("RunService").Stepped
local Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
local CurrentCamera = game:GetService "Workspace".CurrentCamera
local Mouse = game.Players.LocalPlayer:GetMouse()
local RunService = game:GetService("RunService")
local Players = game:GetService('Players')
local Plr = game.Players.LocalPlayer
local Line = Drawing.new("Line")
local Inset = game:GetService("GuiService"):GetGuiInset().Y
local UserInputService = game:GetService("UserInputService")
local colorcorrection = Instance.new("ColorCorrectionEffect")
colorcorrection.Parent = game.Lighting




local repo = 'https://raw.githubusercontent.com/violin-suzutsuki/LinoriaLib/main/'

local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()
local ThemeManager = loadstring(game:HttpGet(repo .. 'addons/ThemeManager.lua'))()
local SaveManager = loadstring(game:HttpGet(repo .. 'addons/SaveManager.lua'))()

local NotificationHolder = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Module.Lua"))()
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()

Notification:Notify(
    {Title = "treathook", Description = "treathook successfully injected"},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 3, Type = "image"},
    {Image = "http://www.roblox.com/asset/?id=6023426923", ImageColor = Color3.fromRGB(255, 84, 84)}
)


local worldvis = {
    WorldVisuals = {
        MapBrightness = 0,
        MapContrast = 0,
        MapTintColor = Color3.new(1, 1, 1),

    }
}

game:GetService("RunService").RenderStepped:Connect(function()

    if colorcorrection.Brightness ~= worldvis.WorldVisuals.MapBrightness then
        colorcorrection.Brightness = worldvis.WorldVisuals.MapBrightness
    end

    if colorcorrection.Contrast ~= worldvis.WorldVisuals.MapContrast then
        colorcorrection.Contrast = worldvis.WorldVisuals.MapContrast
    end

    if colorcorrection.TintColor ~= worldvis.WorldVisuals.MapTintColor then
        colorcorrection.TintColor = worldvis.WorldVisuals.MapTintColor
    end
end)



---- Dahod moderator ids
local dickface = {
    1830168970,
    29242182,
    4690110040,
    439942262,
    3944434729,
    67819707,
    4545223,
    155627580,
    3520967,
    89473551,
    2395613299,
    244844600,
    808962546,
    201454243,
    28357488,
    822999,
    93101606,
    163721789,
    8195210,
  
 
}






--- booting speed boost

local SpeedSETTINGS = {
    MainToggle = true, 
    Keybind = Enum.KeyCode.Z 
}

local Players = game:GetService('Players')
local LocalPlayer = Players.LocalPlayer

repeat
    wait()
until LocalPlayer.Character

local UserInputService = game:GetService('UserInputService')
local RunService = game:GetService('RunService')

getgenv().Multiplier = 0.5
local masterToggle = SpeedSETTINGS.MainToggle
local isMoving = false -- Flag to track if movement is ongoing

UserInputService.InputBegan:connect(function(input)
    if input.KeyCode == Enum.KeyCode.LeftBracket then
        Multiplier = Multiplier + 0.01
        print(Multiplier)
        wait(0.2)
        while UserInputService:IsKeyDown(Enum.KeyCode.LeftBracket) do
            wait()
            Multiplier = Multiplier + 0.01
            print(Multiplier)
        end
    end
    if input.KeyCode == Enum.KeyCode.RightBracket then
        Multiplier = Multiplier - 0.01
        print(Multiplier)
        wait(0.2)
        while UserInputService:IsKeyDown(Enum.KeyCode.RightBracket) do
            wait()
            Multiplier = Multiplier - 0.01
            print(Multiplier)
        end
    end
    if input.KeyCode == SpeedSETTINGS.Keybind then
        masterToggle = not masterToggle 
        if masterToggle then
            isMoving = true 
            repeat
                LocalPlayer.Character.HumanoidRootPart.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame + LocalPlayer.Character.Humanoid.MoveDirection * Multiplier
                RunService.Stepped:wait()
            until not isMoving
        else
            isMoving = false
        end
    end
end)



-- BOOTING ESP
local Sense = loadstring(game:HttpGet('https://sirius.menu/sense'))()

--LOAD ESP 
Sense.Load()


------------------------- AIMBOT -----------------------------

getgenv().Settings = {
    Main = {
        Enable = true,
 
        HoldKey = false,
        ToggleKey = true,
 
        UseKeyBoardKey = true,
        KeyBoardKey = Enum.KeyCode.Q, -- https://create.roblox.com/docs/reference/engine/enums/KeyCode
 
        UseMouseKey = false,
        ThirdPerson = true,
        FirstPerson = true,
 
        AutoPingSets = false,
 
        UseCircleRadius = false,
        DisableOutSideCircle = false,
 
        UseShake = false,
        ShakePower = 1,
 
        CheckForWalls = false
    },
    Check = {
        CheckIfKo = false, -- This Is For Da Hood
        DisableOnTargetDeath = false,
        DisableOnPlayerDeath = false
    },
    Horizontal = {
        PredictMovement = false,
        PredictionVelocity = 0.17221418
    },
    Smooth = {
        Smoothness = true,
        SmoothnessAmount = 1,
        SmoothMethod = Enum.EasingStyle.Circular,
        SmoothMethodV2 = Enum.EasingDirection.InOut
    },
    Part = {
        AimPart = "Head",
        CheckIfJumpedAimPart = "HumanoidRootPart",
        CheckIfJumped = false,
        GetClosestPart = false
    },
    Resolver = {
        UnderGround = false,
        DetectDesync = false,
        Detection = 75
    },
    Visual = {
        Fov = false,
        FovTransparency = 1,
        FovThickness = 1,
        FovColor = Color3.fromRGB(255, 185, 0),
        FovRadius = 360
    }
}
 

------------- end of aimbot table








----- ANTI SLOW Table
local SlowSettings = {
    AntiSlowEnabled = nil,
}


---ANTI AFK LOAD

local isAntiAFKEnabled = false
local bb = game:GetService('VirtualUser')
local idledConnection

local function enableAntiAFK()
    if isAntiAFKEnabled then return end
    isAntiAFKEnabled = true
    idledConnection = game:GetService('Players').LocalPlayer.Idled:Connect(function()
        bb:CaptureController()
        bb:ClickButton2(Vector2.new())
        wait(2)
    end)
end

local function disableAntiAFK()
    if not isAntiAFKEnabled then return end
    isAntiAFKEnabled = false
    if idledConnection then
        idledConnection:Disconnect()
    end
end

local function toggleAntiAFK()
    if isAntiAFKEnabled then
        disableAntiAFK()
    else
        enableAntiAFK()
    end
end

local AntiAfkToggle = false 






local HoldingSpace = nil
--- NJC Table
local Settings2 = {
    NoJumpCooldownEnabled = nil,
}

-------- BOOTING NOJUMP


local function toggleNoJumpCooldown()
    Settings2.NoJumpCooldownEnabled = not Settings2.NoJumpCooldownEnabled
end


game:GetService("UserInputService").InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.Space then
        toggleNoJumpCooldown()
    end
end)


local TimeTick
TimeTick = hookfunction(wait, function(JumpCooldown)
    if JumpCooldown == 1.5 and Settings2.NoJumpCooldownEnabled then
        return TimeTick()
    end
    return TimeTick(JumpCooldown)
end)




local SpeedSETTINGS = {
    MainToggle = true, 
    Keybind = Enum.KeyCode.Z 
}
repeat
    wait()
until game:IsLoaded()

local Players = game:GetService('Players')
local LocalPlayer = Players.LocalPlayer

repeat
    wait()
until LocalPlayer.Character

local UserInputService = game:GetService('UserInputService')
local RunService = game:GetService('RunService')

getgenv().Multiplier = 0.5
local masterToggle = SpeedSETTINGS.MainToggle
local isMoving = false -- Flag to track if movement is ongoing

UserInputService.InputBegan:connect(function(input)
    if input.KeyCode == Enum.KeyCode.LeftBracket then
        Multiplier = Multiplier + 0.01
        print(Multiplier)
        wait(0.2)
        while UserInputService:IsKeyDown(Enum.KeyCode.LeftBracket) do
            wait()
            Multiplier = Multiplier + 0.01
            print(Multiplier)
        end
    end
    if input.KeyCode == Enum.KeyCode.RightBracket then
        Multiplier = Multiplier - 0.01
        print(Multiplier)
        wait(0.2)
        while UserInputService:IsKeyDown(Enum.KeyCode.RightBracket) do
            wait()
            Multiplier = Multiplier - 0.01
            print(Multiplier)
        end
    end
    if input.KeyCode == SpeedSETTINGS.Keybind then
        masterToggle = not masterToggle 
        if masterToggle then
            isMoving = true 
            repeat
                LocalPlayer.Character.HumanoidRootPart.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame + LocalPlayer.Character.Humanoid.MoveDirection * Multiplier
                RunService.Stepped:wait()
            until not isMoving
        else
            isMoving = false
        end
    end
end)



---- START OF UI 


local Window = Library:CreateWindow({
    Title = 'treathook.lua rewrite | build : dev',
    Center = true,
    AutoShow = true,
    TabPadding = 8,
    MenuFadeTime = 0.2
})


local Tabs = {
    LegitBot = Window:AddTab('LegitBot'),
	Visuals = Window:AddTab('Visuals'),
	Movement = Window:AddTab('Movement'),
	Exploits = Window:AddTab('Exploits'),
    ['UI Settings'] = Window:AddTab('Miscellaneous'),
}


-----////// START OF CAMLOCK TAB

local CamlockTab = Tabs.LegitBot:AddLeftGroupbox('-----Camlock-----')

CamlockTab:AddToggle('MyToggle', {
    Text = 'Enabled',
    Default = false,
    Tooltip = 'Aimbot MasterKey',

    Callback = function(Value)
		getgenv().Settings.Main.Enabled = Value
        print('[cb] MyToggle changed to:', Value)
    end
})


CamlockTab:AddLabel('Keybind'):AddKeyPicker('KeyPicker', {
    Default = 'Q', -- String as the name of the keybind (MB1, MB2 for mouse buttons)
    SyncToggleState = false,


    -- You can define custom Modes but I have never had a use for it.
    Mode = 'Toggle', -- Modes: Always, Toggle, Hold

    Text = 'Camlock Keybind', -- Text to display in the keybind menu
    NoUI = false, -- Set to true if you want to hide from the Keybind menu,

    -- Occurs when the keybind is clicked, Value is `true`/`false`
    Callback = function(Value)
        print('[cb] Keybind clicked!', Value)
    end,

    -- Occurs when the keybind itself is changed, `New` is a KeyCode Enum OR a UserInputType Enum
    ChangedCallback = function(New)
        getgenv().Settings.Main.KeyBoardKey = New
        print('[cb] Keybind changed!', New)
    end
})

CamlockTab:AddToggle('MyToggle', {
    Text = 'Auto Prediction',
    Default = false, 
    Tooltip = 'Aimbot MasterKey',

    Callback = function(Value)
		getgenv().Settings.Main.AutoPingSets = Value
        print('[cb] MyToggle changed to:', Value)
    end
})


CamlockTab:AddToggle('MyToggle', {
    Text = 'Prediction',
    Default = false, 
    Tooltip = 'Prediction MasterKey',

    Callback = function(Value)
		getgenv().Settings.Horizontal.PredictMovement = Value
        print('[cb] MyToggle changed to:', Value)
    end
})


CamlockTab:AddSlider('MySlider', {
    Text = 'Prediction Amount',
    Default = 0.129,
    Min = 0,
    Max = 2,
    Rounding = 4,
    Compact = true,

    Callback = function(Value)
		getgenv().Settings.Horizontal.PredictionVelocity = Value
        print('[cb] MySlider was changed! New value:', Value)
    end
})

CamlockTab:AddToggle('MyToggle', {
    Text = 'Smoothness',
    Default = false, 
    Tooltip = 'Aimbot Smoothness',

    Callback = function(Value)
		getgenv().Settings.Smooth.Smoothness = Value
        print('[cb] MyToggle changed to:', Value)
    end
})

CamlockTab:AddSlider('MySlider', {
    Text = 'Smoothness Amount',
    Default = 0.015,
    Min = 0,
    Max = 1,
    Rounding = 4,
    Compact = true,

    Callback = function(Value)
        getgenv().Settings.Smooth.SmoothnessAmount = Value
        print('[cb] MySlider was changed! New value:', Value)
    end
})

CamlockTab:AddToggle('MyToggle', {
    Text = 'Shake',
    Default = false, 
    Tooltip = 'Shake MasterKey',

    Callback = function(Value)
		getgenv().Settings.Main.UseShake = Value
        print('[cb] MyToggle changed to:', Value)
    end
})

CamlockTab:AddSlider('MySlider', {
    Text = 'Shake Amount',
    Default = 1,
    Min = 0,
    Max = 10,
    Rounding = 1,
    Compact = true,

    Callback = function(Value)
        getgenv().Settings.Main.ShakePower = Value * 3
        print('[cb] MySlider was changed! New value:', Value)
    end
})

CamlockTab:AddDropdown('MyDropdown', {
    Values = { 'Head', 'UpperTorso', 'HumanoidRootPart', 'LowerTorso' },
    Default = 1, -- number index of the value / string
    Multi = false, -- true / false, allows multiple choices to be selected

    Text = 'Hitbox Selection',
    Tooltip = 'Select a Hitbox to Aim at', -- Information shown when you hover over the dropdown

    Callback = function(Value)
        getgenv().Settings.Part.AimPart = Value
        print('[cb] Dropdown got changed. New value:', Value)
    end
})

CamlockTab:AddToggle('MyToggle', {
    Text = 'Different Jump Hitbox',
    Default = false, 
    Tooltip = 'Different Jump Hitbox',

    Callback = function(Value)
		getgenv().Settings.Part.CheckIfJumped = Value
        print('[cb] MyToggle changed to:', Value)
    end
})

CamlockTab:AddDropdown('MyDropdown', {
    Values = { 'Head', 'UpperTorso', 'HumanoidRootPart', 'LowerTorso' },
    Default = 3, -- number index of the value / string
    Multi = false, -- true / false, allows multiple choices to be selected

    Text = 'Jumped Hitbox Selection',
    Tooltip = 'Select a Hitbox to Aim at If Jumped', -- Information shown when you hover over the dropdown

    Callback = function(Value)
        getgenv().Settings.Part.CheckIfJumpedAimPart = Value
        print('[cb] Dropdown got changed. New value:', Value)
    end
})



CamlockTab:AddToggle('MyToggle', {
    Text = 'Resolver',
    Default = false, 
    Tooltip = 'Resolver',

    Callback = function(Value)
        if Value then
		RunService.Heartbeat:Connect(function()
            pcall(function()
                for i,v in pairs(game.Players:GetChildren()) do
                    if v.Name ~= game.Players.LocalPlayer.Name then
                        local hrp = v.Character.HumanoidRootPart
                        hrp.Velocity = Vector3.new(hrp.Velocity.X, 0, hrp.Velocity.Z)
                        hrp.AssemblyLinearVelocity = Vector3.new(hrp.Velocity.X, 0, hrp.Velocity.Z)
                    end
                end
            end)
        end)
    end
        print('[cb] MyToggle changed to:', Value)
    end
})

CamlockTab:AddToggle('MyToggle', {
    Text = 'Underground Resolver',
    Default = false, 
    Tooltip = 'Resolver',

    Callback = function(Value)
        getgenv().Settings.Resolver.UnderGround = Value
        print('[cb] MyToggle changed to:', Value)
    end
})

CamlockTab:AddToggle('MyToggle', {
    Text = 'Detect Desync',
    Default = false, 
    Tooltip = 'Resolver',

    Callback = function(Value)
        getgenv().Settings.Resolver.DetectDesync = Value
        print('[cb] MyToggle changed to:', Value)
    end
})

CamlockTab:AddSlider('MySlider', {
    Text = 'Detection Value',
    Default = 50,
    Min = 40,
    Max = 250,
    Rounding = 0,
    Compact = true,

    Callback = function(Value)
		getgenv().Settings.Resolver.Detection = Value
        print('[cb] MySlider was changed! New value:', Value)
    end
})




----//// FOV TAB FOR CAMLOCK

local FOVTab = Tabs.LegitBot:AddRightGroupbox('FOV Settings')

FOVTab:AddToggle('MyToggle', {
    Text = 'FOV Enabled',
    Default = false, 
    Tooltip = 'FOV MasterKey',

    Callback = function(Value)
		getgenv().Settings.Visual.Fov = Value
        getgenv().Settings.Main.UseCircleRadius = Value
        print('[cb] MyToggle changed to:', Value)
    end
})

FOVTab:AddSlider('MySlider', {
    Text = 'FOV Radius',
    Default = 50,
    Min = 0,
    Max = 1000,
    Rounding = 1,
    Compact = true,

    Callback = function(Value)
		getgenv().Settings.Visual.FovRadius = Value
        print('[cb] MySlider was changed! New value:', Value)
    end
})

FOVTab:AddSlider('MySlider', {
    Text = 'FOV Thickness',
    Default = 1,
    Min = 0,
    Max = 10,
    Rounding = 1,
    Compact = true,

    Callback = function(Value)
		getgenv().Settings.Visual.FovThickness = Value
        print('[cb] MySlider was changed! New value:', Value)
    end
})

FOVTab:AddSlider('MySlider', {
    Text = 'FOV Transparency',
    Default = 1,
    Min = 0,
    Max = 1,
    Rounding = 1,
    Compact = true,

    Callback = function(Value)
		getgenv().Settings.Visual.FovTransparency = Value
        print('[cb] MySlider was changed! New value:', Value)
    end
})

FOVTab:AddLabel('FOV Color'):AddColorPicker('ColorPicker', {
    Default = Color3.new(1, 1, 1), 
    Title = 'FOV Color', 
    Transparency = 0, 

    Callback = function(Value)
		getgenv().Settings.Visual.FovColor = Value
        print('[cb] Color changed!', Value)
    end
})






local ChecksTab = Tabs.LegitBot:AddRightGroupbox('Checks')

ChecksTab:AddToggle('MyToggle', {
    Text = 'Wall Check',
    Default = false, 
    Tooltip = 'Knock Check',

    Callback = function(Value)
		getgenv().Settings.Main.CheckForWalls = Value
        print('[cb] MyToggle changed to:', Value)
    end
})

ChecksTab:AddToggle('MyToggle', {
    Text = 'Knock Check',
    Default = false, 
    Tooltip = 'Knock Check',

    Callback = function(Value)
		getgenv().Settings.Check.CheckIfKo = Value
        print('[cb] MyToggle changed to:', Value)
    end
})

ChecksTab:AddToggle('MyToggle', {
    Text = 'Dead Check',
    Default = false, 
    Tooltip = 'Knock Check',

    Callback = function(Value)
		getgenv().Settings.Check.DisableOnTargetDeath = Value
        print('[cb] MyToggle changed to:', Value)
    end
})

ChecksTab:AddToggle('MyToggle', {
    Text = 'Unlock On Death',
    Default = false, 
    Tooltip = 'Knock Check',

    Callback = function(Value)
		getgenv().Settings.Check.DisableOnPlayerDeath = Value
        print('[cb] MyToggle changed to:', Value)
    end
})

ChecksTab:AddToggle('MyToggle', {
    Text = 'Unlock Outside of FOV Circle',
    Default = false, 
    Tooltip = 'Knock Check',

    Callback = function(Value)
		getgenv().Settings.Main.DisableOutSideCircle = Value
        print('[cb] MyToggle changed to:', Value)
    end
})



------------------- AIMBOT LOADER

---------------------------- NOW BOOTING AIMBOT FUNCS

-- // Locals
 
local Players, Uis, RService, CurrentCamera = 
game:GetService("Players"), 
game:GetService("UserInputService"), 
game:GetService("RunService"),
game:GetService("Workspace").CurrentCamera
 
local Client = Players.LocalPlayer;
 
local Mouse, Camera = Client:GetMouse(), workspace.CurrentCamera
 
local Circle = Drawing.new("Circle")
 
local CF, RNew, Vec3, Vec2 = CFrame.new, Ray.new, Vector3.new, Vector2.new
 
local OldAimPart = getgenv().Settings.Part.AimPart
 
local AimlockTarget, MousePressed, CanNotify = nil, false, false
 
getgenv().UpdateFOV = function()
    if (not Circle) then
        return (Circle)
    end
    Circle.Color = Settings.Visual.FovColor
    Circle.Visible = Settings.Visual.Fov
    Circle.Radius = Settings.Visual.FovRadius
    Circle.Thickness = Settings.Visual.FovThickness
    Circle.Position = Vec2(Mouse.X, Mouse.Y + Inset)
    return (Circle)
end
 
RService.Heartbeat:Connect(UpdateFOV)
 
-- // Functions
 
getgenv().WallCheck = function(destination, ignore)
    local Origin = Camera.CFrame.p
    local CheckRay = RNew(Origin, destination - Origin)
    local Hit = game.workspace:FindPartOnRayWithIgnoreList(CheckRay, ignore)
    return Hit == nil
end
 
getgenv().WTS = function(Object)
    local ObjectVector = Camera:WorldToScreenPoint(Object.Position)
    return Vec2(ObjectVector.X, ObjectVector.Y)
end
 
getgenv().IsOnScreen = function(Object)
    local IsOnScreen = Camera:WorldToScreenPoint(Object.Position)
    return IsOnScreen
end
 
getgenv().FilterObjs = function(Object)
    if string.find(Object.Name, "Gun") then
        return
    end
    if table.find({"Part", "MeshPart", "BasePart"}, Object.ClassName) then
        return true
    end
end
 
getgenv().GetClosestBodyPart = function(character)
    local ClosestDistance = 1 / 0
    local BodyPart = nil
    if (character and character:GetChildren()) then
        for _, x in next, character:GetChildren() do
            if FilterObjs(x) and IsOnScreen(x) then
                local Distance = (WTS(x) - Vec2(Mouse.X, Mouse.Y)).Magnitude
                if (Circle.Radius > Distance and Distance < ClosestDistance) then
                    ClosestDistance = Distance
                    BodyPart = x
                end
            end
        end
    end
    return BodyPart
end
 
getgenv().WorldToViewportPoint = function(P)
    return Camera:WorldToViewportPoint(P)
end
 
getgenv().WorldToScreenPoint = function(P)
    return Camera.WorldToScreenPoint(Camera, P)
end
 
getgenv().GetObscuringObjects = function(T)
    if T and T:FindFirstChild(getgenv().Settings.Part.AimPart) and Client and Client.Character:FindFirstChild("Head") then
        local RayPos =
            workspace:FindPartOnRay(RNew(T[getgenv().Settings.Part.AimPart].Position, Client.Character.Head.Position))
        if RayPos then
            return RayPos:IsDescendantOf(T)
        end
    end
end
 
getgenv().GetNearestTarget = function()
    local AimlockTarget, Closest = nil, 1 / 0
 
    for _, v in pairs(game:GetService("Players"):GetPlayers()) do
        if (v.Character and v ~= Client and v.Character:FindFirstChild("HumanoidRootPart")) then
            local Position, OnScreen = Camera:WorldToScreenPoint(v.Character.HumanoidRootPart.Position)
            local Distance = (Vec2(Position.X, Position.Y) - Vec2(Mouse.X, Mouse.Y)).Magnitude
            if Settings.Main.CheckForWalls then
                if
                    (Circle.Radius > Distance and Distance < Closest and OnScreen and
                        getgenv().WallCheck(v.Character.HumanoidRootPart.Position, {Client, v.Character}))
                 then
                    Closest = Distance
                    AimlockTarget = v
                end
            elseif Settings.Main.UseCircleRadius then
                if
                    (Circle.Radius > Distance and Distance < Closest and OnScreen and
                        getgenv().WallCheck(v.Character.HumanoidRootPart.Position, {Client, v.Character}))
                 then
                    Closest = Distance
                    AimlockTarget = v
                end
            else
                if (Circle.Radius > Distance and Distance < Closest and OnScreen) then
                    Closest = Distance
                    AimlockTarget = v
                end
            end
        end
    end
    return AimlockTarget
end
 
-- // Use KeyBoardKey Function
 
Uis.InputBegan:connect(
    function(input)
        if
            input.KeyCode == Settings.Main.KeyBoardKey and Settings.Main.UseKeyBoardKey == true and
                getgenv().Settings.Main.Enable == true and
                AimlockTarget == nil and
                getgenv().Settings.Main.HoldKey == true
         then
            pcall(
                function()
                    MousePressed = true
                    AimlockTarget = GetNearestTarget()
                end
            )
        end
    end
)Uis.InputEnded:connect(
    function(input)
        if
            input.KeyCode == Settings.Main.KeyBoardKey and getgenv().Settings.Main.HoldKey == true and
                Settings.Main.UseKeyBoardKey == true and
                getgenv().Settings.Main.Enable == true and
                AimlockTarget ~= nil
         then
            AimlockTarget = nil
            MousePressed = false
        end
    end
)
 
Uis.InputBegan:Connect(
    function(keyinput, stupid)
        if
            keyinput.KeyCode == Settings.Main.KeyBoardKey and Settings.Main.UseKeyBoardKey == true and
                getgenv().Settings.Main.Enable == true and
                AimlockTarget == nil and
                getgenv().Settings.Main.ToggleKey == true
         then
            pcall(
                function()
                    MousePressed = true
                    AimlockTarget = GetNearestTarget()
                end
            )
        elseif
            keyinput.KeyCode == Settings.Main.KeyBoardKey and Settings.Main.UseKeyBoardKey == true and
                getgenv().Settings.Main.Enable == true and
                AimlockTarget ~= nil
         then
            AimlockTarget = nil
            MousePressed = false
        end
    end
)
 
-- // Use MouseKey Function
 
Uis.InputBegan:connect(
    function(input)
        if
            input.UserInputType == Settings.Main.MouseKey and Settings.Main.UseMouseKey == true and
                getgenv().Settings.Main.Enable == true and
                AimlockTarget == nil and
                getgenv().Settings.Main.HoldKey == true
         then
            pcall(
                function()
                    MousePressed = true
                    AimlockTarget = GetNearestTarget()
                end
            )
        end
    end
)Uis.InputEnded:connect(
    function(input)
        if
            input.UserInputType == Settings.Main.MouseKey and getgenv().Settings.Main.HoldKey == true and
                Settings.Main.UseMouseKey == true and
                getgenv().Settings.Main.Enable == true and
                AimlockTarget ~= nil
         then
            AimlockTarget = nil
            MousePressed = false
        end
    end
)
 
Uis.InputBegan:Connect(
    function(keyinput, stupid)
        if
            keyinput.UserInputType == Settings.Main.MouseKey and Settings.Main.UseMouseKey == true and
                getgenv().Settings.Main.Enable == true and
                AimlockTarget == nil and
                getgenv().Settings.Main.ToggleKey == true
         then
            pcall(
                function()
                    MousePressed = true
                    AimlockTarget = GetNearestTarget()
                end
            )
        elseif
            keyinput.UserInputType == Settings.Main.MouseKey and Settings.Main.UseMouseKey == true and
                getgenv().Settings.Main.Enable == true and
                AimlockTarget ~= nil
         then
            AimlockTarget = nil
            MousePressed = false
        end
    end
)
 
-- // Main Functions. RunService HeartBeat.
 
task.spawn(
    function()
        while task.wait() do
            if MousePressed == true and getgenv().Settings.Main.Enable == true then
                if AimlockTarget and AimlockTarget.Character then
                    if getgenv().Settings.Part.GetClosestPart == true then
                        getgenv().Settings.Part.AimPart = tostring(GetClosestBodyPart(AimlockTarget.Character))
                    end
                end
                if getgenv().Settings.Main.DisableOutSideCircle == true and AimlockTarget and AimlockTarget.Character then
                    if
                        Circle.Radius <
                            (Vec2(
                                Camera:WorldToScreenPoint(AimlockTarget.Character.HumanoidRootPart.Position).X,
                                Camera:WorldToScreenPoint(AimlockTarget.Character.HumanoidRootPart.Position).Y
                            ) - Vec2(Mouse.X, Mouse.Y)).Magnitude
                     then
                        AimlockTarget = nil
                    end
                end
            end
        end
    end
)
 
RService.Heartbeat:Connect(
    function()
        if getgenv().Settings.Main.Enable == true and MousePressed == true then
            if getgenv().Settings.Main.UseShake == true and AimlockTarget and AimlockTarget.Character then
                pcall(
                    function()
                        local TargetVelv1 = AimlockTarget.Character[getgenv().Settings.Part.AimPart]
                        TargetVelv1.Velocity =
                            Vec3(TargetVelv1.Velocity.X, TargetVelv1.Velocity.Y, TargetVelv1.Velocity.Z) +
                            Vec3(
                                math.random(-getgenv().Settings.Main.ShakePower, getgenv().Settings.Main.ShakePower),
                                math.random(-getgenv().Settings.Main.ShakePower, getgenv().Settings.Main.ShakePower),
                                math.random(-getgenv().Settings.Main.ShakePower, getgenv().Settings.Main.ShakePower)
                            ) *
                                0.1
                        TargetVelv1.AssemblyLinearVelocity =
                            Vec3(TargetVelv1.Velocity.X, TargetVelv1.Velocity.Y, TargetVelv1.Velocity.Z) +
                            Vec3(
                                math.random(-getgenv().Settings.Main.ShakePower, getgenv().Settings.Main.ShakePower),
                                math.random(-getgenv().Settings.Main.ShakePower, getgenv().Settings.Main.ShakePower),
                                math.random(-getgenv().Settings.Main.ShakePower, getgenv().Settings.Main.ShakePower)
                            ) *
                                0.1
                    end
                )
            end
            if getgenv().Settings.Resolver.UnderGround == true and AimlockTarget and AimlockTarget.Character then
                pcall(
                    function()
                        local TargetVelv2 = AimlockTarget.Character[getgenv().Settings.Part.AimPart]
                        TargetVelv2.Velocity = Vec3(TargetVelv2.Velocity.X, 0, TargetVelv2.Velocity.Z)
                        TargetVelv2.AssemblyLinearVelocity = Vec3(TargetVelv2.Velocity.X, 0, TargetVelv2.Velocity.Z)
                    end
                )
            end
            if
                getgenv().Settings.Resolver.DetectDesync == true and AimlockTarget and AimlockTarget.Character and
                    AimlockTarget.Character:WaitForChild("HumanoidRootPart").Velocity.magnitude >
                        getgenv().Settings.Resolver.Detection
             then
                pcall(
                    function()
                        local TargetVel = AimlockTarget.Character[getgenv().Settings.Part.AimPart]
                        TargetVel.Velocity = Vec3(0, 0, 0)
                        TargetVel.AssemblyLinearVelocity = Vec3(0, 0, 0)
                    end
                )
            end
            if getgenv().Settings.Main.ThirdPerson == true and getgenv().Settings.Main.FirstPerson == true then
                if
                    (Camera.Focus.p - Camera.CoordinateFrame.p).Magnitude > 1 or
                        (Camera.Focus.p - Camera.CoordinateFrame.p).Magnitude <= 1
                 then
                    CanNotify = true
                else
                    CanNotify = false
                end
            elseif getgenv().Settings.Main.ThirdPerson == true and getgenv().Settings.Main.FirstPerson == false then
                if (Camera.Focus.p - Camera.CoordinateFrame.p).Magnitude > 1 then
                    CanNotify = true
                else
                    CanNotify = false
                end
            elseif getgenv().Settings.Main.ThirdPerson == false and getgenv().Settings.Main.FirstPerson == true then
                if (Camera.Focus.p - Camera.CoordinateFrame.p).Magnitude <= 1 then
                    CanNotify = true
                else
                    CanNotify = false
                end
            end
            if getgenv().Settings.Main.AutoPingSets == true and getgenv().Settings.Horizontal.PredictionVelocity then
                local pingvalue = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
                local split = string.split(pingvalue, "(")
                local ping = tonumber(split[1])
                if ping > 190 then
                    getgenv().Settings.Horizontal.PredictionVelocity = 0.206547
                elseif ping > 180 then
                    getgenv().Settings.Horizontal.PredictionVelocity = 0.19284
                elseif ping > 170 then
                    getgenv().Settings.Horizontal.PredictionVelocity = 0.1923111
                elseif ping > 160 then
                    getgenv().Settings.Horizontal.PredictionVelocity = 0.1823111
                elseif ping > 150 then
                    getgenv().Settings.Horizontal.PredictionVelocity = 0.171
                elseif ping > 140 then
                    getgenv().Settings.Horizontal.PredictionVelocity = 0.165773
                elseif ping > 130 then
                    getgenv().Settings.Horizontal.PredictionVelocity = 0.1223333
                elseif ping > 120 then
                    getgenv().Settings.Horizontal.PredictionVelocity = 0.143765
                elseif ping > 110 then
                    getgenv().Settings.Horizontal.PredictionVelocity = 0.1455
                elseif ping > 100 then
                    getgenv().Settings.Horizontal.PredictionVelocity = 0.130340
                elseif ping > 90 then
                    getgenv().Settings.Horizontal.PredictionVelocity = 0.136
                elseif ping > 80 then
                    getgenv().Settings.Horizontal.PredictionVelocity = 0.1347
                elseif ping > 70 then
                    getgenv().Settings.Horizontal.PredictionVelocity = 0.119
                elseif ping > 60 then
                    getgenv().Settings.Horizontal.PredictionVelocity = 0.12731
                elseif ping > 50 then
                    getgenv().Settings.Horizontal.PredictionVelocity = 0.127668
                elseif ping > 40 then
                    getgenv().Settings.Horizontal.PredictionVelocity = 0.125
                elseif ping > 30 then
                    getgenv().Settings.Horizontal.PredictionVelocity = 0.11
                elseif ping > 20 then
                    getgenv().Settings.Horizontal.PredictionVelocity = 0.12588
                elseif ping > 10 then
                    getgenv().Settings.Horizontal.PredictionVelocity = 0.9
                end
            end
            if getgenv().Settings.Check.CheckIfKo == true and AimlockTarget and AimlockTarget.Character then
                local KOd = AimlockTarget.Character:WaitForChild("BodyEffects")["K.O"].Value
                local Grabbed = AimlockTarget.Character:FindFirstChild("GRABBING_CONSTRAINT") ~= nil
                if AimlockTarget.Character.Humanoid.health < 1 or KOd or Grabbed then
                    if MousePressed == true then
                        AimlockTarget = nil
                        MousePressed = false
                    end
                end
            end
            if
                getgenv().Settings.Check.DisableOnTargetDeath == true and AimlockTarget and
                    AimlockTarget.Character:FindFirstChild("Humanoid")
             then
                if AimlockTarget.Character.Humanoid.health < 1 then
                    if MousePressed == true then
                        AimlockTarget = nil
                        MousePressed = false
                    end
                end
            end
            if
                getgenv().Settings.Check.DisableOnPlayerDeath == true and Client.Character and
                    Client.Character:FindFirstChild("Humanoid") and
                    Client.Character.Humanoid.health < 1
             then
                if MousePressed == true then
                    AimlockTarget = nil
                    MousePressed = false
                end
            end
            if getgenv().Settings.Part.CheckIfJumped == true and getgenv().Settings.Part.GetClosestPart == false then
                if AimlockTarget and AimlockTarget.Character then
                    if AimlockTarget.Character.Humanoid.FloorMaterial == Enum.Material.Air then
                        getgenv().Settings.Part.AimPart = getgenv().Settings.Part.CheckIfJumpedAimPart
                    else
                        getgenv().Settings.Part.AimPart = OldAimPart
                    end
                end
            end
            if
                AimlockTarget and AimlockTarget.Character and
                    AimlockTarget.Character:FindFirstChild(getgenv().Settings.Part.AimPart)
             then
                if getgenv().Settings.Main.FirstPerson == true then
                    if CanNotify == true then
                        if getgenv().Settings.Horizontal.PredictMovement == true then
                            if getgenv().Settings.Smooth.Smoothness == true then
                                local Main =
                                    CF(
                                    Camera.CFrame.p,
                                    AimlockTarget.Character[getgenv().Settings.Part.AimPart].Position +
                                        AimlockTarget.Character[getgenv().Settings.Part.AimPart].Velocity *
                                            getgenv().Settings.Horizontal.PredictionVelocity
                                )
 
                                Camera.CFrame =
                                    Camera.CFrame:Lerp(
                                    Main,
                                    getgenv().Settings.Smooth.SmoothnessAmount,
                                    Enum.EasingStyle.Elastic,
                                    Enum.EasingDirection.InOut
                                )
                            else
                                Camera.CFrame =
                                    CF(
                                    Camera.CFrame.p,
                                    AimlockTarget.Character[getgenv().Settings.Part.AimPart].Position +
                                        AimlockTarget.Character[getgenv().Settings.Part.AimPart].Velocity *
                                            getgenv().Settings.Horizontal.PredictionVelocity + Vector3
                                )
                            end
                        elseif getgenv().Settings.Horizontal.PredictMovement == false then
                            if getgenv().Settings.Smooth.Smoothness == true then
                                local Main =
                                    CF(
                                    Camera.CFrame.p,
                                    AimlockTarget.Character[getgenv().Settings.Part.AimPart].Position
                                )
                                Camera.CFrame =
                                    Camera.CFrame:Lerp(
                                    Main,
                                    getgenv().Settings.Smooth.SmoothnessAmount,
                                    getgenv().Settings.Smooth.SmoothMethod,
                                    getgenv().Settings.Smooth.SmoothMethodV2
                                )
                            else
                                Camera.CFrame =
                                    CF(
                                    Camera.CFrame.p,
                                    AimlockTarget.Character[getgenv().Settings.Part.AimPart].Position
                                )
                            end
                        end
                    end
                end
            end
        end
    end
)


----------------------------------------------- END OF AIMBOT

--- START FOR VISUALS TAB
local LeftGroupBox = Tabs.Visuals:AddLeftGroupbox('Main')
LeftGroupBox:AddToggle('MyToggle', {
    Text = 'Enable',
    Default = false, 
    Tooltip = 'ESP MasterKey',

    Callback = function(Value)
		Sense.teamSettings.enemy.enabled = Value
        print('[cb] MyToggle changed to:', Value)
    end
})

LeftGroupBox:AddToggle('MyToggle', {
    Text = 'Name',
    Default = false, 
    Tooltip = 'Name', 

    Callback = function(Value)
		Sense.teamSettings.enemy.name = Value
        print('[cb] MyToggle changed to:', Value)
    end
})

LeftGroupBox:AddToggle('MyToggle', {
    Text = 'Box',
    Default = false,
    Tooltip = 'Box', 

    Callback = function(Value)
		Sense.teamSettings.enemy.box = Value
        print('[cb] MyToggle changed to:', Value)
    end
})



LeftGroupBox:AddToggle('MyToggle', {
    Text = 'Box Outline',
    Default = false,
    Tooltip = 'Box Outline', 

    Callback = function(Value)
		Sense.teamSettings.enemy.boxOutline = Value
        print('[cb] MyToggle changed to:', Value)
    end
})

LeftGroupBox:AddToggle('MyToggle', {
    Text = 'Box Fill',
    Default = false, 
    Tooltip = 'Box Fill', 

    Callback = function(Value)
		Sense.teamSettings.enemy.boxFill = Value
        print('[cb] MyToggle changed to:', Value)
    end
})


LeftGroupBox:AddToggle('MyToggle', {
    Text = 'Health Bar',
    Default = false, 
    Tooltip = 'Health Bar', 

    Callback = function(Value)
		Sense.teamSettings.enemy.healthBar = Value
        print('[cb] MyToggle changed to:', Value)
    end
})

LeftGroupBox:AddToggle('MyToggle', {
    Text = 'Health Bar Outline',
    Default = false,
    Tooltip = 'Health Bar Outline', 

    Callback = function(Value)
		Sense.teamSettings.enemy.healthBarOutline = Value
        print('[cb] MyToggle changed to:', Value)
    end
})

LeftGroupBox:AddToggle('MyToggle', {
    Text = 'Health Bar Text',
    Default = false, 
    Tooltip = 'Health Bar Text', 

    Callback = function(Value)
		Sense.teamSettings.enemy.healthText = Value
        print('[cb] MyToggle changed to:', Value)
    end
})


LeftGroupBox:AddToggle('MyToggle', {
    Text = 'Distance',
    Default = false,
    Tooltip = 'Distance', 

    Callback = function(Value)
		Sense.teamSettings.enemy.distance = Value
        print('[cb] MyToggle changed to:', Value)
    end
})

LeftGroupBox:AddToggle('MyToggle', {
    Text = 'Tracers',
    Default = false, 
    Tooltip = 'Tracers', 
    Callback = function(Value)
		Sense.teamSettings.enemy.tracer = Value
        print('[cb] MyToggle changed to:', Value)
    end
})



------//// COLOR TAB
local TabBox = Tabs.Visuals:AddRightTabbox()
local Tab1 = TabBox:AddTab('Colors')
local Tab2 = TabBox:AddTab('Tab 2')

Tab1:AddLabel('Name Color'):AddColorPicker('ColorPicker', {
    Default = Color3.new(1, 1, 1), 
    Title = 'Name Color', 
    Transparency = 0, 

    Callback = function(Value)
		Sense.teamSettings.enemy.nameColor = { Value, 1 }
        print('[cb] Color changed!', Value)
    end
})

Tab1:AddLabel('Box Color'):AddColorPicker('ColorPicker', {
    Default = Color3.new(1, 1, 1), 
    Title = 'Box Color', 
    Transparency = 0, 

    Callback = function(Value)
		Sense.teamSettings.enemy.boxColor[1] = Value
        print('[cb] Color changed!', Value)
    end
})

Tab1:AddLabel('Box Fill Color'):AddColorPicker('ColorPicker', {
    Default = Color3.new(1, 1, 1), -- White
    Title = 'Box Fill Color', 
    Transparency = 0, 

    Callback = function(Value)
		Sense.teamSettings.enemy.boxFillColor = { Value, 0.5 }
        print('[cb] Color changed!', Value)
    end
})


Tab1:AddLabel('Tracer Color'):AddColorPicker('ColorPicker', {
    Default = Color3.new(1, 1, 1), -- White
    Title = 'Tracer Color', 
    Transparency = 0, 

    Callback = function(Value)
		Sense.teamSettings.enemy.tracerColor = { Value, 0.5 }
        print('[cb] Color changed!', Value)
    end
})



-----//// world visual tab

local WorldVisTab = Tabs.Visuals:AddLeftGroupbox('World')

WorldVisTab:AddSlider('MySlider', {
    Text = 'Saturation',
    Default = 1, -- Default to 50 instead of 1, as slider value is in percentage
    Min = 0,
    Max = 50, -- Max is set to 400 to match the 4x multiplier
    Rounding = 1,
    Compact = true,

    Callback = function(Value)
        colorcorrection.Saturation = Value
        print('[cb] MySlider was changed! New value:', Value)
    end
})

WorldVisTab:AddSlider('MySlider', {
    Text = 'Brightness',
    Default = 1, -- Default to 50 instead of 1, as slider value is in percentage
    Min = 0,
    Max = 50, -- Max is set to 400 to match the 4x multiplier
    Rounding = 1,
    Compact = true,

    Callback = function(Value)
        worldvis.WorldVisuals.MapBrightness = Value / 100
        print('[cb] MySlider was changed! New value:', Value)
    end
})

WorldVisTab:AddSlider('MySlider', {
    Text = 'Contrast',
    Default = 1, -- Default to 50 instead of 1, as slider value is in percentage
    Min = 0,
    Max = 50, -- Max is set to 400 to match the 4x multiplier
    Rounding = 1,
    Compact = true,

    Callback = function(Value)
        worldvis.WorldVisuals.MapContrast = Value / 100
        print('[cb] MySlider was changed! New value:', Value)
    end
})


WorldVisTab:AddLabel('World Color'):AddColorPicker('ColorPicker', {
    Default = Color3.new(1, 1, 1), 
    Title = 'World Color', 
    Transparency = 0, 

    Callback = function(Value)
		worldvis.WorldVisuals.MapTintColor = Value
        print('[cb] Color changed!', Value)
    end
})



-----///////// MOVEMENT TAB

local LeftGroupBox = Tabs.Movement:AddLeftGroupbox('Main')

LeftGroupBox:AddToggle('SpeedToggle', {
    Text = 'Speed Boost Enabled',
    Default = false,
    Tooltip = 'Enable or disable speed boost',

    Callback = function(Value)
        SpeedSETTINGS.MainToggle = Value
        masterToggle = Value
        
        print("Speed boost enabled:", Value)
    end
})

-- Slider for adjusting speed multiplier
LeftGroupBox:AddSlider('MySlider', {
    Text = 'Cframe Speed',
    Default = 10, -- Default to 50 instead of 1, as slider value is in percentage
    Min = 1,
    Max = 100, -- Max is set to 400 to match the 4x multiplier
    Rounding = 1,
    Compact = true,

    Callback = function(Value)
        getgenv().Multiplier = Value/100
        print('[cb] MySlider was changed! New value:', Value)
    end
})

-- Keybind picker
LeftGroupBox:AddLabel('Keybind'):AddKeyPicker('KeyPicker', {
    Default = 'Z', -- Default to Z
    SyncToggleState = false,
    Mode = 'Toggle', -- Toggle mode

    Text = 'Speed Boosting', -- Text to display in the keybind menu
    NoUI = false,

    -- Occurs when the keybind is clicked, Value is `true`/`false`
    Callback = function(Value)
        isMoving = Value
        print('[cb] Keybind clicked!', Value)
    end,

    -- Occurs when the keybind itself is changed, `New` is a KeyCode Enum OR a UserInputType Enum
    ChangedCallback = function(New)
        SpeedSETTINGS.Keybind = New
        print('[cb] Keybind changed!', New)
    end
})


---///////    EXPLOITS TAB

local ExpTab = Tabs.Exploits:AddLeftGroupbox('Exploits')

ExpTab:AddToggle('NoclipToggle', {
    Text = 'Kick on Mod Join',
    Default = false,
    Callback = function(value)
        if value then
        for l, c in pairs(game.Players:GetChildren()) do
            for i, v in pairs(dickface) do
            if c.UserId == v then
            local Vanis = game.Players.LocalPlayer
            Vanis:Kick("Retard Detected")
            end
            end
            end
            game.Players.PlayerAdded:Connect(function(plr)
            for i, v in pairs(dickface) do
            if plr.UserId == v then
            local Vanis = game.Players.LocalPlayer
            Vanis:Kick("Retard Detected")
            end
            end
            end)
        end
        
    end
})

ExpTab:AddToggle('MyToggle', {
    Text = 'Anti-AFK',
    Default = false,
    Tooltip = 'Enable or disable anti-AFK',

    Callback = function(Value)
        AntiAfkToggle = Value
        if AntiAfkToggle then
            enableAntiAFK()
            print('Anti-AFK Enabled')
        else
            disableAntiAFK()
            print('Anti-AFK Disabled')
        end
    end
})



ExpTab:AddToggle('MyToggle', {
    Text = 'Anti-Slowdown',
    Default = false,
    Tooltip = 'Enable/Disable Anti-Slow',

    Callback = function(Value)
        SlowSettings.AntiSlowEnabled = Value
    end
})




ExpTab:AddToggle('MyToggle', {
    Text = 'No Jump Cooldown',
    Default = false,
    Tooltip = 'Enable/Disable No Jump Cooldown',

    Callback = function(Value)
	Settings2.NoJumpCooldownEnabled = Value
    end
})


local player = game.Players.LocalPlayer

local function ToggleNoclip(value)
    if player.Character then
        for _, part in ipairs(player.Character:GetDescendants()) do
            if part:IsA('BasePart') then
                part.CanCollide = not value
            end
        end
    end
end

ExpTab:AddToggle('NoclipToggle', {
    Text = 'Noclip',
    Default = false,
    Callback = function(value)
        ToggleNoclip(value)
    end
})


----- booting anti SLOW
local function toggleAntiSlow()
    SlowSettings.AntiSlowEnabled = not SlowSettings.AntiSlowEnabled
end

local function handleAntiSlow()
    local deletePart = game.Players.LocalPlayer.Character.BodyEffects.Movement:FindFirstChild('NoJumping') or
                      game.Players.LocalPlayer.Character.BodyEffects.Movement:FindFirstChild('ReduceWalk') or
                      game.Players.LocalPlayer.Character.BodyEffects.Movement:FindFirstChild('NoWalkSpeed')
    if deletePart then
        deletePart:Destroy()
    end
    if game.Players.LocalPlayer.Character.BodyEffects.Reload.Value == true then
        game.Players.LocalPlayer.Character.BodyEffects.Reload.Value = false
    end
end

game:GetService("RunService").Heartbeat:Connect(function()
    if SlowSettings.AntiSlowEnabled then
        handleAntiSlow()
    end
end)



local SpooferTabs = Tabs.Exploits:AddRightTabbox()
local MemorySpoof = SpooferTabs:AddTab('Memory Spoofer')
local PingSpoof = SpooferTabs:AddTab('Ping Spoofer')

local MemSettings = {
    range1 = 200,
    range2 = 800,
}

--- mem spoofer
MemorySpoof:AddInput('MyTextbox', {
    Default = '200',
    Numeric = true, -- true / false, only allows numbers
    Finished = true, -- true / false, only calls callback when you press enter

    Text = 'Minimum Amount',
    Tooltip = 'Minimum Amount', -- Information shown when you hover over the textbox

    Placeholder = 'Enter Minimum Memory Value', -- placeholder text when the box is empty
    -- MaxLength is also an option which is the max length of the text

    Callback = function(Value)
        MemSettings.range1 = Value
        print('[cb] Text updated. New text:', Value)
    end
})


MemorySpoof:AddInput('MyTextbox', {
    Default = '500',
    Numeric = true, -- true / false, only allows numbers
    Finished = true, -- true / false, only calls callback when you press enter

    Text = 'Maximum Amount',
    Tooltip = 'Maximum Amount', -- Information shown when you hover over the textbox

    Placeholder = 'Enter Max Memory Value', -- placeholder text when the box is empty
    -- MaxLength is also an option which is the max length of the text

    Callback = function(Value)
        MemSettings.range2 = Value
        print('[cb] Text updated. New text:', Value)
    end
})


-- ping spoofer
local PingSettings = {
    range1 = 50,
    range2 = 100
}

PingSpoof:AddInput('MyTextbox', {
    Default = '50',
    Numeric = true, -- true / false, only allows numbers
    Finished = true, -- true / false, only calls callback when you press enter

    Text = 'Ping MIN',
    Tooltip = 'Ping Amount', -- Information shown when you hover over the textbox

    Placeholder = 'Enter Minimum Ping Amount', -- placeholder text when the box is empty
    -- MaxLength is also an option which is the max length of the text

    Callback = function(Value)
        PingSettings.range1 = Value
        
        print('[cb] Text updated. New text:', Value)
    end
})

PingSpoof:AddInput('MyTextbox', {
    Default = '100',
    Numeric = true, -- true / false, only allows numbers
    Finished = true, -- true / false, only calls callback when you press enter

    Text = 'Ping MAX',
    Tooltip = 'Ping Max Amount', -- Information shown when you hover over the textbox

    Placeholder = 'Enter Max Ping Amount', -- placeholder text when the box is empty
    -- MaxLength is also an option which is the max length of the text

    Callback = function(Value)
        PingSettings.range2 = Value
        
        print('[cb] Text updated. New text:', Value)
    end
})


------------ SPOOFERS ------------

local PingLabel;
for I, Child in next, game.CoreGui.RobloxGui.PerformanceStats:GetChildren() do
    if Child.StatsMiniTextPanelClass.TitleLabel.Text == "Ping" then
        PingLabel = Child.StatsMiniTextPanelClass.ValueLabel;
        break;
    end;
end;

PingLabel:GetPropertyChangedSignal("Text"):Connect(function()
    local RandomPing = math.random(PingSettings.range1, PingSettings.range2)
    RandomPing = RandomPing * 1.23 
    PingLabel.Text = "".. RandomPing .."ms"; -- change this
end);



for __, v in pairs(game.CoreGui.RobloxGui.PerformanceStats:GetChildren()) do
    if v.Name == "PS_Button" and v.StatsMiniTextPanelClass.TitleLabel.Text == "Mem" then
        Memory = v.StatsMiniTextPanelClass.ValueLabel
    end
end

Memory:GetPropertyChangedSignal("Text"):Connect(function()
    local RandomNigger = math.random(MemSettings.range1, MemSettings.range2)
    RandomNigger = RandomNigger * 1.23;
    Memory.Text = "".. RandomNigger .." MB"
end)
------------------------------------



-- Library functions
-- Sets the watermark visibility
Library:SetWatermarkVisibility(true)
local FrameTimer = tick()
local FrameCounter = 0;
local FPS = 60;

local WatermarkConnection = game:GetService('RunService').RenderStepped:Connect(function()
    FrameCounter += 1;

    if (tick() - FrameTimer) >= 1 then
        FPS = FrameCounter;
        FrameTimer = tick();
        FrameCounter = 0;
    end;

    Library:SetWatermark(('treathook.lua rewrite | build : dahood | %s fps | %s ms'):format(
        math.floor(FPS),
        math.floor(game:GetService('Stats').Network.ServerStatsItem['Data Ping']:GetValue())
    ));
end);

Library.KeybindFrame.Visible = false; -- todo: add a function for this

Library:OnUnload(function()
    WatermarkConnection:Disconnect()

    print('Unloaded!')
    Library.Unloaded = true
end)

-- UI Settings
local MenuGroup = Tabs['UI Settings']:AddLeftGroupbox('Menu')

-- I set NoUI so it does not show up in the keybinds menu
MenuGroup:AddButton('Unload', function() Library:Unload() end)
local MyButton = MenuGroup:AddButton({
    Text = 'Rejoin Game',
    Func = function()
		game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId)
        print('Rejoining')
    end,
    DoubleClick = false,
    Tooltip = 'Rejoin Game'
})
MenuGroup:AddLabel('Menu bind'):AddKeyPicker('MenuKeybind', { Default = 'End', NoUI = true, Text = 'Menu keybind' })


Library.ToggleKeybind = Options.MenuKeybind -- Allows you to have a custom keybind for the menu



-- Addons:
ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ 'MenuKeybind' })
ThemeManager:SetFolder('TreatHook')
SaveManager:SetFolder('TreatHook/DahoodConfigs')
SaveManager:BuildConfigSection(Tabs['UI Settings'])
ThemeManager:ApplyToTab(Tabs['UI Settings'])
SaveManager:LoadAutoloadConfig()

