title @a title {"text":"タイムアップ！","color":"red","bold":true}
playsound ui.toast.challenge_complete player @a ~ ~ ~

execute as @a at @s run function dash:clear

scoreboard players operation @s point = 獲得ポイント point
scoreboard players reset 獲得ポイント point
scoreboard objectives setdisplay sidebar point