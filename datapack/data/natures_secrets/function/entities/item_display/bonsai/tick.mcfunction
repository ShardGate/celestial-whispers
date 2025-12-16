# Summon Interaction
execute at @s align xyz positioned ~0.5 ~ ~0.5 unless entity @e[tag=natures_secrets_bonsai.interact,distance=..0.1] run setblock ~ ~ ~ barrier
execute at @s align xyz positioned ~0.5 ~ ~0.5 unless entity @e[tag=natures_secrets_bonsai.interact,distance=..0.1] run summon minecraft:interaction ~ ~ ~ {width:1.01f,height:1.01f,Tags:["natures_secrets_bonsai.interact"]}

# Detect
execute at @s align xyz positioned ~0.5 ~ ~0.5 as @e[tag=natures_secrets_bonsai.interact,distance=..0.1,limit=1] on target run function natures_secrets:entities/item_display/bonsai/check
execute at @s align xyz positioned ~0.5 ~ ~0.5 run function natures_secrets:entities/item_display/bonsai/effects
execute at @s align xyz positioned ~0.5 ~ ~0.5 run function natures_secrets:entities/item_display/bonsai/display

# Remove Data
execute at @s align xyz positioned ~0.5 ~ ~0.5 as @e[tag=natures_secrets_bonsai.interact,distance=..0.1,limit=1] run data remove entity @s interaction

# Destroy
execute at @s align xyz positioned ~0.5 ~ ~0.5 if data entity @e[tag=natures_secrets_bonsai.interact,distance=..0.1,limit=1] attack run setblock ~ ~ ~ air
execute at @s align xyz positioned ~0.5 ~ ~0.5 unless block ~ ~ ~ barrier run function natures_secrets:admin/bonsai
execute at @s align xyz positioned ~0.5 ~ ~0.5 unless block ~ ~ ~ barrier run playsound minecraft:block.wood.break block @a ~ ~ ~
execute at @s align xyz positioned ~0.5 ~ ~0.5 unless block ~ ~ ~ barrier run kill @e[tag=natures_secrets_bonsai.interact,distance=..0.1]
execute at @s align xyz positioned ~0.5 ~ ~0.5 unless block ~ ~ ~ barrier run kill @s