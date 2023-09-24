-- This script will delete the item with the name "ItemToDelete" multiple times.

local ItemToDelete = game.Workspace:FindFirstChild("ItemToDelete")
local NumberOfTimesToDelete = 9999999999999999 -- This is the number of times that the script will delete the item.

for i = 1, NumberOfTimesToDelete do

    -- Delete the item.
    ItemToDelete:Destroy()

    -- Wait for 1 second.
    wait(1)

end
