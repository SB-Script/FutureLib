--[[
  Note: This script seems to be broken atleast when used in an exploit, im trying to figure out why, if you know why please join the Future Hub discord and contact me!

  This script is compatible with Roblox games!
]]

local UsernameESP = {}

function UsernameESP.apply(player)
    if player.Character and player.Character:FindFirstChildOfClass("Humanoid") then
        local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
        humanoid.NameDisplayDistance = 9e9
        humanoid.NameOcclusion = "NoOcclusion"
        humanoid.HealthDisplayDistance = 9e9
        humanoid.HealthDisplayType = "AlwaysOn"
    end
end

function UsernameESP.remove(player)
    if player.Character and player.Character:FindFirstChildOfClass("Humanoid") then
        local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
        humanoid.NameDisplayDistance = 100
        humanoid.NameOcclusion = "EnemyOcclusion"
        humanoid.HealthDisplayDistance = 50
        humanoid.HealthDisplayType = "WhenDamaged"
    end
end

return UsernameESP
