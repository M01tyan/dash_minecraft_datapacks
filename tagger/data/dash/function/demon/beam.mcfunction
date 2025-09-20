execute positioned ^ ^0.0001 ^0.1 run particle wax_off ~ ~1.5 ~ 0.01 0.01 0.01 0.1 1 force

effect give @a[tag=player, distance=..0.5] instant_damage 1 100 true
execute as @a[tag=player, distance=..0.5] run say Hit!

execute positioned ^ ^0.0001 ^0.1 if entity @a[tag=demon,distance=..100] run function dash:demon/beam