scoreboard players add @s natures_secrets_planted_first_scene 1
playsound block.note_block.basedrum master @s ~ ~ ~ 1 0.1 1
execute if score @s natures_secrets_planted_first_scene matches 1.. run effect give @s blindness 2 255 true
execute if score @s natures_secrets_planted_first_scene matches 1.. run effect give @s slowness 2 255 true
execute if score @s natures_secrets_planted_first_scene matches 1.. run attribute @s minecraft:jump_strength modifier add natures_secrets -100000000 add_value
particle squid_ink ~ ~1.5 ~ 0.1 0.1 0.1 0 5 force
execute if score @s natures_secrets_planted_first_scene matches 5 run title @s title "WHAT DO YOU THINK MATTERS"
execute if score @s natures_secrets_planted_first_scene matches 25 run title @s title "YOU DO NOT"
execute if score @s natures_secrets_planted_first_scene matches 55 run title @s title {"bold":true,"color":"dark_red","text":"FEED IT A BLACK SKULL"}
execute if score @s natures_secrets_planted_first_scene matches 75 run title @s title {"bold":false,"color":"white","text":"THEN IT SHALL GROW"}
execute if score @s natures_secrets_planted_first_scene matches 95 run title @s title "BEGONE"
execute if score @s natures_secrets_planted_first_scene matches 115 run title @s title "PROVE YOUR WORTH"
execute if score @s natures_secrets_planted_first_scene matches 115 run title @s title "I DO NOT SEEK AN ALLIANCE"
execute if score @s natures_secrets_planted_first_scene matches 115.. run tag @s remove natures_secrets_player_sapling_planted_first
execute if score @s natures_secrets_planted_first_scene matches 115.. run attribute @s minecraft:jump_strength modifier remove natures_secrets
execute if score @s natures_secrets_planted_first_scene matches 115.. run scoreboard players set @s natures_secrets_planted_first_scene 0
