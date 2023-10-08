local ItemsToDelete = {
    "CharaSlashModel",
    "KnifeWall",
    "KnifeRingModel",
    "StorySlashModel"
}

local attacksFolder = game.Workspace:FindFirstChild("attacks")

for _, item in pairs(attacksFolder:GetChildren()) do
    for _, name in pairs(ItemsToDelete) do
        if item.Name == name then
            item:Destroy()
            break
        end
    end
end
