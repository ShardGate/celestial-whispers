clear @s minecraft:netherite_ingot 1
execute align xyz positioned ~0.5 ~0.5 ~0.5 as @n[tag=natures_secrets_bonsai,distance=..0.01] run scoreboard players set @s natures_secrets_heal_power 8
playsound minecraft:block.beacon.power_select block @s ~ ~ ~ 1