execute if score 残り時間 time_limit matches 0.. run scoreboard players remove 残り時間 time_limit 1

execute if score 残り時間 time_limit matches 0.. run bossbar set dash:timer name {"text":"残り時間: ","extra":[{"score":{"name":"残り時間","objective":"time_limit"}},{"text":"秒"}]}
execute if score 残り時間 time_limit matches 0.. run execute store result bossbar dash:timer value run scoreboard players get 残り時間 time_limit

# 1分ごとに発光エフェクト付与
execute if score 残り時間 time_limit matches 240 run effect give @a glowing 15
execute if score 残り時間 time_limit matches 240 run title @a actionbar "発光中"
execute if score 残り時間 time_limit matches 180 run effect give @a glowing 15
execute if score 残り時間 time_limit matches 180 run title @a actionbar "発光中"
execute if score 残り時間 time_limit matches 120 run effect give @a glowing 15
execute if score 残り時間 time_limit matches 120 run title @a actionbar "発光中"
execute if score 残り時間 time_limit matches 60 run effect give @a glowing 15
execute if score 残り時間 time_limit matches 60 run title @a actionbar "発光中"
execute if score 残り時間 time_limit matches 30 run effect give @a glowing 15
execute if score 残り時間 time_limit matches 30 run title @a actionbar "発光中"

# 残り時間通知
execute if score 残り時間 time_limit matches 60 run title @a title {"text":"残り1分！","color":"yellow"}
execute if score 残り時間 time_limit matches 10 run title @a title {"text":"残り10秒！","color":"yellow"}

# タイムアップ処理
execute if score 残り時間 time_limit matches ..0 run function dash:player/win

# 再帰処理
execute if score 残り時間 time_limit matches 0.. run execute as @a run schedule function dash:timer/timer_tick 1s append