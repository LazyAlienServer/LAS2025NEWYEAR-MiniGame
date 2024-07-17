scoreboard players set #list list 1
function snowplay:autoteam
scoreboard objectives add death_save dummy
scoreboard players set @a death_save 1
scoreboard objectives add death_trigger deathCount
tp @a[team=B] 987 60.5 765
tp @a[team=A] 1284 60.5 632
effect give @a minecraft:jump_boost 5 129
effect give @a minecraft:slowness 4 255
effect give @a minecraft:blindness 4 255
schedule function snowplay:death/3 1s
schedule function snowplay:death/2 2s
schedule function snowplay:death/1 3s
schedule function snowplay:death/begin 4s