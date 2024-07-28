
execute as @a[scores={sne=1..,cha=..103}] if items entity @s[scores={reload=0}] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=4] run scoreboard players add @s cha 4
execute as @a run scoreboard players remove @s[scores={cha=1..}] cha 3
scoreboard players set @a sne 0
title @a[scores={cha=..0}] subtitle ""

title @a times 0 5 0
execute as @e[tag=snow] at @s run particle snowflake ~ ~ ~ 0.1 0.1 0.1 0.07 2 force
execute as @e[tag=light] at @s run particle firework ~ ~ ~ 0.0 0.0 0.0 0.01 1 force
execute as @e[tag=smoke] at @s run particle smoke ~ ~ ~ 0.0 0.0 0.0 0.01 1 force


#sound&load
title @a[scores={cha=1..100,reload=0}] title ""
title @a[scores={cha=1..20,reload=0}] subtitle "[[  ]]"
title @a[scores={cha=21..40,reload=0}] subtitle "[[[[  ]]]]"
title @a[scores={cha=41..60,reload=0}] subtitle "[[[[[[  ]]]]]]"
title @a[scores={cha=61..80,reload=0}] subtitle "[[[[[[[[  ]]]]]]]]"
title @a[scores={cha=81..100,reload=0}] subtitle "[[[[[[[[[[  ]]]]]]]]]]"
execute at @a run playsound minecraft:block.note_block.hat player @a[scores={cha=1,reload=0}] ~ ~ ~ 1 1.0
execute at @a run playsound minecraft:block.note_block.hat player @a[scores={cha=21,reload=0}] ~ ~ ~ 1 1.1
execute at @a run playsound minecraft:block.note_block.hat player @a[scores={cha=41,reload=0}] ~ ~ ~ 1 1.2
execute at @a run playsound minecraft:block.note_block.hat player @a[scores={cha=61,reload=0}] ~ ~ ~ 1 1.3
execute at @a run playsound minecraft:block.note_block.hat player @a[scores={cha=81,reload=0}] ~ ~ ~ 1 1.4
execute at @a run playsound minecraft:block.note_block.bell player @a[scores={cha=104..,reload=0}] ~ ~ ~ 1 1.5
execute as @a[scores={cha=1..96,reload=0}] at @s run particle large_smoke ~ ~ ~ 0.2 0 0.2 0.05 10 force
execute as @a[scores={cha=100..,reload=0}] at @s run particle flame ~ ~ ~ 0.2 0 0.2 0.05 10 force
effect give @a[scores={cha=20..,reload=0}] glowing 1 1 true
