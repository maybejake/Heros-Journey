execute if score $item_check hsj.dummy matches 1 run return fail

execute store result score $age hsj.dummy run data get entity @s Age
execute if score $age hsj.dummy matches 3.. run return fail

scoreboard players set $item_check hsj.dummy 1
loot spawn ~ ~ ~ loot hsj:elder_eye