# 発射音
playsound minecraft:entity.generic.explode master @s ~ ~ ~
# 発射
function dash:demon/beam

item replace entity @s hotbar.0 from entity @s weapon.offhand
item replace entity @s weapon.offhand from entity @s enderchest.0

# リロード音
playsound minecraft:entity.goat.horn_break master @a ~ ~ ~