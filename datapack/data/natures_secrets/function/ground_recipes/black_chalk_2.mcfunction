function natures_secrets:admin/black_chalk
particle squid_ink ~ ~0.5 ~ 0.1 0.1 0.1 0 5 force
playsound minecraft:entity.squid.squirt player @a ~ ~ ~

kill @e[type=item,nbt={Item:{id:"minecraft:clay_ball"}},distance=..1]
kill @s