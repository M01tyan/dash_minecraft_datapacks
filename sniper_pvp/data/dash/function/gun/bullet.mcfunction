# 弾丸の軌道処理
particle minecraft:wax_off ~ ~1.5 ~ 0.01 0.01 0.01 0.1 1 force
execute as @n[predicate=dash:bullet] run tp @s ^ ^1.5 ^0.5

# ヘッドショット判定
execute as @a at @s anchored eyes positioned ^ ^ ^ if entity @n[predicate=dash:bullet, distance=..0.4] run say Head Shot!
execute as @a at @s anchored eyes positioned ^ ^ ^ if entity @n[predicate=dash:bullet, distance=..0.4] run damage @s 1000
playsound block.anvil.place player @s ~ ~ ~ 1 2.0

# 通常の当たり判定
execute as @n[predicate=dash:bullet] at @s if entity @n[type=player,dx=0,dy=0,dz=0] run say Hit!
execute as @n[predicate=dash:bullet] at @s if entity @n[type=player,dx=0,dy=0,dz=0] run damage @n[type=player] 5

# 弾丸がストップしたら消す
execute as @n[predicate=dash:bullet] at @s if entity @a[distance=50..] run kill @s
# 再帰呼び出し
execute positioned ^ ^ ^0.5 if entity @a[distance=..50] run function dash:gun/bullet
