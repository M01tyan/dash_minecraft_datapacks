execute as @a[scores={zombie_picked=1..}] at @s run summon zombie ~1 ~ ~1 {Tags:["zombie"],PersistenceRequired:1b}
execute as @a[scores={zombie_picked=1..}] at @s run summon zombie ~-1 ~ ~-1 {Tags:["zombie"],PersistenceRequired:1b}
execute as @a[scores={zombie_picked=1..}] at @s run summon zombie ~1 ~ ~-1 {Tags:["zombie"],PersistenceRequired:1b}
execute as @a[scores={zombie_picked=1..}] at @s run summon zombie ~-1 ~ ~1 {Tags:["zombie"],PersistenceRequired:1b}
execute as @a[scores={zombie_picked=1..}] at @s run clear @s zombie_spawn_egg
execute as @a[scores={zombie_picked=1..}] at @s run playsound block.end_gateway.spawn player @s ~ ~ ~

scoreboard players set @a zombie_picked 0

execute if score 残り時間 time_limit matches 0.. run execute as @a run schedule function dash:zombie_tick 1t append