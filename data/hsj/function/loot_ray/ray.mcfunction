execute if block ~ ~ ~ #hsj:loot align xyz positioned ~0.5 ~0.5 ~0.5 run function hsj:loot_ray/hit
scoreboard players add @s hsj_raycast_distance 1

execute if score @s hsj_raycast_hit matches 0 if score @s hsj_raycast_distance < @s hsj_reach positioned ^ ^ ^0.01 run function hsj:loot_ray/ray