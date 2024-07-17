tellraw @a "§3Lazy Alien Server : SnowPlay"
tellraw @a "============================="
tellraw @a "§6功能："
tellraw @a [{"text":"- §7[分配队伍]","clickEvent":{"action":"run_command","value":"/function las:join_ab"}}]
tellraw @a [{"text":"- §7[退出队伍]","clickEvent":{"action":"run_command","value":"/team leave @a[team=!OP]"}}]
tellraw @a [{"text":"- §7[结束游戏]","clickEvent":{"action":"run_command","value":"/function las:end"}}]
tellraw @a [{"text":"- §7[杀死所有人]","clickEvent":{"action":"run_command","value":"/kill @a[team=!OP]"}}]
tellraw @a [{"text":"- §7[重置出生点]","clickEvent":{"action":"run_command","value":"/spawnpoint @a 0 101 0"}}]
tellraw @a "§6开始游戏："
tellraw @a [{"text":"- §2[死亡竞技]","clickEvent":{"action":"run_command","value":"/function snowplay:death/join"}}]
tellraw @a "============================="
