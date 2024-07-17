execute positioned 0.0 0.0 0.0 run summon minecraft:marker ^ ^0.18 ^3 {Tags:["snowball_stick_summon"]}
execute anchored eyes run summon minecraft:snowball ^ ^1.5 ^2.6 {Tags:["snowball_stick_summon"]}
data modify entity @e[type=minecraft:snowball,limit=1,tag=snowball_stick_summon] Motion[0] set from entity @e[type=minecraft:marker,limit=1,tag=snowball_stick_summon] Pos[0]
data modify entity @e[type=minecraft:snowball,limit=1,tag=snowball_stick_summon] Motion[1] set from entity @e[type=minecraft:marker,limit=1,tag=snowball_stick_summon] Pos[1]
data modify entity @e[type=minecraft:snowball,limit=1,tag=snowball_stick_summon] Motion[2] set from entity @e[type=minecraft:marker,limit=1,tag=snowball_stick_summon] Pos[2]
tag @e[type=minecraft:snowball,limit=1,tag=snowball_stick_summon] add damage
tag @e[type=minecraft:snowball,limit=1,tag=snowball_stick_summon] remove snowball_stick_summon
kill @e[type=marker]