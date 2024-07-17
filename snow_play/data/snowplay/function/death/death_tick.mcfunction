execute as @a[scores={death_trigger=1}] run scoreboard players set @s death_save 0
execute as @a[scores={death_trigger=1}] run scoreboard players reset @s death_trigger
execute as @a[scores={death_save=0}] run gamemode spectator @s
execute as @a[team=A,scores={death_save=0}] run function snowplay:death/b_win
execute as @a[team=B,scores={death_save=0}] run function snowplay:death/a_win