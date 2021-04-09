#Update Arrow
execute as @e[tag=precise_shot,tag=vel_fixed] at @s run function precise_shot:fix_velocity


execute as @e[tag=precise_shot,tag=vel_fixed] store result entity @s Motion[0] double 0.001 run scoreboard players get @s vel_x
execute as @e[tag=precise_shot,tag=vel_fixed] store result entity @s Motion[1] double 0.001 run scoreboard players get @s vel_y
execute as @e[tag=precise_shot,tag=vel_fixed] store result entity @s Motion[2] double 0.001 run scoreboard players get @s vel_z

execute as @e[tag=precise_shot,nbt={inGround:1b}] run data modify entity @s NoGravity set value 0b
execute as @e[tag=precise_shot,nbt={inGround:1b}] run tag @s remove precise_shot

tag @e[tag=precise_shot,tag=!vel_recorded] add vel_recorded