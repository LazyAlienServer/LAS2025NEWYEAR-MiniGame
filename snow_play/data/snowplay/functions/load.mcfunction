tellraw @a "§e[DEBUG] §a已重新加载数据包"
team add A
team modify A color red
team modify A friendlyFire false
team add B
team modify B color blue
team modify B friendlyFire false
team add DEBUG
scoreboard objectives add list dummy
team modify DEBUG prefix "§b[DEBUG]"

scoreboard objectives add snowgun_use minecraft.used:minecraft.carrot_on_a_stick
#雪球枪1 use检测

scoreboard objectives add damage_storage dummy
#耐久检测

scoreboard objectives add snowgun_store dummy