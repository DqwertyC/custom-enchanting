# These first lines are for checking the recipe and enchanting the item.
execute as @e[type=experience_bottle] at @s if entity @e[tag=enchanting_table,distance=..2] unless entity @e[tag=rabbit_leap_ii_charging,distance=..2] run summon minecraft:armor_stand ~ ~ ~ {Tags:["rabbit_leap_ii_checker"],Invisible:1b}
execute as @e[type=armor_stand,tag=rabbit_leap_ii_checker] at @s run function ce_rabbit_leap_ii:check_materials
execute as @e[tag=rabbit_leap_ii_charging] at @s run function ce_rabbit_leap_ii:drain_experience