

scoreboard objectives add r_click_detect minecraft.used:minecraft.carrot_on_a_stick "RCD"
scoreboard objectives add anticheat minecraft.used:minecraft.carrot_on_a_stick "AC"
scoreboard objectives add timer dummy
scoreboard objectives add CT dummy
scoreboard objectives add delay dummy
scoreboard objectives add ammo dummy
scoreboard objectives add reload dummy
scoreboard objectives add cooldown dummy
scoreboard objectives add cha dummy
scoreboard objectives add BIC dummy
scoreboard objectives add delay_time dummy
scoreboard objectives add sne minecraft.custom:minecraft.sneak_time
scoreboard players set @a reload 0
scoreboard players set @a ammo 0
scoreboard players set @a cooldown 0
scoreboard players set @a cha 0
scoreboard players set @a CT 0
scoreboard objectives add health health

tag @a remove boss

#TEST!!!!
bossbar add boss {"text":"BOSS","color":"red"}
bossbar set minecraft:boss max 100
tag @a add DEBUG

