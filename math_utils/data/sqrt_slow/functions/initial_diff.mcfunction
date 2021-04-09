scoreboard players operation @s sqrt_diff *= #four const
scoreboard players operation @s sqrt_divisor *= #two const

execute if score @s sqrt_diff < @s sqrt_target run function sqrt_slow:initial_diff