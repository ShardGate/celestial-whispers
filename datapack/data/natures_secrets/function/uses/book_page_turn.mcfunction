execute if score @s natures_secrets_book_use matches 1 run tag @s add natures_secrets_bp1
execute if score @s natures_secrets_book_use matches 2 run tag @s add natures_secrets_bp2
execute if score @s natures_secrets_book_use matches 3 run tag @s add natures_secrets_bp3
execute if score @s natures_secrets_book_use matches 2.. run tag @s remove natures_secrets_bp1
execute if score @s natures_secrets_book_use matches 3.. run tag @s remove natures_secrets_bp2
execute if score @s natures_secrets_book_use matches 4.. run tag @s remove natures_secrets_bp3