execute align xyz positioned ~0.5 ~ ~0.5 run summon item_display ~ ~ ~ {Tags:["natures_secrets_pog_tree_sapling"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:honeycomb",count:1,components:{"minecraft:custom_model_data":8123016}}}
kill @e[type=item,nbt={Item:{id:"minecraft:oak_sapling",count:1}},distance=..1]
particle squid_ink ~ ~ ~ 10 10 10 0 100 normal
playsound block.sculk_shrieker.shriek master @a[distance=..30] ~ ~ ~ 1 0.1 1
playsound entity.vex.ambient master @a ~ ~ ~ 0.1 1 1
tag @e[type=player,distance=..6] add natures_secrets_player_sapling_planted_first
setblock ~ ~ ~ air
kill @s