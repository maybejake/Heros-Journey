data modify storage hsj:temp loot.loot_table set value "hsj:curious_eye"

execute as @a[tag=hsj.curious_eye_loot] run function hsj:loot/main
tag @a[tag=hsj.curious_eye_loot] remove hsj.curious_eye_loot