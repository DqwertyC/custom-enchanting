# These first lines are for checking the recipe and enchanting the item.
execute as @e[type=experience_bottle] at @s if entity @e[tag=enchanting_table,distance=..2] unless entity @e[tag=shulker_shot_charging,distance=..2] run summon minecraft:armor_stand ~ ~ ~ {Tags:["shulker_shot_checker"],Invisible:1b}
execute as @e[type=armor_stand,tag=shulker_shot_checker] run function ce_shulker_shot:check_materials
execute as @e[tag=shulker_shot_charging] at @s run function ce_shulker_shot:drain_experience