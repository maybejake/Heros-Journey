execute if score $resin_clump_check hsj.dummy matches 1 run return fail

execute store result score $age hsj.dummy run data get entity @s Age
execute if score $age hsj.dummy matches 5.. run return fail

loot spawn ~ ~ ~ loot hsj:amber_eye