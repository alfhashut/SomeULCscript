local ItemsToDelete = {
    "CharaSlashModel",
    "KnifeWall",
    "KnifeRingModel",
    "StorySlashModel",
    "TouchIt",
    "Warn",
    "FakeSoul",
    "SoulRingModel"
}

local AttacksFolder = game.Workspace:FindFirstChild("Attacks")

spawn(function()
    while true do
        for _, item in pairs(AttacksFolder:GetChildren()) do
            for _, name in pairs(ItemsToDelete) do
                if item.Name == name then
                    item:Destroy()
                    break
                end
            end
        end
    end
end)
