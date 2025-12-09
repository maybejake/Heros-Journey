execute if block ~ ~ ~ minecraft:end_portal_frame[eye=false] run return run kill @s
execute if entity @n[type=minecraft:item_display,tag=hsj_display,distance=..0.5] run return run kill @s

execute store result score @s hsj_remove_chance run random value 1..10
execute if score @s hsj_remove_chance matches 1 run function hsj:remove/pop