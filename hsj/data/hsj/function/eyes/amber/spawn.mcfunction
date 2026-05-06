scoreboard players set $resin_clump_check hsj.dummy 0

execute at @a[tag=hsj.creaking_killer] as @e[type=minecraft:item,predicate=hsj:resin_clump,distance=..100] at @s run function hsj:eyes/amber/on_resin_clump
tag @a[tag=hsj.creaking_killer] remove hsj.creaking_killer