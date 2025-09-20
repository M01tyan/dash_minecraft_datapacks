# 鬼が望遠鏡をオフハンドに持っている場合ビームを発射
execute as @a[tag=demon] at @s if predicate dash:offhand_spyglass run function dash:demon/shoot

# 鬼が戻り棒を使用した場合
execute as @a[tag=demon] at @s if score @s return_stick matches 1 run function dash:demon/return_stick

# execute as @a[tag=demon] at @s run particle minecraft:dragon_breath ~ ~1 ~ 0.01 0.01 0.01 0.1 5 force

execute as @a[tag=demon] at @s run schedule function dash:demon/tick 1t append