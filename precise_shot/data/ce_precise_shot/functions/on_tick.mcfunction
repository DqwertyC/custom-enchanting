# These first lines are for checking the recipe and enchanting the item.
execute as @e[type=experience_bottle] at @s if entity @e[tag=enchanting_table,distance=..2] unless entity @e[tag=precise_shot_charging,distance=..2] run summon minecraft:armor_stand ~ ~ ~ {Tags:["precise_shot_checker"],Invisible:1b}
execute as @e[type=armor_stand,tag=precise_shot_checker] at @s run function ce_precise_shot:check_materials
execute as @e[tag=precise_shot_charging] at @s run function ce_precise_shot:drain_experience