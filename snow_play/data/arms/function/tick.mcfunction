execute at @a[scores={carrot_use=1..}] run playsound minecraft:entity.snowball.throw block @a[scores={carrot_use=1..}]
execute at @a[scores={carrot_use=1..}] run function arms:carrot_gun/carrot_gun
execute as @a[scores={carrot_use=1..}] run scoreboard players set @s carrot_use 0
#execute as @a[nbt={SelectedItem:{components:{"minecraft:custom_data": {Tags: "gun"}}}}] run say "a"
execute at @e[type=minecraft:snowball] run particle poof ~ ~ ~
execute as @e[tag=damage,type=minecraft:snowball] at @e[tag=damage,type=minecraft:snowball] run damage @e[limit=1,distance=..2] 3