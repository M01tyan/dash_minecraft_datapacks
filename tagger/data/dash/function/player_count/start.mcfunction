scoreboard objectives add player_count dummy

scoreboard objectives setdisplay sidebar player_count

schedule function dash:player_count/tick 1s append

# サイドバー用のスコアボード作成
scoreboard objectives add status dummy ""
# サイドバーに表示
scoreboard objectives setdisplay sidebar status
scoreboard players set @a status 0
