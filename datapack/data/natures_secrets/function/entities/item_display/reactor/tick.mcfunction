# Summon Interaction
execute at @s align xyz positioned ~0.5 ~ ~0.5 unless entity @e[tag=natures_secrets_reactor.interact,distance=..0.1] run scoreboard players set @s natures_secrets_munch_time 0
execute at @s align xyz positioned ~0.5 ~ ~0.5 unless entity @e[tag=natures_secrets_reactor.interact,distance=..0.1] run setblock ~ ~ ~ barrier
execute at @s align xyz positioned ~0.5 ~ ~0.5 unless entity @e[tag=natures_secrets_reactor.interact,distance=..0.1] run summon minecraft:interaction ~ ~ ~ {width:1.01f,height:1.01f,Tags:["natures_secrets_reactor.interact"]}

# Interact
execute at @s align xyz positioned ~0.5 ~ ~0.5 if data entity @e[tag=natures_secrets_reactor.interact,distance=..0.1,limit=1,tag=!natures_secrets_munch_decide] interaction unless score @s natures_secrets_munch_decider matches 1 run scoreboard players set @s natures_secrets_munch_decider 1
execute at @s align xyz positioned ~0.5 ~ ~0.5 if data entity @e[tag=natures_secrets_reactor.interact,distance=..0.1,limit=1,tag=!natures_secrets_munch_decide] interaction if score @s natures_secrets_munch_decider matches 1 run scoreboard players set @s natures_secrets_munch_time 10
execute at @s align xyz positioned ~0.5 ~ ~0.5 if data entity @e[tag=natures_secrets_reactor.interact,distance=..0.1,limit=1,tag=!natures_secrets_munch_decide] interaction if score @s natures_secrets_munch_decider matches 1 run tag @e[tag=natures_secrets_reactor.interact,distance=..0.1,limit=1,tag=!natures_secrets_munch_decide] add natures_secrets_munch_decide

# Detect
execute at @s align xyz positioned ~0.5 ~ ~0.5 as @e[tag=natures_secrets_reactor.interact,distance=..0.1,limit=1,tag=natures_secrets_munch_decide] on target if items entity @s weapon.mainhand minecraft:honeycomb[minecraft:custom_data={naturessecrets_scrap:1}] run function natures_secrets:entities/item_display/reactor/check
execute if score @s natures_secrets_munch_time matches 10 run function natures_secrets:entities/item_display/sapling/heart/heart_munching

# Remove Data
execute at @s align xyz positioned ~0.5 ~ ~0.5 as @e[tag=natures_secrets_reactor.interact,distance=..0.1,limit=1] run data remove entity @s interaction

#The munchies
execute if score @s natures_secrets_munch_time matches 0 run data merge entity @s {item:{id:"minecraft:honeycomb",count:1,components:{"minecraft:custom_model_data":8123024}}}
execute if score @s natures_secrets_munch_time matches 1.. run data merge entity @s {item:{id:"minecraft:honeycomb",count:1,components:{"minecraft:custom_model_data":8123025}}}
# execute if score @s natures_secrets_munch_time matches 2 run function natures_secrets:entities/item_display/sapling/heart/heart_munching
execute at @s align xyz positioned ~0.5 ~ ~0.5 if score @s natures_secrets_munch_time matches 2 run tag @e[tag=natures_secrets_reactor.interact,distance=..0.1,limit=1,tag=natures_secrets_munch_decide] remove natures_secrets_munch_decide
execute if score @s natures_secrets_munch_time matches 1.. run scoreboard players remove @s natures_secrets_munch_time 1

# Destroy
execute at @s align xyz positioned ~0.5 ~ ~0.5 if data entity @e[tag=natures_secrets_reactor.interact,distance=..0.1,limit=1] attack run setblock ~ ~ ~ air
execute at @s align xyz positioned ~0.5 ~ ~0.5 unless block ~ ~ ~ barrier run function natures_secrets:admin/reactor
execute at @s align xyz positioned ~0.5 ~ ~0.5 unless block ~ ~ ~ barrier run playsound minecraft:block.wood.break block @a ~ ~ ~
execute at @s align xyz positioned ~0.5 ~ ~0.5 unless block ~ ~ ~ barrier run kill @e[tag=natures_secrets_reactor.interact,distance=..0.1]
execute at @s align xyz positioned ~0.5 ~ ~0.5 unless block ~ ~ ~ barrier run kill @s