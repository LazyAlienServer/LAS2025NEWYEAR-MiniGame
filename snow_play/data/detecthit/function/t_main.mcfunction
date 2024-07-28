
#-1
scoreboard players remove @a[scores={cooldown=1..}] cooldown 1
scoreboard players remove @a[scores={delay=1..}] delay 1
scoreboard players remove @a[scores={reload=1..}] reload 1
scoreboard players remove @a[scores={BIC=1..}] BIC 1
execute as @a if items entity @s weapon.offhand minecraft:shield run effect give @s minecraft:resistance 1 2 true
#?
execute as @a[scores={r_click_detect=1..}] if items entity @s[scores={reload=0}] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=1] run scoreboard players set @s[scores={ammo=1..}] delay 5
execute as @a[scores={delay=2..}] if entity @s[scores={cooldown=0}] if items entity @s[scores={reload=0}] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=1] at @s anchored eyes run summon snowball ^ ^ ^1 {Tags:["random_mot"],"hitDamage":1.5}
execute as @a[scores={delay=1}] if entity @s[scores={cooldown=0}] if items entity @s[scores={reload=0}] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=1] at @s anchored eyes run summon snowball ^ ^ ^1 {Tags:["random_mot","light"],"hitDamage":1.5}
execute as @a[scores={delay=1..}] if entity @s[scores={cooldown=0}] if items entity @s[scores={reload=0}] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=1] at @s anchored eyes run playsound minecraft:entity.egg.throw player @a
execute as @a[scores={delay=1..}] if entity @s[scores={cooldown=0}] if items entity @s[scores={reload=0}] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=1] at @s anchored eyes run scoreboard players remove @s ammo 1

#Shotguns
execute as @a[scores={r_click_detect=1..}] if items entity @s[scores={reload=0}] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=2] run scoreboard players set @s[scores={ammo=1..}] delay 1
execute as @a[scores={delay=1..}] if entity @s[scores={cooldown=0}] if items entity @s[scores={reload=0}] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=2] at @s anchored eyes run summon snowball ^ ^ ^1 {Tags:["random_mot_big","smoke"],"hitDamage":3}
execute as @a[scores={delay=1..}] if entity @s[scores={cooldown=0}] if items entity @s[scores={reload=0}] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=2] at @s anchored eyes run summon snowball ^ ^ ^1 {Tags:["random_mot_big","smoke"],"hitDamage":3}
execute as @a[scores={delay=1..}] if entity @s[scores={cooldown=0}] if items entity @s[scores={reload=0}] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=2] at @s anchored eyes run summon snowball ^ ^ ^1 {Tags:["random_mot_big","smoke"],"hitDamage":3}
execute as @a[scores={delay=1..}] if entity @s[scores={cooldown=0}] if items entity @s[scores={reload=0}] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=2] at @s anchored eyes run summon snowball ^ ^ ^1 {Tags:["random_mot_big","smoke"],"hitDamage":3}
execute as @a[scores={delay=1..}] if entity @s[scores={cooldown=0}] if items entity @s[scores={reload=0}] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=2] at @s anchored eyes run summon snowball ^ ^ ^1 {Tags:["random_mot_big","smoke"],"hitDamage":3}
execute as @a[scores={delay=1..}] if entity @s[scores={cooldown=0}] if items entity @s[scores={reload=0}] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=2] at @s anchored eyes run summon snowball ^ ^ ^1 {Tags:["random_mot_big","smoke"],"hitDamage":3}
execute as @a[scores={delay=1..}] if entity @s[scores={cooldown=0}] if items entity @s[scores={reload=0}] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=2] at @s anchored eyes run summon snowball ^ ^ ^1 {Tags:["random_mot_big","smoke"],"hitDamage":3}
execute as @a[scores={delay=1..}] if entity @s[scores={cooldown=0}] if items entity @s[scores={reload=0}] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=2] at @s anchored eyes run summon snowball ^ ^ ^1 {Tags:["random_mot_big","smoke"],"hitDamage":3}
execute as @a[scores={delay=1..}] if entity @s[scores={cooldown=0}] if items entity @s[scores={reload=0}] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=2] at @s anchored eyes run playsound minecraft:entity.generic.explode player @a
execute as @a[scores={delay=1..}] if entity @s[scores={cooldown=0}] if items entity @s[scores={reload=0}] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=2] at @s anchored eyes run particle minecraft:cloud ^ ^ ^0.5 0.1 0.1 0.1 0.2 20 force
execute as @a[scores={delay=1..}] if entity @s[scores={cooldown=0}] if items entity @s[scores={reload=0}] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=2] at @s anchored eyes run scoreboard players remove @s ammo 8
execute as @a[scores={r_click_detect=1..}] if entity @s[scores={cooldown=0}] if items entity @s[scores={reload=0}] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=2] run scoreboard players set @s cooldown 20

#狙
execute as @a[scores={r_click_detect=1..}] if items entity @s[scores={reload=0}] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=3] run scoreboard players set @s[scores={ammo=1..}] delay 1
execute as @a[scores={delay=1..}] if entity @s[scores={cooldown=0}] if items entity @s[scores={reload=0}] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=3] at @s anchored eyes run summon snowball ^ ^ ^1 {Tags:["mot","smoke"],"hitDamage":50}
execute as @a[scores={delay=1..}] if entity @s[scores={cooldown=0}] if items entity @s[scores={reload=0}] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=3] at @s anchored eyes run playsound minecraft:entity.generic.explode player @a
execute as @a[scores={delay=1..}] if entity @s[scores={cooldown=0}] if items entity @s[scores={reload=0}] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=3] at @s anchored eyes run particle minecraft:smoke ^ ^ ^0.2 0.1 0.1 0.1 0.05 10 force
execute as @a[scores={r_click_detect=1..}] if entity @s[scores={cooldown=0}] if items entity @s[scores={reload=0}] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=3] run scoreboard players set @s cooldown 40

#充能武器
execute as @a if entity @s[scores={r_click_detect=1..,cha=100..}] run tag @s add BIC
execute as @a if entity @s[scores={r_click_detect=1..}] run scoreboard players set @a[scores={cha=100..}] reload 100
execute as @a if entity @s[scores={r_click_detect=1..}] run scoreboard players set @a[scores={cha=100..}] cha 0
execute as @a[tag=BIC] at @s run playsound minecraft:entity.ender_dragon.ambient player @a ~ ~ ~ 10 1
execute as @a[tag=BIC] at @s run scoreboard players set @s BIC 30
execute as @a[scores={BIC=1..}] if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=4] at @s anchored eyes run effect give @s minecraft:slowness 1 100 true
execute as @a[scores={BIC=1..}] if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=4] at @s run tp @s ^ ^ ^ ~ ~
execute as @a[scores={BIC=1..}] if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=4] at @s anchored eyes run summon snowball ^ ^ ^1 {Tags:["random_mot_big","snow"],"hitDamage":1}
execute as @a[scores={BIC=1..}] if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=4] at @s anchored eyes run summon snowball ^ ^ ^1 {Tags:["random_mot_big","snow"],"hitDamage":1}
execute as @a[scores={BIC=1..}] if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=4] at @s anchored eyes run summon snowball ^ ^ ^1 {Tags:["random_mot_big","snow"],"hitDamage":1}
execute as @a[scores={BIC=1..}] if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=4] at @s anchored eyes run summon snowball ^ ^ ^1 {Tags:["random_mot_big","snow"],"hitDamage":1}
execute as @a[scores={BIC=1..}] if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_model_data=4] at @s anchored eyes run summon snowball ^ ^ ^1 {Tags:["random_mot_big","snow"],"hitDamage":1}
tag @a remove BIC





scoreboard players set @a r_click_detect 0