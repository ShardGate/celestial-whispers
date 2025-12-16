kill @e[type=item,nbt={Item:{id:"minecraft:shears",count:1}},distance=..1,limit=1]
kill @e[type=item,nbt={Item:{id:"minecraft:oak_log",count:1}},distance=..1,limit=1]
clear @s minecraft:honeycomb[minecraft:custom_data={naturessecrets_scrap:1}] 1
execute positioned ~ ~-0.5 ~ run function natures_secrets:admin/hollow_log
