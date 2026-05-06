advancement revoke @s only hsj:archaeology

execute store result score $chance hsj.dummy run random value 1..100
execute if score $chance hsj.dummy matches 6.. run return fail

data remove storage hsj.iris:settings Callback
data merge storage hsj.iris:settings {TargetEntities:false,Whitelist:"#hsj:archaeology",MaxRecursionDepth:16,Blacklist:"#hsj.iris:shape_groups/air"}

execute store result score $max_distance hsj.dummy run attribute @s minecraft:block_interaction_range get 1000000
execute at @s anchored eyes positioned ^ ^ ^ store result score $distance hsj.dummy run function hsj.iris:get_target
execute if score $distance hsj.dummy <= $max_distance hsj.dummy at @n[type=minecraft:marker, tag=hsj.iris.targeted_block] run function hsj:eyes/archaic/at_block