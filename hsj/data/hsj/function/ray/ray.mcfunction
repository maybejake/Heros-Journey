execute if block ~ ~ ~ minecraft:end_portal_frame[eye=true] if block ~ ~0.1875 ~ minecraft:end_portal_frame[eye=true] run function hsj:ray/hit
scoreboard players add @s hsj_raycast_distance 1

execute if score @s hsj_raycast_hit matches 0 if score @s hsj_raycast_distance < @s hsj_reach positioned ^ ^ ^0.01 run function hsj:ray/ray