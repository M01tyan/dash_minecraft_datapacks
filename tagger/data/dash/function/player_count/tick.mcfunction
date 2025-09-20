scoreboard players set 現在の残り人数 player_count 0
execute as @p[tag=player, gamemode=survival] at @s run scoreboard players set 現在の残り人数 player_count 1

execute if score 現在の残り人数 player_count matches 0 run function dash:demon/win

schedule function dash:player_count/tick 1t append