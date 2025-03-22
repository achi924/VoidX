-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Topbar = Instance.new("Folder")
local TextLabel = Instance.new("TextLabel")
local item = Instance.new("Folder")
local ScrollingFrame = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local Close = Instance.new("ImageButton") -- Fixed object type
local UIStroke = Instance.new("UIStroke")

local TweenService = game:GetService("TweenService")
local MarketplaceService = game:GetService("MarketplaceService")
local placeId = game.PlaceId
local gameName = "Unknown Game" -- ค่าตั้งต้น ถ้าดึงชื่อไม่ได้

-- พยายามดึงชื่อเกม
pcall(function()
    gameName = MarketplaceService:GetProductInfo(placeId).Name
end)

--Properties:

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.3, 0, -0.5, 0) -- เริ่มจากนอกจอ
Frame.Size = UDim2.new(0, 500, 0, 380)
Frame.Visible = false

UICorner.CornerRadius = UDim.new(0, 10)
UICorner.Parent = Frame

UIStroke.Parent = Frame
UIStroke.Thickness = 2
UIStroke.Color = Color3.fromRGB(50, 50, 50)

Topbar.Name = "Topbar"
Topbar.Parent = Frame

TextLabel.Parent = Topbar
TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.5, 0, 0.04, 0)
TextLabel.Size = UDim2.new(0, 460, 0, 27)
TextLabel.Font = Enum.Font.FredokaOne
TextLabel.Text = gameName .. " Create By VoidX"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 18

item.Name = "item"
item.Parent = Frame

ScrollingFrame.Parent = item
ScrollingFrame.Active = true
ScrollingFrame.AnchorPoint = Vector2.new(0.5, 1)
ScrollingFrame.BackgroundTransparency = 1
ScrollingFrame.Position = UDim2.new(0.5, 0, 1, 0)
ScrollingFrame.Size = UDim2.new(0, 460, 0, 318)
ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 94)
ScrollingFrame.ScrollBarThickness = 2

UIListLayout.Parent = ScrollingFrame
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 5)

-- Close Button
Close.Name = "Close"
Close.Parent = Topbar
Close.AnchorPoint = Vector2.new(0.5, 0.5)
Close.BackgroundTransparency = 1
Close.Position = UDim2.new(0.95, 0, 0.05, 0)
Close.Size = UDim2.new(0, 32, 0, 32)
Close.Image = "rbxassetid://6031094678"
Close.ImageColor3 = Color3.fromRGB(200, 50, 50)

Close.MouseEnter:Connect(function()
    game:GetService("TweenService"):Create(Close, TweenInfo.new(0.2), {Size = UDim2.new(0, 36, 0, 36)}):Play()
end) 
Close.MouseLeave:Connect(function()
    game:GetService("TweenService"):Create(Close, TweenInfo.new(0.2), {Size = UDim2.new(0, 32, 0, 32)}):Play()
end)
Close.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)

-- เมื่อกดปุ่มปิด ทำอนิเมชันยุบ UI ลงก่อนทำลาย
Close.MouseButton1Click:Connect(function()
    local tween = TweenService:Create(Frame, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {Position = UDim2.new(0.3, 0, -0.5, 0)})
    tween:Play()
    tween.Completed:Wait() -- รอให้อนิเมชันเสร็จก่อนลบ
    ScreenGui:Destroy()
end)

-- แสดง UI ด้วย Tween
Frame.Visible = true
TweenService:Create(Frame, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Position = UDim2.new(0.3, 0, 0.2, 0)}):Play()


UIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, UIListLayout.AbsoluteContentSize.Y)
end)
