function uuid_utils:get_owner
tag @p[scores={owner_0=0,owner_1=0,owner_2=0,owner_3=0}] add arcane_passenger_new
execute at @p[tag=arcane_passenger_new] run summon armor_stand ~ ~ ~ {Tags:["arcane_stand_new"],NoGravity:1b,Glowing:1b,Invisible:1b,ShowArms:1b,NoBasePlate:1b,DisabledSlots:4144959}

scoreboard players operation @e[tag=arcane_stand_new,limit=1] owner_0 = @p[tag=arcane_passenger_new] uuid_0
scoreboard players operation @e[tag=arcane_stand_new,limit=1] owner_1 = @p[tag=arcane_passenger_new] uuid_1
scoreboard players operation @e[tag=arcane_stand_new,limit=1] owner_2 = @p[tag=arcane_passenger_new] uuid_2
scoreboard players operation @e[tag=arcane_stand_new,limit=1] owner_3 = @p[tag=arcane_passenger_new] uuid_3

execute as @e[tag=arcane_stand_new,limit=1] at @p[tag=arcane_passenger_new] rotated as @p[tag=arcane_passenger_new] run tp @s ~ ~ ~ ~ ~
execute as @p[tag=arcane_passenger_new] run gamemode spectator @s

tag @p[tag=arcane_passenger_new] add arcane_passenger
tag @p[tag=arcane_passenger_new] remove arcane_passenger_new

tag @e[tag=arcane_stand_new] add arcane_stand
tag @e[tag=arcane_stand_new] remove arcane_stand_new

tag @s add has_passenger
