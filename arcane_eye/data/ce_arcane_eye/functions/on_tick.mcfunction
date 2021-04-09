# These first lines are for checking the recipe and enchanting the item.
execute as @e[type=experience_bottle] at @s if entity @e[tag=enchanting_table,distance=..2] unless entity @e[tag=arcane_eye_charging,distance=..2] run summon minecraft:armor_stand ~ ~ ~ {Tags:["arcane_eye_checker"],Invisible:1b}
execute as @e[type=armor_stand,tag=arcane_eye_checker] at @s run function ce_arcane_eye:check_materials
execute as @e[tag=arcane_eye_charging] at @s run function ce_arcane_eye:drain_experience