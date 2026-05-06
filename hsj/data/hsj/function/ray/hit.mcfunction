scoreboard players set @s hsj_raycast_hit 1

execute if entity @s[tag=hsj_real_eye_ray] align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @n[type=minecraft:item_display,tag=hsj_display,distance=..0.5] run return run function hsj:eyes/real/replace

execute unless entity @n[tag=hsj_display,distance=..10] align xyz positioned ~0.5 ~0.5 ~0.5 run function hsj:remove/start

execute if entity @s[tag=hsj_eldritch_eye_ray] run return run function hsj:eyes/eldritch/summon
execute if entity @s[tag=hsj_amber_eye_ray] run return run function hsj:eyes/amber/summon
execute if entity @s[tag=hsj_aquatic_eye_ray] run return run function hsj:eyes/aquatic/summon
execute if entity @s[tag=hsj_ominous_eye_ray] run return run function hsj:eyes/ominous/summon
execute if entity @s[tag=hsj_archaic_eye_ray] run return run function hsj:eyes/archaic/summon
execute if entity @s[tag=hsj_beastmasters_eye_ray] run return run function hsj:eyes/beastmasters/summon
execute if entity @s[tag=hsj_opulent_eye_ray] run return run function hsj:eyes/opulent/summon
execute if entity @s[tag=hsj_golden_eye_ray] run return run function hsj:eyes/golden/summon
execute if entity @s[tag=hsj_entombed_eye_ray] run return run function hsj:eyes/entombed/summon
execute if entity @s[tag=hsj_curious_eye_ray] run return run function hsj:eyes/curious/summon
execute if entity @s[tag=hsj_bound_eye_ray] run return run function hsj:eyes/bound/summon
execute if entity @s[tag=hsj_withered_eye_ray] run return run function hsj:eyes/withered/summon
execute if entity @s[tag=hsj_elder_eye_ray] run return run function hsj:eyes/elder/summon
execute if entity @s[tag=hsj_spellbound_eye_ray] run return run function hsj:eyes/spellbound/summon
execute if entity @s[tag=hsj_queens_eye_ray] run return run function hsj:eyes/queens/summon
execute if entity @s[tag=hsj_forged_eye_ray] run return run function hsj:eyes/forged/summon