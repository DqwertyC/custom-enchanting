tag @s remove err_eob
tag @s[scores={sqrt_target=729808895..}] add err_eob
tag @s[scores={sqrt_target=..0}] add err_eob

execute unless entity @s[tag=err_eob] run scoreboard players set @s sqrt_diff 1
execute unless entity @s[tag=err_eob] run scoreboard players set @s sqrt_divisor 1
execute unless entity @s[tag=err_eob] run function sqrt_slow:initial_diff
execute unless entity @s[tag=err_eob] run scoreboard players operation @s sqrt_divisor /= #two const
execute unless entity @s[tag=err_eob] run scoreboard players operation @s sqrt_search = @s sqrt_target
execute unless entity @s[tag=err_eob] run scoreboard players operation @s sqrt_search /= @s sqrt_divisor
execute unless entity @s[tag=err_eob] run function sqrt_slow:binary_search
execute unless entity @s[tag=err_eob] run scoreboard players operation @s sqrt_check = @s sqrt_search
execute unless entity @s[tag=err_eob] run scoreboard players operation @s sqrt_check *= @s sqrt_check
execute unless entity @s[tag=err_eob] run execute if score @s sqrt_check > @s sqrt_target run scoreboard players operation @s sqrt_search -= #one const