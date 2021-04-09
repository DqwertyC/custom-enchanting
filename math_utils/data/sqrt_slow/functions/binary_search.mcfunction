scoreboard players operation @s sqrt_divisor *= #two const

scoreboard players operation @s sqrt_diff = @s sqrt_target
scoreboard players operation @s sqrt_diff /= @s sqrt_divisor
scoreboard players operation @s sqrt_diff += #one const

scoreboard players operation @s sqrt_check = @s sqrt_search
scoreboard players operation @s sqrt_check *= @s sqrt_check

execute if score @s sqrt_check > @s sqrt_target run scoreboard players operation @s sqrt_search -= @s sqrt_diff
execute if score @s sqrt_check < @s sqrt_target run scoreboard players operation @s sqrt_search += @s sqrt_diff

execute if score @s sqrt_diff > #one const run function sqrt_slow:binary_search