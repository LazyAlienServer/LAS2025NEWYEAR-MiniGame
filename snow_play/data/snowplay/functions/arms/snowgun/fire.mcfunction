



execute anchored feet run summon minecraft:snowball ^ ^ ^2 {Tags:[summon],Motion:[0.0d,0.0d,0.0d]}


execute store result score x2 snowgun_store run data get entity @e[tag=summon,limit=1] Pos[0] 1000
execute store result score y2 snowgun_store run data get entity @e[tag=summon,limit=1] Pos[1] 1000
execute store result score z2 snowgun_store run data get entity @e[tag=summon,limit=1] Pos[2] 1000
#motion 存储xyz

execute store result score x1 snowgun_store run data get entity @s Pos[0] 1000
execute store result score y1 snowgun_store run data get entity @s Pos[1] 1000
execute store result score z1 snowgun_store run data get entity @s Pos[2] 1000

tp @e[tag=summon] ^ ^ ^

scoreboard players operation x2 snowgun_store -= x1 snowgun_store
scoreboard players operation y2 snowgun_store -= y1 snowgun_store
scoreboard players operation z2 snowgun_store -= z1 snowgun_store

execute store result entity @e[tag=summon,limit=1] Motion[0] double 0.001 run scoreboard players get x2 snowgun_store
execute store result entity @e[tag=summon,limit=1] Motion[1] double 0.001 run scoreboard players get y2 snowgun_store
execute store result entity @e[tag=summon,limit=1] Motion[2] double 0.001 run scoreboard players get z2 snowgun_store

tag @e[tag=summon] remove summon