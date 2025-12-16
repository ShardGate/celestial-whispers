kill @e[type=item,nbt={Item:{id:"minecraft:flower_pot",count:1}},distance=..1,limit=1]
kill @e[type=item,nbt={Item:{id:"minecraft:oak_sapling",count:1}},distance=..1,limit=1]
kill @e[type=item,nbt={Item:{id:"minecraft:purple_dye",count:1}},distance=..1,limit=1]
clear @s minecraft:honeycomb[minecraft:custom_data={naturessecrets_scrap:1}] 1
execute positioned ~ ~-0.5 ~ run function natures_secrets:admin/bonsai
