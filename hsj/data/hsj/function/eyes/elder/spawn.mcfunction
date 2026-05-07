scoreboard players set $item_check hsj.dummy 0

execute at @a[tag=hsj.elder_guardian_killer] as @e[type=minecraft:item,predicate=hsj:wet_sponge,distance=..100] at @s run function hsj:eyes/elder/on_item
tag @a[tag=hsj.elder_guardian_killer] remove hsj.elder_guardian_killer