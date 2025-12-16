execute if entity @s[tag=natures_secrets_pog_tree_log] at @s unless block ~ ~ ~ oak_log align xyz positioned ~0.5 ~ ~0.5 run function natures_secrets:admin/starspawn_scrap
execute if entity @s[tag=natures_secrets_pog_tree_log] at @s unless block ~ ~ ~ oak_log align xyz positioned ~0.5 ~ ~0.5 run function natures_secrets:admin/starspawn_scrap
execute if entity @s[tag=natures_secrets_pog_tree_log] at @s unless block ~ ~ ~ oak_log align xyz positioned ~0.5 ~ ~0.5 run function natures_secrets:admin/starspawn_scrap
execute if entity @s[tag=natures_secrets_pog_tree_log] at @s unless block ~ ~ ~ oak_log run kill @s

execute if entity @s[tag=natures_secrets_pog_tree_heart] at @s unless block ~ ~1 ~ oak_log unless block ~ ~-1 ~ oak_log run kill @s

execute if entity @s[tag=natures_secrets_pog_tree_leaves] at @s align xyz positioned ~-1 ~ ~-1 unless block ~ ~ ~ oak_leaves run kill @s

execute if entity @s[tag=natures_secrets_pog_tree_heart] run function natures_secrets:entities/item_display/sapling/heart/heart_gen