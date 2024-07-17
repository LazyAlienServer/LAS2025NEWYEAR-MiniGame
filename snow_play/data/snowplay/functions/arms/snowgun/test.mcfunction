execute store result score #snowgun damage_storage run data get entity @s SelectedItem.tag.Damage

execute if score #snowgun damage_storage matches 24 run title @s actionbar "§c库存不足，请重新装填"

execute if score #snowgun damage_storage matches ..23 at @s as @s run function snowplay:arms/fire

#execute store result score @s gun_ammo run clear @s minecraft:lapis_lazuli 0
#存储玩家背包内青金石数量至gun_ammo
#execute if score @s gun_ammo matches 1.. positioned ~ ~1.6 ~ run function gun:gun1/fire
#如果玩家背包内>=1 run function gun:gun1/fire
#execute unless score @s gun_ammo matches 1.. run title @s actionbar {"text":"彈藥不足！","color":"red"}
#否则发送title