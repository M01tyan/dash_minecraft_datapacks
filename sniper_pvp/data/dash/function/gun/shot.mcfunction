execute at @s run playsound minecraft:entity.generic.explode player @s ~ ~ ~ 0.5 1.0

# すぐにホットバーに戻す
item replace entity @s hotbar.0 from entity @s weapon.offhand
item replace entity @s weapon.offhand from entity @s enderchest.0

scoreboard players set @s reloading_gun 30

# 弾丸を召喚
execute at @s run summon minecraft:interaction ^ ^1.75 ^3 {Tags:["bullet"],width:0.2f,height:0.2f}
execute at @s run function dash:gun/bullet