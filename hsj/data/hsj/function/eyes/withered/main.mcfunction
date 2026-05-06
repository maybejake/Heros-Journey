advancement revoke @s only hsj:kill_wither

execute store result score $chance hsj.dummy run random value 1..10
execute if score $chance hsj.dummy matches 9.. run return fail

loot replace entity @n[type=minecraft:item,predicate=hsj:wither_star,distance=..100] contents loot hsj:withered_eye