kill @e[type=item,nbt={Item:{id:"minecraft:wooden_pickaxe",count:1}},distance=..1,limit=1]
clear @s minecraft:honeycomb[minecraft:custom_data={naturessecrets_scrap:1}] 1
execute positioned ~ ~-0.5 ~ run function natures_secrets:admin/starspawn_pickaxe
