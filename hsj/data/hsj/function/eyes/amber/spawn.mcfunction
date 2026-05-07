scoreboard players set $item_check hsj.dummy 0

execute at @a[tag=hsj.creaking_killer] as @e[type=minecraft:item,predicate=hsj:creaking_heart_drop,distance=..100] at @s run function hsj:eyes/amber/on_item
tag @a[tag=hsj.creaking_killer] remove hsj.creaking_killer