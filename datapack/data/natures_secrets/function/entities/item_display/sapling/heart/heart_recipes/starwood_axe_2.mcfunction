#switchedcube have fun with decypthering the spagethi code (valve pls hire me)
execute unless score @s natures_secrets_munching_insert_question_mark_here matches 1 run scoreboard players set @s natures_secrets_munch_time 5
scoreboard players set @s natures_secrets_munching_insert_question_mark_here 1

execute if score @s natures_secrets_munch_time matches 2 align xyz positioned ~0.5 ~ ~0.5 run function natures_secrets:admin/reactor
execute if score @s natures_secrets_munch_time matches 2 run scoreboard players set @s natures_secrets_munch_decider 0
execute if score @s natures_secrets_munch_time matches 2 run scoreboard players set @s natures_secrets_munching_insert_question_mark_here 0
