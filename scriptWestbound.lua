local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/turtle"))()

local OwO = library:Window("Xcx Hub")

-- OwO:Button("Auto Frame", function()
-- --[[
-- 	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
-- ]]
-- local Players = game:GetService("Players")
-- local Workspace = game:GetService("Workspace")
-- local ReplicatedStorage = game:GetService("ReplicatedStorage")
-- local RunService = game:GetService("RunService")
-- local TweenService = game:GetService("TweenService")
-- local UserInputService = game:GetService("UserInputService")
-- local VirtualUser = game:GetService("VirtualUser")
-- local StatsService = game:GetService("Stats")

-- local localPlayer = Players.LocalPlayer
-- local character = localPlayer.Character or localPlayer.CharacterAdded:Wait()
-- local humanoid = character:FindFirstChildWhichIsA("Humanoid")
-- local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")

-- local bag = localPlayer:WaitForChild("States"):WaitForChild("Bag")
-- local bagSizeLevel = localPlayer:WaitForChild("Stats"):WaitForChild("BagSizeLevel"):WaitForChild("CurrentAmount")
-- local robEvent = ReplicatedStorage:WaitForChild("GeneralEvents"):WaitForChild("Rob")
-- local targetPosition = CFrame.new(1636.62537, 104.349976, -1736.184)

-- if humanoid then
--     local clonedHumanoid = humanoid:Clone()
--     clonedHumanoid.Parent = character
--     localPlayer.Character = nil
--     clonedHumanoid:SetStateEnabled(Enum.HumanoidStateType.Dead, false)
--     clonedHumanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)
--     clonedHumanoid:SetStateEnabled(Enum.HumanoidStateType.Physics, false)
--     humanoid:Destroy()
--     localPlayer.Character = character
--     local camera = Workspace.CurrentCamera
--     camera.CameraSubject = clonedHumanoid
--     camera.CFrame = camera.CFrame
--     clonedHumanoid.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
--     local animate = character:FindFirstChild("Animate")
--     if animate then
--         animate.Disabled = true
--         task.wait(0.07)
--         animate.Disabled = false
--     end
--     clonedHumanoid.Health = clonedHumanoid.MaxHealth
--     humanoid = clonedHumanoid
--     humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
-- end

-- localPlayer.Idled:Connect(function()
--     VirtualUser:CaptureController()
--     VirtualUser:ClickButton2(Vector2.new())
-- end)

-- if getgenv().AntiAfkExecuted and game.CoreGui:FindFirstChild("AutoFarmUI") then
--     getgenv().AntiAfkExecuted = false
--     getgenv().zamanbaslaticisi = false
--     game.CoreGui.AutoFarmUI:Destroy()
-- end

-- getgenv().AntiAfkExecuted = true

-- local AutoFarmUI = Instance.new("ScreenGui")
-- AutoFarmUI.Name = "AutoFarmUI"
-- AutoFarmUI.Parent = game.CoreGui
-- AutoFarmUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

-- local MainFrame = Instance.new("Frame")
-- MainFrame.Parent = AutoFarmUI
-- MainFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
-- MainFrame.BackgroundTransparency = 0.2
-- MainFrame.Position = UDim2.new(0.5, -125, 0.5, -75)
-- MainFrame.Size = UDim2.new(0, 250, 0, 150)
-- MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
-- MainFrame.Visible = false

-- local UICorner = Instance.new("UICorner")
-- UICorner.CornerRadius = UDim.new(0, 10)
-- UICorner.Parent = MainFrame

-- local UIStroke = Instance.new("UIStroke")
-- UIStroke.Thickness = 2
-- UIStroke.Color = Color3.fromRGB(60, 60, 60)
-- UIStroke.Parent = MainFrame

-- local Title = Instance.new("TextLabel")
-- Title.Parent = MainFrame
-- Title.Text = "Money Dupe V.5"
-- Title.TextColor3 = Color3.fromRGB(255, 255, 255)
-- Title.Font = Enum.Font.GothamBold
-- Title.TextSize = 16
-- Title.Size = UDim2.new(1, 0, 0, 30)
-- Title.BackgroundTransparency = 1

-- local CloseButton = Instance.new("TextButton")
-- CloseButton.Parent = MainFrame
-- CloseButton.Text = "X"
-- CloseButton.Font = Enum.Font.GothamBold
-- CloseButton.TextSize = 16
-- CloseButton.TextColor3 = Color3.fromRGB(255, 0, 0)
-- CloseButton.BackgroundTransparency = 1
-- CloseButton.Size = UDim2.new(0, 25, 0, 25)
-- CloseButton.Position = UDim2.new(0.9, 0, 0, 5)

-- local StatsFrame = Instance.new("Frame")
-- StatsFrame.Parent = MainFrame
-- StatsFrame.BackgroundTransparency = 1
-- StatsFrame.Position = UDim2.new(0, 10, 0, 40)
-- StatsFrame.Size = UDim2.new(1, -20, 1, -50)

-- local UIListLayout = Instance.new("UIListLayout")
-- UIListLayout.Parent = StatsFrame
-- UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
-- UIListLayout.Padding = UDim.new(0, 5)

-- local gfgfgfgfgfg = Instance.new("ScreenGui")
-- local aoiwfjuiawjfuiafram = Instance.new("Frame")

-- gfgfgfgfgfg.IgnoreGuiInset = true 
-- gfgfgfgfgfg.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
-- gfgfgfgfgfg.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

-- aoiwfjuiawjfuiafram.Size = UDim2.new(1, 0, 1, 0)
-- aoiwfjuiawjfuiafram.Position = UDim2.new(0, 0, 0, 0)
-- aoiwfjuiawjfuiafram.AnchorPoint = Vector2.new(0, 0)
-- aoiwfjuiawjfuiafram.BackgroundColor3 = Color3.fromRGB(47, 47, 47)
-- aoiwfjuiawjfuiafram.BorderSizePixel = 0
-- aoiwfjuiawjfuiafram.Parent = gfgfgfgfgfg

-- local function createLabel(text, parent)
--     local Label = Instance.new("TextLabel")
--     Label.Parent = parent
--     Label.Text = text
--     Label.TextColor3 = Color3.fromRGB(255, 255, 255)
--     Label.Font = Enum.Font.Gotham
--     Label.TextSize = 14
--     Label.Size = UDim2.new(1, 0, 0, 20)
--     Label.BackgroundTransparency = 1
--     Label.TextXAlignment = Enum.TextXAlignment.Left
--     return Label
-- end

-- local PingLabel = createLabel("Ping: Calculating...", StatsFrame)
-- local CashLabel = createLabel("Earnings: $0", StatsFrame)
-- local FPSLabel = createLabel("FPS: Calculating...", StatsFrame)
-- local TimerLabel = createLabel("Time: 00:00:00", StatsFrame)

-- local function openUI()
--     MainFrame.Visible = true
--     MainFrame.Size = UDim2.new(0, 200, 0, 120)
--     local fadeIn = TweenService:Create(MainFrame, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
--         Size = UDim2.new(0, 250, 0, 150),
--         BackgroundTransparency = 0.2
--     })
--     fadeIn:Play()
-- end

-- local function closeUI()
--     local fadeOut = TweenService:Create(MainFrame, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
--         Size = UDim2.new(0, 200, 0, 120),
--         BackgroundTransparency = 1
--     })
--     fadeOut:Play()
--     fadeOut.Completed:Connect(function()
--         AutoFarmUI:Destroy()
--     end)

--     local ts = game:GetService("TeleportService")

--     local p = game:GetService("Players").LocalPlayer

--     ts:Teleport(game.PlaceId, p)
-- end

-- CloseButton.MouseButton1Click:Connect(closeUI)

-- openUI()

-- local dragging, dragStart, startPos
-- local currentTween
-- local function updateDrag(input)
--     local delta = input.Position - dragStart
--     local targetPos = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
--     if currentTween then
--         currentTween:Cancel()
--     end
--     currentTween = TweenService:Create(MainFrame, TweenInfo.new(0.05, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {Position = targetPos})
--     currentTween:Play()
-- end

-- MainFrame.InputBegan:Connect(function(input)
--     if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
--         dragging = true
--         dragStart = input.Position
--         startPos = MainFrame.Position
--         input.Changed:Connect(function()
--             if input.UserInputState == Enum.UserInputState.End then
--                 dragging = false
--             end
--         end)
--     end
-- end)

-- MainFrame.InputChanged:Connect(function(input)
--     if (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) and dragging then
--         updateDrag(input)
--     end
-- end)

-- UserInputService.InputChanged:Connect(function(input)
--     if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
--         updateDrag(input)
--     end
-- end)

-- task.spawn(function()
--     while task.wait(0.7) do
--         local dt = RunService.RenderStepped:Wait()
--         FPSLabel.Text = "FPS: " .. tostring(math.floor(1 / dt))
--     end
-- end)

-- task.spawn(function()
--     while task.wait(0.7) do
--         local perfStats = StatsService:FindFirstChild("PerformanceStats")
--         if perfStats and perfStats:FindFirstChild("Ping") then
--             PingLabel.Text = "Ping: " .. tostring(math.floor(perfStats.Ping:GetValue())) .. "ms"
--         end
--     end
-- end)

-- local seconds, minutes, hours = 0, 0, 0

-- task.spawn(function()
--     while task.wait(1) do
--         seconds = seconds + 1
--         if seconds >= 60 then
--             seconds = 0
--             minutes = minutes + 1
--         end
--         if minutes >= 60 then
--             minutes = 0
--             hours = hours + 1
--         end
--         TimerLabel.Text = string.format("Time: %02d:%02d:%02d", hours, minutes, seconds)
--     end
-- end)

-- local function formatNumber(n)
--     local formatted = tostring(n)
--     local k
--     while true do
--         formatted, k = string.gsub(formatted, "^(-?%d+)(%d%d%d)", '%1,%2')
--         if k == 0 then break end
--     end
--     return formatted
-- end

-- local function moveToTarget()
--     if humanoidRootPart then
--         humanoidRootPart.CFrame = targetPosition
--     end
-- end

-- local cashRegisters = {}

-- local safes = {}

-- local function updateCaches()
--     for _, child in ipairs(Workspace:GetChildren()) do
--         if child:IsA("Model") then
--             if child.Name == "CashRegister" then
--                 table.insert(cashRegisters, child)
--             elseif child.Name == "Safe" then
--                 table.insert(safes, child)
--             end
--         end
--     end
-- end

-- updateCaches()

-- Workspace.ChildAdded:Connect(function(child)
--     if child:IsA("Model") then
--         if child.Name == "CashRegister" then
--             table.insert(cashRegisters, child)
--         elseif child.Name == "Safe" then
--             table.insert(safes, child)
--         end
--     end
-- end)

-- Workspace.ChildRemoved:Connect(function(child)
--     if child:IsA("Model") then
--         if child.Name == "CashRegister" then
--             for i = #cashRegisters, 1, -1 do
--                 if cashRegisters[i] == child then
--                     table.remove(cashRegisters, i)
--                 end
--             end
--         elseif child.Name == "Safe" then
--             for i = #safes, 1, -1 do
--                 if safes[i] == child then
--                     table.remove(safes, i)
--                 end
--             end
--         end
--     end
-- end)

-- local function checkCashRegister()
--     if bag.Value >= bagSizeLevel.Value then
--         moveToTarget()
--         return false
--     end
--     for i = 1, #cashRegisters do
--         local item = cashRegisters[i]
--         local openPart = item:FindFirstChild("Open")
--         if openPart then
--             humanoidRootPart.CFrame = openPart.CFrame
--             robEvent:FireServer("Register", {
--                 Part = item:FindFirstChild("Union"),
--                 OpenPart = openPart,
--                 ActiveValue = item:FindFirstChild("Active"),
--                 Active = true
--             })
--             return true
--         end
--     end
--     return false
-- end

-- local function checkSafe()
--     if bag.Value >= bagSizeLevel.Value then
--         moveToTarget()
--         return false
--     end
--     for i = 1, #safes do
--         local item = safes[i]
--         if item:FindFirstChild("Amount") and item.Amount.Value > 0 then
--             local safePart = item:FindFirstChild("Safe")
--             if safePart then
--                 humanoidRootPart.CFrame = safePart.CFrame
--                 local openFlag = item:FindFirstChild("Open")
--                 if openFlag and openFlag.Value then
--                     robEvent:FireServer("Safe", item)
--                 else
--                     local openSafe = item:FindFirstChild("OpenSafe")
--                     if openSafe then
--                         openSafe:FireServer("Completed")
--                     end
--                     robEvent:FireServer("Safe", item)
--                 end
--                 return true
--             end
--         end
--     end
--     return false
-- end

-- RunService.RenderStepped:Connect(function()
--     if not checkCashRegister() then
--         checkSafe()
--     end
-- end)

-- local leaderstats = localPlayer:WaitForChild("leaderstats")
-- local cashStat = leaderstats:WaitForChild("$$")
-- local initialCash = cashStat.Value

-- task.spawn(function()
--     while task.wait(0.7) do
--         local earned = cashStat.Value - initialCash
--         CashLabel.Text = "Earnings: $" .. formatNumber(earned)
--     end
-- end)
-- end)

OwO:Toggle("Kill See", false, function(bool)
    local Players = game:GetService("Players")
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local Camera = workspace.CurrentCamera

    local LocalPlayer = Players.LocalPlayer
    local HitEvent = ReplicatedStorage:WaitForChild("GunScripts"):WaitForChild("Events"):WaitForChild("Hit")

    local FOV_RADIUS = 10000
    local COOLDOWN = 0.3
    local lastShot = 0
    _G.SilentAimEnabled = bool -- เปิด/ปิดจาก GUI เท่านั้น
    _G.TeamCheckKillSee = true        -- TeamCheck เปิดอยู่เสมอ

    local ammoMapping = {
        Pistol = "PistolAmmo",
        Rifle = "RifleAmmo",
        Sniper = "SniperAmmo",
        Shotgun = "ShotgunShells",
        SMG = "SMGAmmo",
        AR = "RifleAmmo",
        LMG = "RifleAmmo",
    }

    local function getTool()
        local char = LocalPlayer.Character
        if not char then return end
        return char:FindFirstChildOfClass("Tool") or LocalPlayer.Backpack:FindFirstChildOfClass("Tool")
    end

    -- ✅ ตรวจสอบเป้าหมาย: กัน Civilians เสมอ + เช็คทีมเมื่อเปิด TeamCheck
    local function isValidTarget(player)
        if player == LocalPlayer then return false end
        if not player.Team then return false end
        if player.Team.Name == "Civilians" then return false end
        if _G.TeamCheckKillSee and player.Team == LocalPlayer.Team then
            return false
        end
        return true
    end

    local function getTargetInFOV()
        local closestPlayer
        local shortestDist = math.huge
        local mousePos = game:GetService("UserInputService"):GetMouseLocation()

        for _, player in ipairs(Players:GetPlayers()) do
            if isValidTarget(player) then
                local char = player.Character
                if char then
                    local hrp = char:FindFirstChild("HumanoidRootPart")
                    local hum = char:FindFirstChildOfClass("Humanoid")
                    if hrp and hum and hum.Health > 0 then
                        local screenPos, onScreen = Camera:WorldToViewportPoint(hrp.Position)
                        if onScreen then
                            local dist = (Vector2.new(screenPos.X, screenPos.Y) - mousePos).Magnitude
                            if dist <= FOV_RADIUS and dist < shortestDist then
                                shortestDist = dist
                                closestPlayer = player
                            end
                        end
                    end
                end
            end
        end

        return closestPlayer
    end

    local function shoot()
        if not _G.SilentAimEnabled then return end
        if tick() - lastShot < COOLDOWN then return end

        local tool = getTool()
        if not tool then return end

        local targetPlayer = getTargetInFOV()
        if not targetPlayer then return end

        local char = targetPlayer.Character
        local hrp = char and char:FindFirstChild("HumanoidRootPart")
        local hum = char and char:FindFirstChildOfClass("Humanoid")
        local myHRP = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
        if not hrp or not hum or not myHRP then return end

        local gunType = (tool:FindFirstChild("GunType") and tool.GunType:IsA("StringValue")) and tool.GunType.Value or "Pistol"
        local ammoType = ammoMapping[gunType] or "PistolAmmo"

        local args = { {
            HitPart = hrp,
            HitCallback = "Bullet",
            BulletOwner = LocalPlayer,
            Lifetime = 5e5,
            Speed = 3e6,
            Material = Enum.Material.SmoothPlastic,
            Tool = tool,
            Normal = Vector3.new(0, 1, 0),
            AmmoType = ammoType,
            cframe = CFrame.new(tool.Handle.Position, hrp.Position),
            PlayerRootPos = myHRP.Position,
            ToolName = tool.Name,
            StartTime = tick(),
            MaxDistance = 9e9,
            Shot = nil,
            GunType = gunType,
            HitPosition = hrp.Position,
            HitHum = hum,
            Delay = 0.01,
            RootPosition = hrp.Position
        } }

        HitEvent:FireServer(unpack(args))
        lastShot = tick()
    end

    -- ✅ สร้างลูปยิงอัตโนมัติแบบปลอดภัย (จะหยุดทันทีเมื่อปิด Toggle)
    task.spawn(function()
        while _G.SilentAimEnabled do
            task.wait()
            pcall(shoot)
        end
    end)
end)


OwO:Toggle("NoFallDamage", false, function(bool)
    _G.NoFallDamage = bool
    local old
    old = hookmetamethod(game, "__namecall", function(self, ...)
        local args = {...}
        local method = getnamecallmethod()

        if _G.NoFallDamage and method == "FireServer" and tostring(self) == "ChangeCharacter" then
            if args[1] == "Damage" then
                args[2] = 0 -- ปรับดาเมจเป็น 0
                return old(self, unpack(args))
            end
        end
        
        return old(self, ...)
    end)

end)

local SilentAimEnabled = false
_G.TeamChecksilentAim = true
OwO:Toggle("SilentAim", false, function(enabled)
    SilentAimEnabled = enabled
end)

OwO:Toggle("TeamCheck (Silent Aim)", true, function(bool)
    _G.TeamChecksilentAim = bool
end)
OwO:Toggle("TeamCheck (Kill See)", true, function(bool)
    _G.TeamCheckKillSee = bool
end)

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local UserInputService = game:GetService("UserInputService")
local Camera = workspace.CurrentCamera
local LocalPlayer = Players.LocalPlayer
local HitEvent = ReplicatedStorage:WaitForChild("GunScripts"):WaitForChild("Events"):WaitForChild("Hit")

local ammoMapping = {
    Pistol = "PistolAmmo",
    Rifle = "RifleAmmo",
    Sniper = "SniperAmmo",
    Shotgun = "ShotgunShells",
    SMG = "SMGAmmo",
    AR = "RifleAmmo",
    LMG = "RifleAmmo",
}

local function getTool()
    local char = LocalPlayer.Character
    if not char then return end
    return char:FindFirstChildOfClass("Tool") or LocalPlayer.Backpack:FindFirstChildOfClass("Tool")
end

local function isValidTarget(player)
        if player == LocalPlayer then return false end
        if not player.Team then return false end
        if player.Team.Name == "Civilians" then return false end
        if _G.TeamCheckKillSee and player.Team == LocalPlayer.Team then
            return false
        end
        return true
    end

local function getTargetInFOV()
    local closestPlayer
    local shortestDist = math.huge
    local mousePos = UserInputService:GetMouseLocation()

    for _, player in ipairs(Players:GetPlayers()) do
        if isValidTarget(player) then
            local char = player.Character
            if char then
                local hrp = char:FindFirstChild("HumanoidRootPart")
                local hum = char:FindFirstChildOfClass("Humanoid")
                if hrp and hum and hum.Health > 0 then
                    local screenPos, onScreen = Camera:WorldToViewportPoint(hrp.Position)
                    if onScreen then
                        local dist = (Vector2.new(screenPos.X, screenPos.Y) - mousePos).Magnitude
                        if dist < shortestDist then
                            shortestDist = dist
                            closestPlayer = player
                        end
                    end
                end
            end
        end
    end

    return closestPlayer
end

local function shoot()
    if not SilentAimEnabled then return end

    local tool = getTool()
    if not tool then return end

    local targetPlayer = getTargetInFOV()
    if not targetPlayer then return end

    local char = targetPlayer.Character
    local hrp = char and char:FindFirstChild("HumanoidRootPart")
    local hum = char and char:FindFirstChildOfClass("Humanoid")
    local myHRP = LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    if not hrp or not hum or not myHRP then return end

    local gunType = (tool:FindFirstChild("GunType") and tool.GunType:IsA("StringValue")) and tool.GunType.Value or "Pistol"
    local ammoType = ammoMapping[gunType] or "PistolAmmo"

    local args = { {
        HitPart = hrp,
        HitCallback = "Bullet",
        BulletOwner = LocalPlayer,
        Lifetime = 5e5,
        Speed = 3e6,
        Material = Enum.Material.SmoothPlastic,
        Tool = tool,
        Normal = Vector3.new(0, 1, 0),
        AmmoType = ammoType,
        cframe = CFrame.new(tool.Handle.Position, hrp.Position),
        PlayerRootPos = myHRP.Position,
        ToolName = tool.Name,
        StartTime = tick(),
        MaxDistance = 9e9,
        Shot = nil,
        GunType = gunType,
        HitPosition = hrp.Position,
        HitHum = hum,
        Delay = 0.01,
        RootPosition = hrp.Position
    } }

    HitEvent:FireServer(unpack(args))
end

UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        shoot()
    end
end)
