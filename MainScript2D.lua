-- Silinecek nesnelerin isimlerini bir liste içinde tut
local ItemsToDelete = {
    "DustBlaster",
    "DustBone",
    "DustZone",
    "DustSpinningBone"
}

-- Boss klasörünü bul
local BossFolder = game.Workspace:FindFirstChild("Boss")

-- RunService modülünü al
local RunService = game:GetService("RunService")

-- RenderStepped olayına bir işlev bağla
RunService.RenderStepped:Connect(function()
    -- BossFolder'ın altındaki tüm nesneleri döngüye al
    for _, item in pairs(BossFolder:GetChildren()) do
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
