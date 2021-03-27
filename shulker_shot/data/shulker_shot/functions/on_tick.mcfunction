#Update Arrow
execute as @e[tag=shulker_shot,tag=!vel_recorded] run data modify entity @s NoGravity set value 1b
execute as @e[tag=shulker_shot,tag=!vel_recorded] store result score @s vel_x run data get entity @s Motion[0] 1000
execute as @e[tag=shulker_shot,tag=!vel_recorded] store result score @s vel_y run data get entity @s Motion[1] 1000
execute as @e[tag=shulker_shot,tag=!vel_recorded] store result score @s vel_z run data get entity @s Motion[2] 1000

execute as @e[tag=shulker_shot,tag=vel_recorded] store result entity @s Motion[0] double 0.001 run scoreboard players get @s vel_x
execute as @e[tag=shulker_shot,tag=vel_recorded] store result entity @s Motion[1] double 0.001 run scoreboard players get @s vel_y
execute as @e[tag=shulker_shot,tag=vel_recorded] store result entity @s Motion[2] double 0.001 run scoreboard players get @s vel_z

execute as @e[tag=shulker_shot,nbt={inGround:1b}] run data modify entity @s NoGravity set value 0b
execute as @e[tag=shulker_shot,nbt={inGround:1b}] run tag @s remove shulker_shot

tag @e[tag=shulker_shot,tag=!vel_recorded] add vel_recorded