#Update Arrow
execute as @e[tag=arcane_eye,tag=!has_passenger] at @s run function arcane_eye:get_passenger
execute as @e[tag=arcane_eye,tag=has_passenger] at @s run function arcane_eye:move_passenger
execute as @p[tag=arcane_passenger,scores={arcane_sneak=1..}] run function arcane_eye:return
execute as @p[tag=arcane_passenger] at @s unless entity @e[tag=arcane_eye,distance=0...5] run function arcane_eye:return
scoreboard players set @a arcane_sneak 0