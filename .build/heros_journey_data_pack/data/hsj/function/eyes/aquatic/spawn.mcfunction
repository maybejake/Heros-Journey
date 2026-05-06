scoreboard players set $catch_check hsj.dummy 0
execute at @a[tag=hsj.rod_hooked] as @e[type=minecraft:item, distance=..100] run function hsj:eyes/aquatic/on_catch
tag @a[tag=hsj.rod_hooked] remove hsj.rod_hooked
