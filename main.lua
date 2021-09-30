local items = {"Pencil", "Eraser", "Phone", "Banana", "Apple"}
local inventory = {0, 0, 0, 0, 0}
local invQuantity = {0, 0, 0, 0, 0}

function addItems(id, quantity)
    print("Added " .. quantity .. " " .. items[id] .. "(s) to your Inventory")
    placeholderVar = checkInvSlots(id)
    if placeholderVar ~= nil then
        --There is a spot in the inventory that is already this item
    else
        --Input to the latest 0 inv value
        for i = 1, #inventory, 1 do
            if inventory[i] == 0 then
                inventory[i] = id
                invQuantity[i] = invQuantity[i] + quantity
                break
            end
        end
    end
end

function checkInvSlots()
    for i = 1, #inventory, 1 do
        if inventory[i] == id then
            return i
        end
    end
end

addItems(2, 3)
addItems(3, 1)
addItems(2, 10)
addItems(2, 10)
addItems(2, 10)
addItems(2, 10)
addItems(2, 10)

print("Here are all items in your Inventory: " .. inventory[1] .. ", " .. inventory[2] .. ", " .. inventory[3] .. ", " .. inventory[4] .. ", " .. inventory[5])