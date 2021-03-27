kill @e[type=arrow,tag=arcane_eye,sort=nearest,limit=1]
tag @s add arcane_passenger_ret
tag @e[tag=arcane_stand] add arcane_stand_ret

execute as @e[tag=arcane_return] unless score @s owner_0 = @p[tag=arcane_passenger_ret] uuid_0 run tag @s remove arcane_stand_ret
execute as @e[tag=arcane_return] unless score @s owner_1 = @p[tag=arcane_passenger_ret] uuid_1 run tag @s remove arcane_stand_ret
execute as @e[tag=arcane_return] unless score @s owner_2 = @p[tag=arcane_passenger_ret] uuid_2 run tag @s remove arcane_stand_ret
execute as @e[tag=arcane_return] unless score @s owner_3 = @p[tag=arcane_passenger_ret] uuid_3 run tag @s remove arcane_stand_ret

tp @p[tag=arcane_passenger_ret,limit=1] @e[tag=arcane_stand_ret,limit=1]
kill @e[tag=arcane_stand_ret]

gamemode survival @s[nbt={previousPlayerGameType:0}]
gamemode creative @s[nbt={previousPlayerGameType:1}]
gamemode adventure @s[nbt={previousPlayerGameType:2}]

tag @e remove arcane_passenger
tag @e remove arcane_passenger_ret