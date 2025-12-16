execute if entity @e[type=item,nbt={Item:{id:"minecraft:wither_skeleton_skull",count:1}},distance=..2] run scoreboard players add @s natures_secrets_sapling_grow_heads 5
execute if entity @e[type=item,nbt={Item:{id:"minecraft:wither_skeleton_skull",count:1}},distance=..2] run particle squid_ink ~ ~ ~ 0 0 0 1 1 normal
kill @e[type=item,nbt={Item:{id:"minecraft:wither_skeleton_skull",count:1}},distance=..2]
execute align xyz if score @s natures_secrets_sapling_grow_heads matches 5 run function natures_secrets:entities/item_display/sapling/tree_sapling_grow_2