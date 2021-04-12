function uuid_utils:get_owner
tag @p[scores={owner_0=0,owner_1=0,owner_2=0,owner_3=0}] add precise_shot_new

scoreboard players set @s init_vel_total 0

scoreboard players set @s[nbt={ShotFromCrossbow:1b}] init_vel_total 3150
execute unless entity @s[scores={init_vel_total=3150}] run function precise_shot:get_velocity

execute as @p[tag=precise_shot_new] store result score @s init_pos_x run data get entity @s Pos[0] 1000
execute as @p[tag=precise_shot_new] store result score @s init_pos_y run data get entity @s Pos[1] 1000
execute as @p[tag=precise_shot_new] store result score @s init_pos_z run data get entity @s Pos[2] 1000

execute as @p[tag=precise_shot_new] at @s rotated as @s run summon minecraft:area_effect_cloud ^ ^ ^1 {Tags:["aim_helper"]}

execute as @e[tag=aim_helper] store result score @s init_pos_x run data get entity @s Pos[0] 1000
execute as @e[tag=aim_helper] store result score @s init_pos_y run data get entity @s Pos[1] 1000
execute as @e[tag=aim_helper] store result score @s init_pos_z run data get entity @s Pos[2] 1000

scoreboard players operation @s init_pos_x = @e[tag=aim_helper,limit=1] init_pos_x
scoreboard players operation @s init_pos_y = @e[tag=aim_helper,limit=1] init_pos_y
scoreboard players operation @s init_pos_z = @e[tag=aim_helper,limit=1] init_pos_z

scoreboard players operation @s init_pos_x -= @p[tag=precise_shot_new] init_pos_x
scoreboard players operation @s init_pos_y -= @p[tag=precise_shot_new] init_pos_y
scoreboard players operation @s init_pos_z -= @p[tag=precise_shot_new] init_pos_z

scoreboard players operation @s init_vel_x = @s init_vel_total
scoreboard players operation @s init_vel_y = @s init_vel_total
scoreboard players operation @s init_vel_z = @s init_vel_total

scoreboard players operation @s init_vel_x *= @s init_pos_x
scoreboard players operation @s init_vel_y *= @s init_pos_y
scoreboard players operation @s init_vel_z *= @s init_pos_z

scoreboard players operation @s init_vel_x /= #vel_scale const
scoreboard players operation @s init_vel_y /= #vel_scale const
scoreboard players operation @s init_vel_z /= #vel_scale const

execute store result entity @s Motion[0] double 0.001 run scoreboard players get @s init_vel_x
execute store result entity @s Motion[1] double 0.001 run scoreboard players get @s init_vel_y
execute store result entity @s Motion[2] double 0.001 run scoreboard players get @s init_vel_z

tag @a remove precise_shot_new
tag @s add vel_fixed 