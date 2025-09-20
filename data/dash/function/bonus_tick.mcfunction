execute as @a[scores={bonus_picked=1..}] at @s run effect give @s haste 10 5 false
execute as @a[scores={bonus_picked=1..}] at @s run clear @s nether_star
execute as @a[scores={bonus_picked=1..}] at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~

scoreboard players set @a bonus_picked 0

execute if score 残り時間 time_limit matches 0.. run execute as @a run schedule function dash:bonus_tick 1t append