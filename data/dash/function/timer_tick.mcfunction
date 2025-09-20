execute if score 残り時間 time_limit matches 0.. run scoreboard players remove 残り時間 time_limit 1

execute if score 残り時間 time_limit matches 0.. run bossbar set dash:timer name {"text":"残り時間: ","extra":[{"score":{"name":"残り時間","objective":"time_limit"}},{"text":"秒"}]}
execute if score 残り時間 time_limit matches 0.. run execute store result bossbar dash:timer value run scoreboard players get 残り時間 time_limit

# 残り時間通知
execute if score 残り時間 time_limit matches 30 run title @a title {"text":"残り30秒！","color":"yellow"}
execute if score 残り時間 time_limit matches 10 run title @a title {"text":"残り10秒！","color":"yellow"}

# タイムアップ処理
execute if score 残り時間 time_limit matches ..0 run execute as @a[gamemode=survival] at @s run function dash:timeup


# 再帰処理
execute if score 残り時間 time_limit matches 0.. run execute as @a run schedule function dash:timer_tick 1s append