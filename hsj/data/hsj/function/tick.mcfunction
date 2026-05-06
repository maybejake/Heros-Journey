execute as @a at @s run function hsj:player

execute as @e[type=minecraft:item_display,tag=hsj_display] at @s unless block ~ ~ ~ minecraft:end_portal_frame[eye=true] run kill @s
execute as @e[type=minecraft:marker,tag=hsj_remove_eye] at @s run function hsj:remove/tick