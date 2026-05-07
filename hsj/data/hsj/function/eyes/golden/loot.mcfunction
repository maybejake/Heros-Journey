data modify storage hsj:temp loot.loot_table set value "hsj:golden_eye"

execute as @a[tag=hsj.golden_eye_loot] run function hsj:loot/main
tag @a[tag=hsj.golden_eye_loot] remove hsj.golden_eye_loot