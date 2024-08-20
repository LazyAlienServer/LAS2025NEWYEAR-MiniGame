
#-1
scoreboard players remove @a[scores={cooldown=1..}] cooldown 1
scoreboard players remove @a[scores={delay=1..}] delay 1
scoreboard players remove @a[scores={reload=1..}] reload 1
scoreboard players remove @a[scores={BIC=1..}] BIC 1

#盾
execute as @a if items entity @s weapon.offhand minecraft:shield run effect give @s minecraft:resistance 1 2 true

#display
scoreboard players set @a[scores={ammo=..-1}] ammo 0
title @a[scores={ammo=200..,reload=0,cooldown=0}] actionbar [{"text":"弹药：","color":"blue"},{"score":{"name":"*","objective":"ammo"},"color":"green"}]
title @a[scores={ammo=101..199,reload=0,cooldown=0}] actionbar [{"text":"弹药：","color":"blue"},{"score":{"name":"*","objective":"ammo"},"color":"gold"}]
title @a[scores={ammo=..100,reload=0,cooldown=0}] actionbar [{"text":"弹药：","color":"blue"},{"score":{"name":"*","objective":"ammo"},"color":"red"}]
title @a[scores={cooldown=1..,ammo=1..}] title ""
#title @a[scores={cooldown=1..,ammo=1..}] subtitle [{"text":"RELOADING","color":"gray","underlined":true}]
title @a[scores={ammo=0}] subtitle [{"text":"弹药已耗尽","color":"red"}]
title @a[scores={cooldown=1..}] actionbar [{"text":"RELOADING ","color":"gray"},{"score":{"name":"*","objective":"cooldown"},"color":"red"}]

#?
execute as @a[scores={r_click_detect=1..}] if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=1] run scoreboard players set @s[scores={ammo=1..}] delay 5
execute as @a[scores={delay=2..}] if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=1] at @s anchored eyes run summon snowball ^ ^ ^1 {Tags:["random_mot"],"hitDamage":1}
execute as @a[scores={delay=1}] if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=1] at @s anchored eyes run summon snowball ^ ^ ^1 {Tags:["random_mot","light"],"hitDamage":1}
execute as @a[scores={delay=1..}] if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=1] at @s anchored eyes run playsound minecraft:entity.egg.throw player @a
execute as @a[scores={delay=1..}] if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=1] at @s run effect give @s slowness 1 1 true
execute as @a[scores={delay=1..}] if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=1] at @s anchored eyes run scoreboard players remove @s ammo 1

#Shotguns
execute as @a[scores={r_click_detect=1..,ammo=8..}] if items entity @s[scores={reload=0}] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=2] run scoreboard players set @s[scores={ammo=8..}] delay 1
execute as @a[scores={delay=1..}] if entity @s[scores={cooldown=0}] if items entity @s[scores={reload=0}] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=2] at @s anchored eyes run summon snowball ^ ^ ^1 {Tags:["random_mot_mid","smoke"],"hitDamage":3}
execute as @a[scores={delay=1..}] if entity @s[scores={cooldown=0}] if items entity @s[scores={reload=0}] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=2] at @s anchored eyes run summon snowball ^ ^ ^1 {Tags:["random_mot_mid","smoke"],"hitDamage":3}
execute as @a[scores={delay=1..}] if entity @s[scores={cooldown=0}] if items entity @s[scores={reload=0}] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=2] at @s anchored eyes run summon snowball ^ ^ ^1 {Tags:["random_mot_mid","smoke"],"hitDamage":3}
execute as @a[scores={delay=1..}] if entity @s[scores={cooldown=0}] if items entity @s[scores={reload=0}] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=2] at @s anchored eyes run summon snowball ^ ^ ^1 {Tags:["random_mot_mid","smoke"],"hitDamage":3}
execute as @a[scores={delay=1..}] if entity @s[scores={cooldown=0}] if items entity @s[scores={reload=0}] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=2] at @s anchored eyes run summon snowball ^ ^ ^1 {Tags:["random_mot_mid","smoke"],"hitDamage":3}
execute as @a[scores={delay=1..}] if entity @s[scores={cooldown=0}] if items entity @s[scores={reload=0}] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=2] at @s anchored eyes run summon snowball ^ ^ ^1 {Tags:["random_mot_mid","smoke"],"hitDamage":3}
execute as @a[scores={delay=1..}] if entity @s[scores={cooldown=0}] if items entity @s[scores={reload=0}] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=2] at @s anchored eyes run summon snowball ^ ^ ^1 {Tags:["random_mot_mid","smoke"],"hitDamage":3}
execute as @a[scores={delay=1..}] if entity @s[scores={cooldown=0}] if items entity @s[scores={reload=0}] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=2] at @s anchored eyes run summon snowball ^ ^ ^1 {Tags:["random_mot_mid","smoke"],"hitDamage":3}
execute as @a[scores={delay=1..}] if entity @s[scores={cooldown=0}] if items entity @s[scores={reload=0}] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=2] at @s anchored eyes run playsound minecraft:entity.generic.explode player @a
execute as @a[scores={delay=1..}] if entity @s[scores={cooldown=0}] if items entity @s[scores={reload=0}] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=2] at @s anchored eyes run particle minecraft:cloud ^ ^ ^0.5 0.1 0.1 0.1 0.2 20 force
execute as @a[scores={delay=1..}] if entity @s[scores={cooldown=0}] if items entity @s[scores={reload=0}] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=2] at @s anchored eyes run scoreboard players remove @s ammo 8
execute as @a[scores={r_click_detect=1..,ammo=5..}] if entity @s[scores={cooldown=0}] if items entity @s[scores={reload=0}] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=2] run scoreboard players set @s cooldown 20

#狙
execute as @a[scores={r_click_detect=1..}] if items entity @s[scores={reload=0}] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=3] run scoreboard players set @s[scores={ammo=5..}] delay 1
execute as @a[scores={delay=1..}] if entity @s[scores={cooldown=0}] if items entity @s[scores={reload=0}] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=3] at @s anchored eyes run summon snowball ^ ^ ^1 {Tags:["mot","smoke"],"hitDamage":30}
execute as @a[scores={delay=1..}] if entity @s[scores={cooldown=0}] if items entity @s[scores={reload=0}] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=3] at @s anchored eyes run playsound minecraft:entity.generic.explode player @a
execute as @a[scores={delay=1..}] if entity @s[scores={cooldown=0}] if items entity @s[scores={reload=0}] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=3] at @s anchored eyes run particle minecraft:smoke ^ ^ ^0.2 0.1 0.1 0.1 0.05 10 force
execute as @a[scores={r_click_detect=1..}] if entity @s[scores={cooldown=0}] if items entity @s[scores={reload=0,ammo=5..}] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=3] run scoreboard players remove @s ammo 5
execute as @a[scores={r_click_detect=1..}] if entity @s[scores={cooldown=0}] if items entity @s[scores={reload=0,ammo=5..}] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=3] run scoreboard players set @s cooldown 60

#充能武器
execute as @a[scores={ammo=1..}] if entity @s[scores={r_click_detect=1..,cha=100..}] run tag @s add BIC
execute as @a if entity @s[scores={r_click_detect=1..,cha=100..}] run scoreboard players set @a[scores={cha=100..}] reload 100
execute as @a if entity @s[scores={r_click_detect=1..,cha=100..}] run scoreboard players set @a[scores={cha=100..}] cha 0
execute as @a[tag=BIC] at @s run playsound minecraft:entity.ender_dragon.ambient player @a ~ ~ ~ 10 1
execute as @a[tag=BIC] at @s run scoreboard players set @s BIC 30
execute as @a[scores={BIC=1..}] if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=4] at @s anchored eyes run effect give @s minecraft:slowness 1 100 true
execute as @a[scores={BIC=1..}] if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=4] at @s run tp @s ^ ^ ^ ~ ~
execute as @a[scores={BIC=1..}] if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=4] at @s anchored eyes run summon snowball ^ ^ ^1 {Tags:["random_mot_big","snow"],"hitDamage":2}
execute as @a[scores={BIC=1..}] if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=4] at @s anchored eyes run summon snowball ^ ^ ^1 {Tags:["random_mot_big","snow"],"hitDamage":2}
execute as @a[scores={BIC=1..}] if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=4] at @s anchored eyes run summon snowball ^ ^ ^1 {Tags:["random_mot_big","snow"],"hitDamage":2}
execute as @a[scores={BIC=1..}] if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=4] at @s anchored eyes run summon snowball ^ ^ ^1 {Tags:["random_mot_big","snow"],"hitDamage":2}
execute as @a[scores={BIC=1..}] if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=4] at @s anchored eyes run summon snowball ^ ^ ^1 {Tags:["random_mot_big","snow"],"hitDamage":2}
execute as @a[scores={BIC=1..}] if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=4] at @s anchored eyes run summon snowball ^ ^ ^1 {Tags:["random_mot_big","snow"],"hitDamage":2}
execute as @a[scores={BIC=1..}] if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=4] at @s anchored eyes run summon snowball ^ ^ ^1 {Tags:["random_mot_big","snow"],"hitDamage":2}
execute as @a[scores={BIC=1..}] if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=4] at @s run scoreboard players remove @s ammo 1
tag @a remove BIC

#鱼雷(?
execute as @a[scores={r_click_detect=1..}] if items entity @s[scores={reload=0}] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=5] run scoreboard players set @s[scores={ammo=40..}] delay 1
execute as @a[scores={r_click_detect=1..}] if items entity @s[scores={reload=0,ammo=..39}] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=5] run title @a times 0 1 0
execute as @a[scores={r_click_detect=1..}] if items entity @s[scores={reload=0,ammo=..39}] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=5] run title @s subtitle [{"text":"弹药不足","color":"red"}]
execute as @a[scores={delay=1..}] if entity @s[scores={cooldown=0}] if items entity @s[scores={reload=0}] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=5] at @s anchored eyes run particle minecraft:flame ^ ^ ^0.5 0.1 0.1 0.1 0.2 20 force
execute as @a[scores={delay=1..}] if entity @s[scores={cooldown=0}] if items entity @s[scores={reload=0}] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=5] at @s anchored eyes run playsound entity.wither.shoot player @a ~ ~ ~ 1 1
execute as @a[scores={delay=1..}] if entity @s[scores={cooldown=0}] if items entity @s[scores={reload=0}] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=5] at @s anchored eyes run summon minecraft:item ^ ^ ^1 {Item:{id:"minecraft:snowball"},PickupDelay:25500,Tags:["mot_slow","smoke_big","bomb"]}
execute as @a[scores={r_click_detect=1..}] if entity @s[scores={cooldown=0,ammo=40..}] if items entity @s[scores={reload=0}] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=5] run scoreboard players remove @s ammo 40
execute as @a[scores={r_click_detect=1..}] if entity @s[scores={cooldown=0,ammo=40..}] if items entity @s[scores={reload=0}] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=5] run scoreboard players set @s cooldown 80
#bomb
execute as @e[type=item,tag=bomb,nbt={OnGround:1b}] at @s run particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force
execute as @e[type=item,tag=bomb,nbt={OnGround:1b}] at @s run playsound entity.generic.explode player @a ~ ~ ~ 5
execute as @e[type=item,tag=bomb,nbt={OnGround:1b}] at @s run summon snowball ~ ~1 ~ {Tags:["random_exp","snow","small_exp"],"hitDamage":6}
execute as @e[type=item,tag=bomb,nbt={OnGround:1b}] at @s run summon snowball ~ ~1 ~ {Tags:["random_exp","snow","small_exp"],"hitDamage":6}
execute as @e[type=item,tag=bomb,nbt={OnGround:1b}] at @s run summon snowball ~ ~1 ~ {Tags:["random_exp","snow","small_exp"],"hitDamage":6}
execute as @e[type=item,tag=bomb,nbt={OnGround:1b}] at @s run summon snowball ~ ~1 ~ {Tags:["random_exp","snow","small_exp"],"hitDamage":6}
execute as @e[type=item,tag=bomb,nbt={OnGround:1b}] at @s run summon snowball ~ ~1 ~ {Tags:["random_exp","snow","small_exp"],"hitDamage":6}
execute as @e[type=item,tag=bomb,nbt={OnGround:1b}] at @s run summon snowball ~ ~1 ~ {Tags:["random_exp","snow","small_exp"],"hitDamage":6}
execute as @e[type=item,tag=bomb,nbt={OnGround:1b}] at @s run summon snowball ~ ~1 ~ {Tags:["random_exp","snow","small_exp"],"hitDamage":6}
execute as @e[type=item,tag=bomb,nbt={OnGround:1b}] at @s run summon snowball ~ ~1 ~ {Tags:["random_exp","snow","small_exp"],"hitDamage":6}
execute as @e[type=item,tag=bomb,nbt={OnGround:1b}] at @s run summon snowball ~ ~1 ~ {Tags:["random_exp","snow","small_exp"],"hitDamage":6}
execute as @e[type=item,tag=bomb,nbt={OnGround:1b}] at @s run summon snowball ~ ~1 ~ {Tags:["random_exp","snow","small_exp"],"hitDamage":6}
execute as @e[type=item,tag=bomb,nbt={OnGround:1b}] at @s run summon snowball ~ ~1 ~ {Tags:["random_exp","snow","small_exp"],"hitDamage":6}
execute as @e[type=item,tag=bomb,nbt={OnGround:1b}] at @s run summon snowball ~ ~1 ~ {Tags:["random_exp","snow","small_exp"],"hitDamage":6}
execute as @e[type=item,tag=bomb,nbt={OnGround:1b}] at @s run summon snowball ~ ~1 ~ {Tags:["random_exp","snow","small_exp"],"hitDamage":6}
execute as @e[type=item,tag=bomb,nbt={OnGround:1b}] at @s run summon snowball ~ ~1 ~ {Tags:["random_exp","snow","small_exp"],"hitDamage":6}
execute as @e[type=item,tag=bomb,nbt={OnGround:1b}] at @s run summon snowball ~ ~1 ~ {Tags:["random_exp","snow","small_exp"],"hitDamage":6}
execute as @e[type=item,tag=bomb,nbt={OnGround:1b}] at @s run summon snowball ~ ~1 ~ {Tags:["random_exp","snow","small_exp"],"hitDamage":6}
execute as @e[type=item,tag=bomb,nbt={OnGround:1b}] at @s run summon snowball ~ ~1 ~ {Tags:["random_exp","snow","small_exp"],"hitDamage":6}
execute as @e[type=item,tag=bomb,nbt={OnGround:1b}] at @s run summon snowball ~ ~1 ~ {Tags:["random_exp","snow","small_exp"],"hitDamage":6}
execute as @e[type=item,tag=bomb,nbt={OnGround:1b}] at @s run summon snowball ~ ~1 ~ {Tags:["random_exp","snow","small_exp"],"hitDamage":6}
execute as @e[type=item,tag=bomb,nbt={OnGround:1b}] at @s run summon snowball ~ ~1 ~ {Tags:["random_exp","snow","small_exp"],"hitDamage":6}
execute as @e[type=item,tag=bomb,nbt={OnGround:1b}] at @s run summon snowball ~ ~1 ~ {Tags:["random_exp","snow","small_exp"],"hitDamage":6}
execute as @e[type=item,tag=bomb,nbt={OnGround:1b}] at @s run summon snowball ~ ~1 ~ {Tags:["random_exp","snow","small_exp"],"hitDamage":6}
execute as @e[type=item,tag=bomb,nbt={OnGround:1b}] at @s run summon snowball ~ ~1 ~ {Tags:["random_exp","snow","small_exp"],"hitDamage":6}
execute as @e[type=item,tag=bomb,nbt={OnGround:1b}] at @s run summon snowball ~ ~1 ~ {Tags:["random_exp","snow","small_exp"],"hitDamage":6}
execute as @e[type=item,tag=bomb,nbt={OnGround:1b}] at @s run summon snowball ~ ~1 ~ {Tags:["random_exp","snow","small_exp"],"hitDamage":6}
execute as @e[type=item,tag=bomb,nbt={OnGround:1b}] at @s run summon snowball ~ ~1 ~ {Tags:["random_exp","snow","small_exp"],"hitDamage":6}
execute as @e[type=item,tag=bomb,nbt={OnGround:1b}] at @s run summon snowball ~ ~1 ~ {Tags:["random_exp","snow","small_exp"],"hitDamage":6}
execute as @e[type=item,tag=bomb,nbt={OnGround:1b}] at @s run summon snowball ~ ~1 ~ {Tags:["random_exp","snow","small_exp"],"hitDamage":6}
execute as @e[type=item,tag=bomb,nbt={OnGround:1b}] at @s run summon snowball ~ ~1 ~ {Tags:["random_exp","snow","small_exp"],"hitDamage":6}
execute as @e[type=item,tag=bomb,nbt={OnGround:1b}] at @s run summon snowball ~ ~1 ~ {Tags:["random_exp","snow","small_exp"],"hitDamage":6}
execute as @e[type=item,tag=bomb,nbt={OnGround:1b}] at @s run summon snowball ~ ~1 ~ {Tags:["random_exp","snow","small_exp"],"hitDamage":6}
execute as @e[type=item,tag=bomb,nbt={OnGround:1b}] at @s run summon snowball ~ ~1 ~ {Tags:["random_exp","snow","small_exp"],"hitDamage":6}
execute as @e[type=item,tag=bomb,nbt={OnGround:1b}] at @s run summon snowball ~ ~1 ~ {Tags:["random_exp","snow","small_exp"],"hitDamage":6}
execute as @e[type=item,tag=bomb,nbt={OnGround:1b}] at @s run summon snowball ~ ~1 ~ {Tags:["random_exp","snow","small_exp"],"hitDamage":6}
execute as @e[type=item,tag=bomb,nbt={OnGround:1b}] at @s run summon snowball ~ ~1 ~ {Tags:["random_exp","snow","small_exp"],"hitDamage":6}
execute as @e[type=item,tag=bomb,nbt={OnGround:1b}] at @s run summon snowball ~ ~1 ~ {Tags:["random_exp","snow","small_exp"],"hitDamage":6}
execute as @e[type=item,tag=bomb,nbt={OnGround:1b}] at @s run summon snowball ~ ~1 ~ {Tags:["random_exp","snow","small_exp"],"hitDamage":6}
execute as @e[type=item,tag=bomb,nbt={OnGround:1b}] at @s run summon snowball ~ ~1 ~ {Tags:["random_exp","snow","small_exp"],"hitDamage":6}
execute as @e[type=item,tag=bomb,nbt={OnGround:1b}] at @s run summon snowball ~ ~1 ~ {Tags:["random_exp","snow","small_exp"],"hitDamage":6}
execute as @e[type=item,tag=bomb,nbt={OnGround:1b}] at @s run summon snowball ~ ~1 ~ {Tags:["random_exp","snow","small_exp"],"hitDamage":6}
execute as @e[type=item,tag=bomb,nbt={OnGround:1b}] at @s run summon snowball ~ ~1 ~ {Tags:["random_exp","snow","small_exp"],"hitDamage":6}
execute as @e[type=item,tag=bomb,nbt={OnGround:1b}] at @s run summon snowball ~ ~1 ~ {Tags:["random_exp","snow","small_exp"],"hitDamage":6}
execute as @e[type=item,tag=bomb,nbt={OnGround:1b}] at @s run summon snowball ~ ~1 ~ {Tags:["random_exp","snow","small_exp"],"hitDamage":6}
execute as @e[type=item,tag=bomb,nbt={OnGround:1b}] at @s run summon snowball ~ ~1 ~ {Tags:["random_exp","snow","small_exp"],"hitDamage":6}
execute as @e[type=item,tag=bomb,nbt={OnGround:1b}] at @s run tag @e[distance=..6] add damage
execute as @e[type=item,tag=bomb,nbt={OnGround:1b}] at @s run tag @e[distance=..1] add damage_big
execute as @e[type=item,tag=bomb,nbt={OnGround:1b}] at @s run tag @e[distance=..12] add damage_small
execute as @e[tag=damage_small] at @s run damage @s 10 freeze at ~ ~ ~
execute as @e[tag=damage_big] at @s run damage @s 100 freeze at ~ ~ ~
execute as @e[tag=damage] at @s run damage @s 30 freeze at ~ ~ ~
tag @e remove damage
tag @e remove damage_big
tag @e remove damage_small
execute as @e[type=armor_stand,tag=bomb,nbt={OnGround:1b}] at @s run kill @s

#铲子
execute as @a[scores={r_click_detect=1..,ammo=..199,reload=0,sne=1..}] if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=10] run scoreboard players set @s delay 4
execute as @a[scores={delay=1..,ammo=..199}] if entity @s[scores={cooldown=0,sne=1..}] if items entity @s[scores={reload=0}] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=10] at @s if block ~ ~ ~ snow at @s run particle minecraft:snowflake ^ ^ ^0.5 0.1 0.1 0.1 0.2 20 force
execute as @a[scores={delay=1..,ammo=..199}] if entity @s[scores={cooldown=0,sne=1..}] if items entity @s[scores={reload=0}] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=10] at @s if block ~ ~ ~ snow at @s anchored eyes run playsound block.snow.break player @a ~ ~ ~ 1 1
execute as @a[scores={delay=1..,ammo=..199}] if entity @s[scores={cooldown=0,sne=1..}] if items entity @s[scores={reload=0}] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=10] at @s if block ~ ~ ~ snow run scoreboard players add @s ammo 1



#sound
scoreboard players set @a r_click_detect 0