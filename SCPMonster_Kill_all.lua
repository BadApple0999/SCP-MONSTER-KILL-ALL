local Back = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
local Prompt = function()
    for i,v in pairs(game.Workspace.Dekorasi:GetChildren()) do
        if v.Name == "Handle" then
            if v.CFrame == CFrame.new(-1083.66052, 4.49962139, 1520.15698, 0, 0, -1, 0, 1, 0, 1, 0, 0) then
                return v.ProximityPrompt
            end
        end
    end
end
function KillAll()
    for i,v in pairs(game.Workspace:GetDescendants()) do
        if v.Name == "Humanoid" and v.Parent.Name ~= game.Players.LocalPlayer.Name then

            if game.Players.LocalPlayer.Character:FindFirstChild("Crystal Micro Uzi") then
                game.Players.LocalPlayer.Character["Crystal Micro Uzi"].Event:FireServer(v, math.huge)

            elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Crystal Micro Uzi") then
                game.Players.LocalPlayer.Backpack["Crystal Micro Uzi"].Event:FireServer(v, math.huge)
            end
        end
    end
end

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1083.73157, 3.02450252, 1515.55859, -0.999925911, -4.51417392e-08, 0.0121708354, -4.47286084e-08, 1, 3.42163275e-08, -0.0121708354, 3.36694086e-08, -0.999925911)
wait(0.5)
fireproximityprompt(Prompt(), 1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-766.341553, 2.99999928, 4.37156296, -0.00617866311, 5.20746681e-08, 0.999980927, -8.22056307e-08, 1, -5.25835944e-08, -0.999980927, -8.25289561e-08, -0.00617866311)
wait(1)
KillAll()