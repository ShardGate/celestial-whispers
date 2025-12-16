# Remove one from the limit
scoreboard players remove .limit arbetrary_raycast_limit 1

# If the raycast has hit a block, do something
execute unless block ~ ~ ~ #minecraft:pass_through if block ~ ~ ~ purple_candle run function natures_secrets:uses/black_chalk/raycast_hit_black_chalk

# If the raycast hasn't hit a block, continue, but only if the limit is 1 or more (1..)
execute unless block ~ ~ ~ black_candle if block ~ ~ ~ #minecraft:pass_through positioned ^ ^ ^0.1 if score .limit arbetrary_raycast_limit matches 1.. run function natures_secrets:uses/black_chalk/black_chalk_raycast/bl_chalk_raycast