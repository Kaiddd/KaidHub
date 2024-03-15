--[[
    If you found this for whatever reason
    1. You can change whatever you want in this and use it without credit, I don't mind
    2. This nametags script was made by Kaede
--]]
if _G.NametagsRan then
    return
end
_G.NametagsRan = true
local plrs = game:GetService("Players")

local UI = game:GetObjects("rbxassetid://9869414318")[1]
math.randomseed(tick())
UI.Name = math.random(10000,99999)

local color = Color3.fromHSV(tick() % 5 / 5, 1, 1)

local rainbow_text = coroutine.wrap(function(tag)
    while tag do
        task.wait()
        tag.TextColor3 = color
    end
end)

local cool = { -- Userid, Title, Color (1 = rainbow, 0 = no rainbow, 2 = pink, 3 = blue, 4 = transgender flag)
    {79685992, "Kaid (Owner)", 4},
    {462238701, "Kaid (Owner)", 4},
    {2777846753, "Kaid (Owner)", 4},
    {1622217181, "Kaid (Owner)", 4},
    {1572849739, "Kaid / Nokia (Owner)", 4},
    {3024474244, "Vil (Owner)", 1},
    {1342893287, "Vil (Owner)", 1}
}

local tws = game:GetService("TweenService")

for i,v in pairs(plrs:GetChildren()) do
    v.CharacterAdded:Connect(function()
        repeat task.wait() until v.Character and v.Character:FindFirstChild("Head")
        for i,a in pairs(cool) do
            if v.UserId == a[1] and v.Character and v.Character:FindFirstChild("Head") then
                local tag = UI:Clone()
                tag.Nameplate.Text = a[2]
                if a[3] == 1 then
                    rainbow_text(tag.Nameplate)
                end
                if a[3] == 4 then
                    tag.Nameplate.UIGradient.Enabled = true
                    tag.Nameplate.UIGradient.Offset = Vector2.new(-.5,-.5)
                    local twi = TweenInfo.new(4,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut,-1,true,0)
                    local tween = tws:Create(tag.Nameplate.UIGradient,twi,{["Offset"]=Vector2.new(.5,.5)})
                    tween:Play()
                end
                if a[3] == 0 then
                    tag.Nameplate.TextColor3 = Color3.fromRGB(255, 255, 255)
                end
                if a[3] == 2 then
                    tag.Nameplate.TextColor3 = Color3.fromRGB(250, 157, 179)
                end
                if a[3] == 3 then
                    tag.Nameplate.TextColor3 = Color3.fromRGB(157, 200, 251)
                end
                tag.Parent = v.Character.Head
            end
        end
    end)
    for i,a in pairs(cool) do
        if v.UserId == a[1] and v.Character and v.Character:FindFirstChild("Head") then
            local tag = UI:Clone()
            tag.Nameplate.Text = a[2]
            if a[3] == 1 then
                rainbow_text(tag.Nameplate)
            end
            if a[3] == 4 then
                tag.Nameplate.UIGradient.Enabled = true
                tag.Nameplate.UIGradient.Offset = Vector2.new(-.5,-.5)
                local twi = TweenInfo.new(4,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut,-1,true,0)
                local tween = tws:Create(tag.Nameplate.UIGradient,twi,{["Offset"]=Vector2.new(.5,.5)})
                tween:Play()
            end
            if a[3] == 0 then
                tag.Nameplate.TextColor3 = Color3.fromRGB(255, 255, 255)
            end
            if a[3] == 2 then
                tag.Nameplate.TextColor3 = Color3.fromRGB(250, 157, 179)
            end
            if a[3] == 3 then
                tag.Nameplate.TextColor3 = Color3.fromRGB(157, 200, 251)
            end
            tag.Parent = v.Character.Head
        end
    end
end

plrs.PlayerAdded:Connect(function(v)
    v.CharacterAdded:Connect(function()
        repeat task.wait() until v.Character and v.Character:FindFirstChild("Head")
        for i,a in pairs(cool) do
            if v.UserId == a[1] and v.Character and v.Character:FindFirstChild("Head") then
                local tag = UI:Clone()
                tag.Nameplate.Text = a[2]
                if a[3] == 1 then
                    rainbow_text(tag.Nameplate)
                end
                if a[3] == 4 then
                    tag.Nameplate.UIGradient.Enabled = true
                    tag.Nameplate.UIGradient.Offset = Vector2.new(-.5,-.5)
                    local twi = TweenInfo.new(4,Enum.EasingStyle.Quad,Enum.EasingDirection.InOut,-1,true,0)
                    local tween = tws:Create(tag.Nameplate.UIGradient,twi,{["Offset"]=Vector2.new(.5,.5)})
                    tween:Play()
                end
                if a[3] == 0 then
                    tag.Nameplate.TextColor3 = Color3.fromRGB(255, 255, 255)
                end
                if a[3] == 2 then
                    tag.Nameplate.TextColor3 = Color3.fromRGB(241, 166, 245)
                end
                if a[3] == 3 then
                    tag.Nameplate.TextColor3 = Color3.fromRGB(157, 200, 251)
                end
                tag.Parent = v.Character.Head
            end
        end
    end)
end)

coroutine.wrap(function()
    while task.wait() do
        color = Color3.fromHSV(tick() % 5 / 5, 1, 1)
    end
end)()
