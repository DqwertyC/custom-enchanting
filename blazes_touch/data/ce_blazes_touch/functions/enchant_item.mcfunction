# Add the "enchantment" to the item. Adding {} to Enchantments makes the item glow.
data modify entity @s[nbt=!{Item:{tag:{BlazesTouch:1b}}}] Item.tag.Enchantments append value {}
data modify entity @s[nbt=!{Item:{tag:{BlazesTouch:1b}}}] Item.tag.display.Lore prepend value "[{\"text\":\"Blaze Touch\",\"italic\":false,\"color\":\"gray\"}]"
data modify entity @s[nbt=!{Item:{tag:{BlazesTouch:1b}}}] Item.tag.BlazesTouch set value 1b

# Remove the items from the surrounding frames
data modify entity @e[type=item_frame,tag=enchanting_slot,nbt={Facing:2b},sort=nearest,limit=1] Item.Count set value 0b
data modify entity @e[type=item_frame,tag=enchanting_slot,nbt={Facing:3b},sort=nearest,limit=1] Item.Count set value 0b
data modify entity @e[type=item_frame,tag=enchanting_slot,nbt={Facing:4b},sort=nearest,limit=1] Item.Count set value 0b
data modify entity @e[type=item_frame,tag=enchanting_slot,nbt={Facing:5b},sort=nearest,limit=1] Item.Count set value 0b

# Make it so players can interract with the frames again.
data modify entity @e[type=item_frame,tag=enchanting_slot,nbt={Facing:1b},sort=nearest,limit=1] Fixed set value 0b
data modify entity @e[type=item_frame,tag=enchanting_slot,nbt={Facing:2b},sort=nearest,limit=1] Fixed set value 0b
data modify entity @e[type=item_frame,tag=enchanting_slot,nbt={Facing:3b},sort=nearest,limit=1] Fixed set value 0b
data modify entity @e[type=item_frame,tag=enchanting_slot,nbt={Facing:4b},sort=nearest,limit=1] Fixed set value 0b
data modify entity @e[type=item_frame,tag=enchanting_slot,nbt={Facing:5b},sort=nearest,limit=1] Fixed set value 0b

# Reset scores and tags.
scoreboard players reset @s xp_filled
tag @s remove blazes_touch_charging