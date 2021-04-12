execute store result score @s init_vel_x run data get entity @s Motion[0] 1000
execute store result score @s init_vel_y run data get entity @s Motion[1] 1000
execute store result score @s init_vel_z run data get entity @s Motion[2] 1000

scoreboard players operation @s init_vel_x *= @s init_vel_x
scoreboard players operation @s init_vel_y *= @s init_vel_y
scoreboard players operation @s init_vel_z *= @s init_vel_z

scoreboard players operation @s init_vel_total = @s init_vel_x
scoreboard players operation @s init_vel_total += @s init_vel_y
scoreboard players operation @s init_vel_total += @s init_vel_z

scoreboard players set @s[scores={init_vel_total=8410000..}] init_vel_total 3000

execute unless entity @s[scores={init_vel_total=3000}] run scoreboard players operation @s sqrt_target = @s init_vel_total
execute unless entity @s[scores={init_vel_total=3000}] run function sqrt_slow:calculate
execute unless entity @s[scores={init_vel_total=3000}] run scoreboard players operation @s init_vel_total = @s sqrt_search