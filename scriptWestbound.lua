local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/turtle"))()

local OwO = library:Window("Xcx Hub")

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
