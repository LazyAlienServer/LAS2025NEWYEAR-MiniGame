
execute as @a[scores={sne=1..,cha=..106}] if items entity @s[scores={reload=0}] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=4] run scoreboard players add @s cha 4
execute as @a run scoreboard players remove @s[scores={cha=1..}] cha 3
scoreboard players set @a sne 0
execute as @a if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=4] run title @a[scores={cha=..0,cooldown=0,ammo=1..}] subtitle ""
title @a[scores={cha=..0,cooldown=0,ammo=1..}] subtitle ""

title @a times 0 2.8 0
execute as @e[tag=snow] at @s run particle snowflake ~ ~ ~ 0.1 0.1 0.1 0.07 2 force
execute as @e[tag=light] at @s run particle firework ~ ~ ~ 0.0 0.0 0.0 0.01 1 force
execute as @e[tag=smoke] at @s run particle smoke ~ ~ ~ 0.0 0.0 0.0 0.01 1 force
execute as @e[tag=smoke_big] at @s run particle white_smoke ~ ~ ~ 0.1 0.1 0.1 0.07 10 force
execute as @e[tag=smoke_big] at @s run particle end_rod ~ ~ ~ 0.1 0.1 0.1 0 1 force
execute as @a[limit=1,scores={timer=1}] at @e[tag=small_exp,limit=1,sort=random] run particle explosion ~ ~ ~ 0.1 0.1 0.1 0.5 1 force

#bossbar
execute store result bossbar boss value run scoreboard players get @a[tag=boss,limit=1] health
bossbar set minecraft:boss players @a
bossbar set minecraft:boss visible false
execute if entity @a[tag=boss] run bossbar set minecraft:boss visible true

#sound&load
title @a[scores={cha=1..100,reload=0,ammo=1..}] title ""
title @a[scores={cha=1..20,reload=0,ammo=1..}] subtitle "[[  ]]"
title @a[scores={cha=21..40,reload=0,ammo=1..}] subtitle "[[[[  ]]]]"
title @a[scores={cha=41..60,reload=0,ammo=1..}] subtitle "[[[[[[  ]]]]]]"
title @a[scores={cha=61..80,reload=0,ammo=1..}] subtitle "[[[[[[[[  ]]]]]]]]"
title @a[scores={cha=81..100,reload=0,ammo=1..}] subtitle "[[[[[[[[[[  ]]]]]]]]]]"
execute at @a run playsound minecraft:block.note_block.hat player @a[scores={cha=1,reload=0,ammo=1..}] ~ ~ ~ 1 1.0
execute at @a run playsound minecraft:block.note_block.hat player @a[scores={cha=21,reload=0,ammo=1..}] ~ ~ ~ 1 1.1
execute at @a run playsound minecraft:block.note_block.hat player @a[scores={cha=41,reload=0,ammo=1..}] ~ ~ ~ 1 1.2
execute at @a run playsound minecraft:block.note_block.hat player @a[scores={cha=61,reload=0,ammo=1..}] ~ ~ ~ 1 1.3
execute at @a run playsound minecraft:block.note_block.hat player @a[scores={cha=81,reload=0,ammo=1..}] ~ ~ ~ 1 1.4
execute at @a run playsound minecraft:block.note_block.bell player @a[scores={cha=104..,reload=0,ammo=1..}] ~ ~ ~ 1 1.5
execute as @a[scores={cha=1..96,reload=0,ammo=1..}] at @s run particle large_smoke ~ ~ ~ 0.2 0 0.2 0.05 10 force
execute as @a[scores={cha=100..,reload=0,ammo=1..}] at @s run particle flame ~ ~ ~ 0.2 0 0.2 0.05 10 force
effect give @a[scores={cha=20..,reload=0,ammo=1..}] glowing 1 1 true

#雪球回复弹药
execute as @a[scores={ammo=..199}] at @s if items entity @s container.* snowball run clear @s snowball 1
execute as @a[scores={ammo=..199}] at @s if items entity @s container.* snowball run playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.3
execute as @a[scores={ammo=..199}] at @s if items entity @s container.* snowball run scoreboard players add @s ammo 20

#反作弊
scoreboard players add @a timer 1
execute as @a[scores={anticheat=13..}] at @s run scoreboard players add @s CT 1
execute as @a[scores={anticheat=13..}] at @s run playsound block.note_block.bit player @a ~ ~ ~ 10 2
scoreboard players remove @a[scores={anticheat=10..}] ammo 5
scoreboard players set @a[scores={timer=20..}] anticheat 0
scoreboard players set @a[scores={timer=20..}] timer 0

#GUI
tellraw @a[tag=DEBUG] [{"text":"===","color":"gray"},{"text":"click to get[TEST FEATURE]","color":"blue"},{"text":"===","color":"gray"}]
tellraw @a[tag=DEBUG] [{"text":"[weapen #1]","color":"gold","clickEvent":{"action":"run_command","value":"/give @s minecraft:carrot_on_a_stick[minecraft:custom_model_data=1]"}}]
tellraw @a[tag=DEBUG] [{"text":"[weapen #2]","color":"gold","clickEvent":{"action":"run_command","value":"/give @s minecraft:carrot_on_a_stick[minecraft:custom_model_data=2]"}}]
tellraw @a[tag=DEBUG] [{"text":"[weapen #3]","color":"gold","clickEvent":{"action":"run_command","value":"/give @s minecraft:carrot_on_a_stick[minecraft:custom_model_data=3]"}}]
tellraw @a[tag=DEBUG] [{"text":"[weapen #4]","color":"gold","clickEvent":{"action":"run_command","value":"/give @s minecraft:carrot_on_a_stick[minecraft:custom_model_data=4]"}}]
tellraw @a[tag=DEBUG] [{"text":"[weapen #5]","color":"gold","clickEvent":{"action":"run_command","value":"/give @s minecraft:carrot_on_a_stick[minecraft:custom_model_data=5]"}}]
tellraw @a[tag=DEBUG] [{"text":"[shovel#10]","color":"gold","clickEvent":{"action":"run_command","value":"/give @s minecraft:carrot_on_a_stick[minecraft:custom_model_data=10]"}}]
tellraw @a[tag=DEBUG] [{"text":"[ammo  add]","color":"yellow","clickEvent":{"action":"run_command","value":"/scoreboard players add @s ammo 500"}},{"text":"     [ammo  rem]","color":"yellow","clickEvent":{"action":"run_command","value":"/scoreboard players remove @s ammo 100"}}]
tellraw @a[tag=DEBUG] [{"text":"[ammo  res]","color":"yellow","clickEvent":{"action":"run_command","value":"/scoreboard players set @s ammo 0"}},{"text":"     [ammo  inf]","color":"yellow","clickEvent":{"action":"run_command","value":"/scoreboard players set @s ammo 2147483647"}}]
tellraw @a[tag=DEBUG] [{"text":"[boss  set]","color":"red","clickEvent":{"action":"run_command","value":"/tag @s add boss"}},{"text":"     [boss  rem]","color":"red","clickEvent":{"action":"run_command","value":"/tag @s remove boss"}}]
tellraw @a[tag=DEBUG] [{"text":"============================","color":"gray"}]
tag @a remove DEBUG