# リンゴのポイント計算
execute as @a[scores={apple_picked=1..}] run scoreboard players operation 獲得ポイント point += @s apple_picked
execute as @a[scores={apple_picked=1..}] run playsound minecraft:entity.item.pickup player @s ~ ~ ~
# 金リンゴのポイント計算
execute as @a[scores={gapple_picked=1..}] run scoreboard players operation @s gapple_point = @s gapple_picked
execute as @a[scores={gapple_picked=1..}] run scoreboard players operation @s gapple_point *= five const
execute as @a[scores={gapple_picked=1..}] run scoreboard players operation 獲得ポイント point += @s gapple_point
execute as @a[scores={gapple_picked=1..}] run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~

title @a actionbar {"text":"ポイント: ","extra":[{"score":{"name":"獲得ポイント","objective":"point"}},{"text":"点"}]}

scoreboard players set @a apple_picked 0
scoreboard players set @a gapple_picked 0
scoreboard players set @a gapple_point 0

execute if score 残り時間 time_limit matches 0.. run execute as @a run schedule function dash:point_tick 1t append