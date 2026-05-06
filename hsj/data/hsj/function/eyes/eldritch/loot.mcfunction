data modify storage hsj:temp loot.loot_table set value "hsj:eldritch_eye"

execute as @a[tag=hsj.eldritch_eye_loot] run function hsj:loot/main
tag @a[tag=hsj.eldritch_eye_loot] remove hsj.eldritch_eye_loot