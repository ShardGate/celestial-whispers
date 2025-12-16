advancement revoke @s only natures_secrets:goat_horn
execute unless score @s natures_secrets_horn_use matches 1.. run effect give @e[distance=0.01..5] weakness 5 2 false
# execute unless score @s natures_secrets_horn_use matches 1.. run playsound minecraft:entity.zombie_villager.converted player @a ~ ~ ~
execute unless score @s natures_secrets_horn_use matches 1.. run scoreboard players set @s natures_secrets_horn_use 140
