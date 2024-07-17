execute as @a[scores={death_trigger=1}] run scoreboard players set @s death_save 0
execute as @a[scores={death_trigger=1}] run scoreboard players reset @s death_trigger
execute as @a[scores={death_save=0}] run gamemode spectator @s
#death模式的记录玩家是否死亡

#execute unless entity @r[team=A,scores={death_save=1}] if entity @e[name=list,scores={list=1}] run function snowplay:death/b_win
#execute unless entity @r[team=B,scores={death_save=1}] if entity @e[name=list,scores={list=1}] run function snowplay:death/a_win

execute unless entity @r[team=A,scores={death_save=1}] if score #list list matches 1 run function snowplay:death/b_win
execute unless entity @r[team=B,scores={death_save=1}] if score #list list matches 1 run function snowplay:death/a_win
#death模式的存活玩家检测

#execute as @a if score @s snowgun_use matches 1.. run function snowplay:arms/snowgun/obs