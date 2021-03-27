# Find the owner of the arrow and check their hands
function uuid_utils:check_owner
tag @e[scores={owner_0=0,owner_1=0,owner_2=0,owner_3=0},nbt={SelectedItem:{id:"minecraft:bow"}}] add owner_main
tag @e[scores={owner_0=0,owner_1=0,owner_2=0,owner_3=0},nbt={SelectedItem:{id:"minecraft:crossbow"}}] add owner_main
tag @e[tag=!owner_main,scores={owner_0=0,owner_1=0,owner_2=0,owner_3=0},nbt={Inventory:[{Slot:-106b,id:"minecraft:bow"}]}] add owner_off
tag @e[tag=!owner_main,scores={owner_0=0,owner_1=0,owner_2=0,owner_3=0},nbt={Inventory:[{Slot:-106b,id:"minecraft:crossbow"}]}] add owner_off

# Check mainhand
execute if entity @e[tag=owner_main] run data modify entity @s {} merge from entity @e[tag=owner_main,limit=1] SelectedItem.tag.customEnchanting
execute if entity @e[tag=owner_off] run data modify entity @s {} merge from entity @e[tag=owner_off,limit=1] Inventory[{Slot:-106b}].tag.customEnchanting

tag @e remove owner_main
tag @e remove owner_off
tag @s add bow_checked