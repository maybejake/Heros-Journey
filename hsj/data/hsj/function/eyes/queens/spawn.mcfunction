scoreboard players set $item_check hsj.dummy 0

execute at @a[tag=hsj.beehive_shearer] as @e[type=minecraft:item,predicate=hsj:honeycomb,distance=..100] at @s run function hsj:eyes/queens/on_item
tag @a[tag=hsj.beehive_shearer] remove hsj.beehive_shearer