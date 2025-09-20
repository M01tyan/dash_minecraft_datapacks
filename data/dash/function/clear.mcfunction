# スコアボードリセット
scoreboard players set @a apple_picked 0
scoreboard players set @a gapple_picked 0
scoreboard players set @a gapple_point 0
scoreboard players reset 残り時間 time_limit

# timer非表示
bossbar remove dash:timer

# 定数（×5 用）
scoreboard objectives remove const

# 初期位置にテレポート
tp @s -6 -60 0

# 木を消す
execute as @e[tag=tree] at @s run fill ~-5 ~ ~-5 ~5 ~10 ~5 air
kill @e[type=marker,tag=tree]
kill @e[type=!player,type=!item_frame]

# ゾンビを消す
kill @e[type=zombie]

# サバイバルモードにする
gamemode survival @a

# 体力と空腹ゲージを満タンにする
effect give @s minecraft:health_boost 1 4 true
effect give @s minecraft:saturation 1 10 true