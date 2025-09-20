# 全プレイヤーからアイテム削除
clear @a

# すべてのプレイヤーから効果削除
effect clear @a

# 全プレイヤーからタグ削除
tag @a remove demon
tag @a remove player

# timer非表示
scoreboard players reset 残り時間 time_limit
bossbar remove dash:timer

# スコアボード非表示
scoreboard objectives setdisplay sidebar

# schedule削除
schedule clear dash:demon/tick
schedule clear dash:player/tick
schedule clear dash:player_count/tick
schedule clear dash:timer/timer_tick

# 全ての変数を削除
scoreboard objectives remove time_limit
scoreboard objectives remove player_count
scoreboard objectives remove return_stick
scoreboard objectives remove dead
scoreboard objectives remove start_countdown

tp @a 81 104 -48

# サバイバルモードに変更
gamemode survival @a