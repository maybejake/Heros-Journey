data modify storage hsj:temp villager set from entity @s

execute store result score $xp hsj.dummy run data get storage hsj:temp villager.Xp
execute if score $xp hsj.dummy matches 0 run return fail

execute if data storage hsj:temp villager.VillagerData{profession:"minecraft:weaponsmith"} run return run execute if data storage hsj:temp villager.VillagerData{level:5} run function hsj:eyes/forged/main

# has xp in another profession, fail
tag @s add hsj.checked_villager