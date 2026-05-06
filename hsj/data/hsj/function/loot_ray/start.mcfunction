scoreboard players set @s hsj_raycast_hit 0
scoreboard players set @s hsj_raycast_distance 0

#store reach
execute store result score @s hsj_reach run attribute @s minecraft:block_interaction_range get 100

execute at @s anchored eyes positioned ^ ^ ^ anchored feet run function hsj:loot_ray/ray