scoreboard players set $item_check hsj.dummy 0

execute at @a[tag=hsj.wither_killer] as @e[type=minecraft:item,predicate=hsj:nether_star,distance=..100] at @s run function hsj:eyes/withered/on_item
tag @a[tag=hsj.wither_killer] remove hsj.wither_killer