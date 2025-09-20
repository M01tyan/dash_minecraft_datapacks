# 逃走者タグを付与
execute as @a[tag=!demon] at @s run tag @s add player

execute as @a[tag=player] at @s run spreadplayers ~ ~ 20 100 false @s

# 捕まった人はグレー文字
team add captured
team modify captured color gray

# 生存者は白文字
team add survivor
team modify survivor color white
team join survivor @a[tag=player]
# ネームタグ非表示
team modify survivor nametagVisibility hideForOtherTeams

# 透明化ポーションとエンドパールを付与
execute as @a[tag=player] at @s run give @s potion[minecraft:potion_contents={custom_effects: [{id: "invisibility", duration: 300, show_icon: true, show_particles: false}]}] 1
execute as @a[tag=player] at @s run give @s ender_pearl 5

# ポーションの使用判定
scoreboard objectives add invisible minecraft.used:minecraft.potion
scoreboard players set @a[tag=player] invisible 0

# 死亡フラグ
scoreboard objectives add dead deathCount
scoreboard players set @a[tag=player] dead 0


schedule function dash:player/tick 1t append