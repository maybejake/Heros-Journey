scoreboard players set @s hsj.use_cooldown 5

data remove storage hsj:temp eye
execute if items entity @s weapon.offhand *[minecraft:custom_data~{"hsj":{"eye":{}}}] run data modify storage hsj:temp eye.hand set value "offhand"
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{"hsj":{"eye":{}}}] run data modify storage hsj:temp eye.hand set value "mainhand"

data remove storage hsj.iris:settings Callback
data merge storage hsj.iris:settings {TargetEntities:false,Whitelist:"minecraft:end_portal_frame",MaxRecursionDepth:16,Blacklist:"#hsj.iris:shape_groups/air"}

execute store result score $max_distance hsj.dummy run attribute @s minecraft:block_interaction_range get 1000000
execute at @s anchored eyes positioned ^ ^ ^ store result score $distance hsj.dummy run function hsj.iris:get_target
execute if score $distance hsj.dummy <= $max_distance hsj.dummy at @n[type=minecraft:marker, tag=hsj.iris.targeted_block] run function hsj:use/at_block