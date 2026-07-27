loadstring(game:HttpGet("https://github.com/nobody-games-2/Broken-Bones-IV-infinite-money-script.git"))()

-- infinite money

local updateMoney = filtergc("function", {Name = "UpdateMoney"}, true)

updateMoney(99999999999999)

-- auto upgrade

for _,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Gui.Shop.Body.Upgrades.Table:GetChildren()) do
    for _, conn in pairs(getconnections(v.B.MouseButton1Up)) do
        task.spawn(function()
            while wait() do
                conn.Function()
            end
        end)
    end
end
