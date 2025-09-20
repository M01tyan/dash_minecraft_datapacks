execute if score 開始までの時間 start_countdown matches 0.. run scoreboard players remove 開始までの時間 start_countdown 1

# カウントダウン表示
execute if score 開始までの時間 start_countdown matches 0.. run title @a title { text: "鬼ごっこ開始まで ", color: "red", bold: true, extra:[{ score: { name: "開始までの時間", objective: "start_countdown" }}, { text: "秒前" }]}

# ゲーム開始
execute if score 開始までの時間 start_countdown matches ..0 run effect clear @a slowness
execute if score 開始までの時間 start_countdown matches ..0 run title @a title { text: "スタート!", color: "red", bold: true }
execute if score 開始までの時間 start_countdown matches ..0 run function dash:timer/timer_tick
execute if score 開始までの時間 start_countdown matches ..0 run function dash:player_count/start

# 1秒ごとに再帰する
execute if score 開始までの時間 start_countdown matches 0.. run execute as @a run schedule function dash:timer/start_tick 1s append