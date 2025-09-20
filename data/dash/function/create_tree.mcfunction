summon marker ^ ^ ^ {Tags:["tree","new"]}

execute as @e[type=marker,tag=new] store result entity @s Pos[0] double 1 run random value 10..30
execute as @e[type=marker,tag=new] store result entity @s Pos[2] double 1 run random value -10..10

execute as @e[type=marker,tag=new] at @s run place feature minecraft:oak

tag @e[type=marker,tag=new] remove new
