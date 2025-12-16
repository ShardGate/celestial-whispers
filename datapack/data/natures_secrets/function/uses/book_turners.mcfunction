execute as @a if score @s natures_secrets_book_cool matches 1.. run scoreboard players remove @s natures_secrets_book_cool 1

effect give @a[tag=natures_secrets_bp1] blindness 2 255 true
effect give @a[tag=natures_secrets_bp2] blindness 2 255 true
effect give @a[tag=natures_secrets_bp3] blindness 2 255 true
effect give @a[tag=natures_secrets_bp1] slowness 2 255 true
effect give @a[tag=natures_secrets_bp2] slowness 2 255 true
effect give @a[tag=natures_secrets_bp3] slowness 2 255 true
title @a[tag=natures_secrets_bp1] actionbar {"text":"\uE000","color":"#FFFFFF","font":"naturesecrets:default"}
title @a[tag=natures_secrets_bp2] actionbar {"text":"\uE501","color":"#FFFFFF","font":"naturesecrets:default"}
title @a[tag=natures_secrets_bp3] actionbar {"text":"\uE942","color":"#FFFFFF","font":"naturesecrets:default"}

execute as @a[tag=natures_secrets_bp1] run attribute @s minecraft:jump_strength modifier add natures_secrets2 -100000000 add_value
execute as @a[tag=natures_secrets_bp2] run attribute @s minecraft:jump_strength modifier add natures_secrets2 -100000000 add_value
execute as @a[tag=natures_secrets_bp3] run attribute @s minecraft:jump_strength modifier add natures_secrets2 -100000000 add_value

execute as @a[tag=!natures_secrets_bp1,tag=!natures_secrets_bp2,tag=!natures_secrets_bp3] run attribute @s minecraft:jump_strength modifier remove natures_secrets2