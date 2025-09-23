execute as @a if predicate dash:shot run function dash:gun/shot

execute as @a if score @s reloading_gun matches 1.. run scoreboard players remove @s reloading_gun 1

# リロード完了
execute as @a at @s if score @s reloading_gun matches 1 run playsound item.flintandsteel.use player @s ~ ~ ~ 1 0.5
execute as @a at @s if score @s reloading_gun matches 1 run say リロード完了
