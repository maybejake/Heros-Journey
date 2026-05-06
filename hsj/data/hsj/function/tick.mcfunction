execute as @a at @s run function hsj:player

execute as @e[type=minecraft:item_display,tag=hsj.eye_display,predicate=!hsj:filled_frame] run kill @s
execute as @e[type=minecraft:marker,tag=hsj_remove_eye] at @s run function hsj:remove/tick