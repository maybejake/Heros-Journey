data modify storage hsj:temp loot.loot_table set value "hsj:creeping_eye"

execute as @a[tag=hsj.creeping_eye_loot] run function hsj:loot/main
tag @a[tag=hsj.creeping_eye_loot] remove hsj.creeping_eye_loot