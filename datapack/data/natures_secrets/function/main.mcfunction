function natures_secrets:uses/book_turners
execute as @e[type=item,nbt={Item:{id:"minecraft:purple_dye",count:1}}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:clay_ball",count:1}},distance=..1] if block ~ ~ ~ water run function natures_secrets:ground_recipes/black_chalk_2
execute as @e[type=item_display] at @s run function natures_secrets:entities/item_display/circle_identify
execute as @a[tag=natures_secrets_player_sapling_planted_first] run function natures_secrets:entities/player/sapling/sapling_first

execute as @e[tag=natures_secrets_reactor_placer] at @s run function natures_secrets:entities/item_display/reactor/place_0
execute as @e[tag=natures_secrets_bonsai_placer] at @s run function natures_secrets:entities/item_display/bonsai/place_0

execute as @a if score @s natures_secrets_apple_use matches 1.. run scoreboard players remove @s natures_secrets_apple_use 1
execute as @a if score @s natures_secrets_horn_use matches 1.. run scoreboard players remove @s natures_secrets_horn_use 1
execute as @a if score @s natures_secrets_potion_use matches 1.. run scoreboard players remove @s natures_secrets_potion_use 1

execute as @a if score @s natures_secrets_apple_use matches 1.. run function natures_secrets:entities/player/apple