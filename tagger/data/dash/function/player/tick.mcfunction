execute as @a[tag=player] at @s if score @s dead matches 1 run function dash:player/dead

schedule function dash:player/tick 1t append