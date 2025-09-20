bossbar add dash:timer "残り時間"
bossbar set dash:timer players @a
bossbar set dash:timer value 300
bossbar set dash:timer max 300
bossbar set dash:timer color yellow
scoreboard objectives add time_limit dummy
scoreboard players add 残り時間 time_limit 300

# スタートまでのカウントダウン
scoreboard objectives add start_countdown dummy
scoreboard players add 開始までの時間 start_countdown 10

# 一時的に動かなくする
effect give @a slowness infinite 255 true

function dash:timer/start_tick

