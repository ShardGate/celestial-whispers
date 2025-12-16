# Tools
execute align xyz positioned ~0.5 ~1.5 ~0.5 if entity @e[type=item,nbt={Item:{id:"minecraft:wooden_axe",count:1}},distance=..1] run return run function natures_secrets:entities/item_display/reactor/give/tools/starspawn_axe
execute align xyz positioned ~0.5 ~1.5 ~0.5 if entity @e[type=item,nbt={Item:{id:"minecraft:wooden_pickaxe",count:1}},distance=..1] run return run function natures_secrets:entities/item_display/reactor/give/tools/starspawn_pickaxe
execute align xyz positioned ~0.5 ~1.5 ~0.5 if entity @e[type=item,nbt={Item:{id:"minecraft:wooden_sword",count:1}},distance=..1] run return run function natures_secrets:entities/item_display/reactor/give/tools/starspawn_sword
execute align xyz positioned ~0.5 ~1.5 ~0.5 if entity @e[type=item,nbt={Item:{id:"minecraft:wooden_shovel",count:1}},distance=..1] run return run function natures_secrets:entities/item_display/reactor/give/tools/starspawn_shovel
execute align xyz positioned ~0.5 ~1.5 ~0.5 if entity @e[type=item,nbt={Item:{id:"minecraft:wooden_hoe",count:1}},distance=..1] run return run function natures_secrets:entities/item_display/reactor/give/tools/starspawn_hoe

# Wooden Potion
execute align xyz positioned ~0.5 ~1.5 ~0.5 if entity @e[type=item,nbt={Item:{id:"minecraft:glass_bottle",count:1}},distance=..1] if entity @e[type=item,nbt={Item:{id:"minecraft:blaze_powder",count:1}},distance=..1] if entity @e[type=item,nbt={Item:{id:"minecraft:oak_log",count:1}},distance=..1] run return run function natures_secrets:entities/item_display/reactor/give/potion
# Wooden Horn
execute align xyz positioned ~0.5 ~1.5 ~0.5 if entity @e[type=item,nbt={Item:{id:"minecraft:goat_horn",count:1}},distance=..1] if entity @e[type=item,nbt={Item:{id:"minecraft:oak_log",count:1}},distance=..1] run return run function natures_secrets:entities/item_display/reactor/give/horn
# Starspawn Apple
execute align xyz positioned ~0.5 ~1.5 ~0.5 if entity @e[type=item,nbt={Item:{id:"minecraft:apple",count:1}},distance=..1] if entity @e[type=item,nbt={Item:{id:"minecraft:oak_log",count:1}},distance=..1] run return run function natures_secrets:entities/item_display/reactor/give/apple

# Bonsai
execute align xyz positioned ~0.5 ~1.5 ~0.5 if entity @e[type=item,nbt={Item:{id:"minecraft:oak_sapling",count:1}},distance=..1] if entity @e[type=item,nbt={Item:{id:"minecraft:flower_pot",count:1}},distance=..1] if entity @e[type=item,nbt={Item:{id:"minecraft:purple_dye",count:1}},distance=..1] run return run function natures_secrets:entities/item_display/reactor/give/bonsai
