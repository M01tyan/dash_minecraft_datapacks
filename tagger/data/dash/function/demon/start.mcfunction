# タグを付与
tag @r add demon

# 望遠鏡とワンパン・スピードアップを付与
execute as @a[tag=demon] as @s run give @s spyglass
execute as @a[tag=demon] as @s run give @s carrot_on_a_stick
execute as @a[tag=demon] at @s run effect give @s strength infinite 255 true
execute as @a[tag=demon] at @s run effect give @s speed infinite 1 true

# add demon particle
# execute as @a[tag=demon] at @s run function dash:demon/particle

# ネームタグ非表示

# 名前の前に「鬼」と赤色で表示
team add demon
team modify demon color red
team modify demon suffix " 鬼"
team join demon @a[tag=demon]
team modify demon nametagVisibility always

# 戻り棒
scoreboard objectives add return_stick minecraft.used:minecraft.carrot_on_a_stick
scoreboard players set @a[tag=demon] return_stick 0

execute as @a[tag=demon] at @s run schedule function dash:demon/tick 1t append