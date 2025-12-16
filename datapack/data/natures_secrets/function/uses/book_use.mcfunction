advancement revoke @s only natures_secrets:book_use
execute unless score @s natures_secrets_book_cool matches 1.. run scoreboard players add @s natures_secrets_book_use 1
execute unless score @s natures_secrets_book_cool matches 1.. run function natures_secrets:uses/book_page_turn
execute unless score @s natures_secrets_book_cool matches 1.. run playsound item.book.page_turn player @s ~ ~ ~ 1 1 1

execute unless score @s natures_secrets_book_cool matches 1.. run execute if score @s natures_secrets_book_use matches 4.. run title @s actionbar " "
execute unless score @s natures_secrets_book_cool matches 1.. run execute if score @s natures_secrets_book_use matches 4.. run tellraw @s ["",{"text":"<","color":"gold"},{"selector":"@s","color":"gold"},{"text":"> ","color":"gold"},"The last page of the book is missing."]

execute unless score @s natures_secrets_book_cool matches 1.. run execute if score @s natures_secrets_book_use matches 4.. run effect clear @s blindness
execute unless score @s natures_secrets_book_cool matches 1.. run execute if score @s natures_secrets_book_use matches 4.. run effect clear @s slowness
execute unless score @s natures_secrets_book_cool matches 1.. run execute if score @s natures_secrets_book_use matches 4.. run attribute @s minecraft:jump_strength modifier remove natures_secrets2
execute unless score @s natures_secrets_book_cool matches 1.. run execute if score @s natures_secrets_book_use matches 4.. run scoreboard players set @s natures_secrets_book_use 0

execute as @a unless score @s natures_secrets_book_cool matches 1.. run scoreboard players set @s natures_secrets_book_cool 10
