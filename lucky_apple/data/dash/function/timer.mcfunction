bossbar add dash:timer "残り時間"
bossbar set dash:timer players @a
bossbar set dash:timer value 60
bossbar set dash:timer max 60
bossbar set dash:timer color yellow
scoreboard objectives add time_limit dummy
scoreboard players add 残り時間 time_limit 60

function dash:timer_tick

