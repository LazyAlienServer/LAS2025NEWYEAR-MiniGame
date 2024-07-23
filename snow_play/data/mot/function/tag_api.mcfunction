
#value the taged entity motion
#definition tag: "mot"
execute as @e[tag=mot] at @s store result entity @s Motion[0] double 0.001 run scoreboard players get @p x2
execute as @e[tag=mot] at @s store result entity @s Motion[1] double 0.001 run scoreboard players get @p y2
execute as @e[tag=mot] at @s store result entity @s Motion[2] double 0.001 run scoreboard players get @p z2
tag @e remove mot

#definition tag: "random_mot_big"
execute as @e[tag=random_mot_big] at @s store result score @s rad_x run scoreboard players get @p x2
execute as @e[tag=random_mot_big] run execute as @s store result score @s rad_store run random value -1000..1000
execute as @e[tag=random_mot_big] run scoreboard players operation @s rad_x += @s rad_store

execute as @e[tag=random_mot_big] at @s store result score @s rad_y run scoreboard players get @p y2
execute as @e[tag=random_mot_big] run execute as @s store result score @s rad_store run random value -1000..1000
execute as @e[tag=random_mot_big] run scoreboard players operation @s rad_y += @s rad_store

execute as @e[tag=random_mot_big] at @s store result score @s rad_z run scoreboard players get @p z2
execute as @e[tag=random_mot_big] run execute as @s store result score @s rad_store run random value -1000..1000
execute as @e[tag=random_mot_big] run scoreboard players operation @s rad_z += @s rad_store

execute as @e[tag=random_mot_big] at @s store result entity @s Motion[0] double 0.001 run scoreboard players get @s rad_x
execute as @e[tag=random_mot_big] at @s store result entity @s Motion[1] double 0.001 run scoreboard players get @s rad_y
execute as @e[tag=random_mot_big] at @s store result entity @s Motion[2] double 0.001 run scoreboard players get @s rad_z
tag @e remove random_mot_big

#definition tag: "random_mot_mid"
execute as @e[tag=random_mot_mid] at @s store result score @s rad_x run scoreboard players get @p x2
execute as @e[tag=random_mot_mid] run execute as @s store result score @s rad_store run random value -500..500
execute as @e[tag=random_mot_mid] run scoreboard players operation @s rad_x += @s rad_store

execute as @e[tag=random_mot_mid] at @s store result score @s rad_y run scoreboard players get @p y2
execute as @e[tag=random_mot_mid] run execute as @s store result score @s rad_store run random value -500..500
execute as @e[tag=random_mot_mid] run scoreboard players operation @s rad_y += @s rad_store

execute as @e[tag=random_mot_mid] at @s store result score @s rad_z run scoreboard players get @p z2
execute as @e[tag=random_mot_mid] run execute as @s store result score @s rad_store run random value -500..500
execute as @e[tag=random_mot_mid] run scoreboard players operation @s rad_z += @s rad_store

execute as @e[tag=random_mot_mid] at @s store result entity @s Motion[0] double 0.001 run scoreboard players get @s rad_x
execute as @e[tag=random_mot_mid] at @s store result entity @s Motion[1] double 0.001 run scoreboard players get @s rad_y
execute as @e[tag=random_mot_mid] at @s store result entity @s Motion[2] double 0.001 run scoreboard players get @s rad_z
tag @e remove random_mot_mid

#definition tag: "random_mot"
#of course, it's random_mot_small
execute as @e[tag=random_mot] at @s store result score @s rad_x run scoreboard players get @p x2
execute as @e[tag=random_mot] run execute as @s store result score @s rad_store run random value -100..100
execute as @e[tag=random_mot] run scoreboard players operation @s rad_x += @s rad_store

execute as @e[tag=random_mot] at @s store result score @s rad_y run scoreboard players get @p y2
execute as @e[tag=random_mot] run execute as @s store result score @s rad_store run random value -100..100
execute as @e[tag=random_mot] run scoreboard players operation @s rad_y += @s rad_store

execute as @e[tag=random_mot] at @s store result score @s rad_z run scoreboard players get @p z2
execute as @e[tag=random_mot] run execute as @s store result score @s rad_store run random value -100..100
execute as @e[tag=random_mot] run scoreboard players operation @s rad_z += @s rad_store

execute as @e[tag=random_mot] at @s store result entity @s Motion[0] double 0.001 run scoreboard players get @s rad_x
execute as @e[tag=random_mot] at @s store result entity @s Motion[1] double 0.001 run scoreboard players get @s rad_y
execute as @e[tag=random_mot] at @s store result entity @s Motion[2] double 0.001 run scoreboard players get @s rad_z
tag @e remove random_mot
#you can also...算了不说洋文了，你也可以自己复制一份上面的内容然后自己改你想要的random数值————只要记得改tag名就行了

#For exapmle:
#execute as @e[tag=random_mot_custom] at @s store result score @s rad_x run scoreboard players get @p x2
#execute as @e[tag=random_mot_custom] run execute as @s store result score @s rad_store run random value -100..100
#execute as @e[tag=random_mot_custom] run scoreboard players operation @s rad_x += @s rad_store

#execute as @e[tag=random_mot_custom] at @s store result score @s rad_y run scoreboard players get @p y2
#execute as @e[tag=random_mot_custom] run execute as @s store result score @s rad_store run random value -100..100
#execute as @e[tag=random_mot_custom] run scoreboard players operation @s rad_y += @s rad_store

#execute as @e[tag=random_mot_custom] at @s store result score @s rad_z run scoreboard players get @p z2
#execute as @e[tag=random_mot_custom] run execute as @s store result score @s rad_store run random value -100..100
#execute as @e[tag=random_mot_custom] run scoreboard players operation @s rad_z += @s rad_store

#execute as @e[tag=random_mot_custom] at @s store result entity @s Motion[0] double 0.001 run scoreboard players get @s rad_x
#execute as @e[tag=random_mot_custom] at @s store result entity @s Motion[1] double 0.001 run scoreboard players get @s rad_y
#execute as @e[tag=random_mot_custom] at @s store result entity @s Motion[2] double 0.001 run scoreboard players get @s rad_z
#tag @e remove random_mot_custom

#then, you can run /tag to add this tag to everything you want or use {Tags:["random_mot_custom"]} to the summoned entity.

#definition tag: "one_random_mot"
execute as @e[tag=one_random_mot] at @s store result entity @s Motion[0] double 0.001 run scoreboard players get @p rad_x
execute as @e[tag=one_random_mot] at @s store result entity @s Motion[1] double 0.001 run scoreboard players get @p rad_y
execute as @e[tag=one_random_mot] at @s store result entity @s Motion[2] double 0.001 run scoreboard players get @p rad_z
tag @e remove one_random_mot