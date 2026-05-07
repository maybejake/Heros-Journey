scoreboard players set $item_check hsj.dummy 0

execute at @a[tag=hsj.evoker_killer] as @e[type=minecraft:item,predicate=hsj:totem,distance=..100] at @s run function hsj:eyes/bound/on_item
tag @a[tag=hsj.evoker_killer] remove hsj.evoker_killer