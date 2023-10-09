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

-- RunService modülünü al
local RunService = game:GetService("RunService")

-- RenderStepped olayına bir işlev bağla
RunService.RenderStepped:Connect(function()
    -- AttacksFolder'ın altındaki tüm nesneleri döngüye al
    for _, item in pairs(AttacksFolder:GetChildren()) do
        -- ItemsToDelete listesindeki tüm isimleri döngüye al
        for _, name in pairs(ItemsToDelete) do
            -- Eğer nesnenin adı listedeki bir isimle eşleşiyorsa
            if item.Name == name then
                -- Nesneyi yok et
                item:Destroy()
                -- Döngüden çık
                break
            end
        end
    end
end)
