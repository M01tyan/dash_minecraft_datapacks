# 閲覧者はスペクターモードにする
gamemode spectator @a
gamemode survival @p

# 手持ちのアイテムを消す
clear @a

# サイドバーを非表示にする
scoreboard objectives setdisplay sidebar

# 合計ポイント表示用
scoreboard objectives add point dummy "ポイント"
scoreboard players set 獲得ポイント point 0

# リンゴ取得カウント数
scoreboard objectives add apple_picked minecraft.picked_up:apple
scoreboard players set @s apple_picked 0

# 金リンゴ取得カウント数
scoreboard objectives add gapple_picked minecraft.picked_up:golden_apple
scoreboard objectives add gapple_point dummy
scoreboard players set @s gapple_picked 0
scoreboard players set @s gapple_point 0

# ボーナススター取得カウント数
scoreboard objectives add bonus_picked minecraft.picked_up:nether_star
scoreboard players set @s bonus_picked 0

# ゾンビスポーンエッグ取得カウント数
scoreboard objectives add zombie_picked minecraft.picked_up:zombie_spawn_egg
scoreboard players set @s zombie_picked 0

# 定数（×5 用）
scoreboard objectives add const dummy
scoreboard players set five const 5

function dash:timer
function dash:create_tree
function dash:create_tree
function dash:create_tree
function dash:create_tree
function dash:create_tree
function dash:create_tree
function dash:create_tree
function dash:create_tree
function dash:create_tree
function dash:create_tree

execute as @a run schedule function dash:point_tick 1t append
execute as @a run schedule function dash:bonus_tick 1t append
execute as @a run schedule function dash:zombie_tick 1t append

title @a title {"text":"スタート！","color":"gold","bold":true}