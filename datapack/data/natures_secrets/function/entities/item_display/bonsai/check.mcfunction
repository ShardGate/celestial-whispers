execute if items entity @s weapon.mainhand minecraft:coal run return run function natures_secrets:entities/item_display/bonsai/effect/coal
execute if items entity @s weapon.mainhand minecraft:copper_ingot run return run function natures_secrets:entities/item_display/bonsai/effect/copper
execute if items entity @s weapon.mainhand minecraft:lapis_lazuli run return run function natures_secrets:entities/item_display/bonsai/effect/lapis
execute if items entity @s weapon.mainhand minecraft:iron_ingot run return run function natures_secrets:entities/item_display/bonsai/effect/iron
execute if items entity @s weapon.mainhand minecraft:gold_ingot run return run function natures_secrets:entities/item_display/bonsai/effect/gold
execute if items entity @s weapon.mainhand minecraft:redstone run return run function natures_secrets:entities/item_display/bonsai/effect/redstone
execute if items entity @s weapon.mainhand minecraft:diamond run return run function natures_secrets:entities/item_display/bonsai/effect/diamond
execute if items entity @s weapon.mainhand minecraft:netherite_ingot run return run function natures_secrets:entities/item_display/bonsai/effect/netherite

execute align xyz positioned ~0.5 ~0.5 ~0.5 as @n[tag=natures_secrets_bonsai,distance=..0.01] at @s if score @s natures_secrets_heal_power matches 1.. run function natures_secrets:entities/item_display/bonsai/effect/none