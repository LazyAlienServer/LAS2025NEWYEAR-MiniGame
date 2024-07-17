fill 1283 59 633 1285 59 631 minecraft:air
fill 986 59 766 988 59 764 minecraft:air
effect give @a[team=A] minecraft:slow_falling 8
effect give @a[team=B] minecraft:slow_falling 8
title @a title "§a开始！"
execute as @a at @s run playsound minecraft:block.note_block.chime master @a