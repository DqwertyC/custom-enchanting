function uuid_utils:get_owner
tag @p[scores={owner_0=0,owner_1=0,owner_2=0,owner_3=0}] add precise_shot_new

execute as @p[tag=precise_shot_new] store result score @s init_vel_x run data get entity @s Motion[0] 10000
execute as @p[tag=precise_shot_new] store result score @s init_vel_y run data get entity @s Motion[1] 10000
execute as @p[tag=precise_shot_new] store result score @s init_vel_z run data get entity @s Motion[2] 10000

execute as @p[tag=precise_shot_new] store result score @s init_pos_x run data get entity @s Pos[0] 10000
execute as @p[tag=precise_shot_new] store result score @s init_pos_y run data get entity @s Pos[1] 10000
execute as @p[tag=precise_shot_new] store result score @s init_pos_z run data get entity @s Pos[2] 10000

execute as @p[tag=precise_shot_new] at @s rotated as @s run summon minecraft:area_effect_cloud ^ ^ ^1 {Tags:["aim_helper"]}

execute as @e[tag=aim_helper] store result score @s init_pos_x run data get entity @s Pos[0] 10000
execute as @e[tag=aim_helper] store result score @s init_pos_y run data get entity @s Pos[1] 10000
execute as @e[tag=aim_helper] store result score @s init_pos_z run data get entity @s Pos[2] 10000

