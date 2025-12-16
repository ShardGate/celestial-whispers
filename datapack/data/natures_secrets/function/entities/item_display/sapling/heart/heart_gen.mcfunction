#Instead of using Tags, i'd use scoreboards.
#0 = nothing
#1 = Starspawn axe
execute if block ~ ~ ~ observer unless score @s natures_secrets_munch_decider matches 1 run scoreboard players set @s natures_secrets_munch_decider 1
execute if block ~ ~ ~ observer if score @s natures_secrets_munch_decider matches 1 run setblock ~ ~ ~ air

execute if score @s natures_secrets_munch_decider matches 1 run function natures_secrets:entities/item_display/sapling/heart/heart_recipes/starwood_axe_2

#The munchies
execute if score @s natures_secrets_munch_time matches 0 run data merge entity @s {item:{id:"minecraft:honeycomb",count:1,components:{"minecraft:custom_model_data":8123018}}}
execute if score @s natures_secrets_munch_time matches 1.. run data merge entity @s {item:{id:"minecraft:honeycomb",count:1,components:{"minecraft:custom_model_data":8123021}}}
execute if score @s natures_secrets_munch_time matches 2 run function natures_secrets:entities/item_display/sapling/heart/heart_munching
execute if score @s natures_secrets_munch_time matches 1.. run scoreboard players remove @s natures_secrets_munch_time 1
