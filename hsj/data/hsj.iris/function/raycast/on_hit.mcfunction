#> hsj.iris:raycast/on_hit
#
# Writes all available information about the encountered block or entity
# See hsj.iris:get_target for full documentation
#
# @within hsj.iris:raycast/loop

# Remove the executing tag
tag @s remove hsj.iris.executing

# Write target type (one of BLOCK, ENTITY)
execute if score $block_hit hsj.iris matches 1 if score $entity_hit hsj.iris matches 0 run data modify storage hsj.iris:output TargetType set value "BLOCK"
execute if score $entity_hit hsj.iris matches 1 if score $block_hit hsj.iris matches 0 run data modify storage hsj.iris:output TargetType set value "ENTITY"
execute if score $block_hit hsj.iris matches 1 if score $entity_hit hsj.iris matches 1 if score $block_distance hsj.iris <= $entity_distance hsj.iris run data modify storage hsj.iris:output TargetType set value "BLOCK"
execute if score $block_hit hsj.iris matches 1 if score $entity_hit hsj.iris matches 1 if score $block_distance hsj.iris > $entity_distance hsj.iris run data modify storage hsj.iris:output TargetType set value "ENTITY"

# Write targeted block
execute if data storage hsj.iris:output {TargetType: "BLOCK"} run data modify storage hsj.iris:output TargetedBlock set value [0, 0, 0]
execute if data storage hsj.iris:output {TargetType: "BLOCK"} store result storage hsj.iris:output TargetedBlock[0] int 1 run scoreboard players get $[x] hsj.iris
execute if data storage hsj.iris:output {TargetType: "BLOCK"} store result storage hsj.iris:output TargetedBlock[1] int 1 run scoreboard players get $[y] hsj.iris
execute if data storage hsj.iris:output {TargetType: "BLOCK"} store result storage hsj.iris:output TargetedBlock[2] int 1 run scoreboard players get $[z] hsj.iris
execute if data storage hsj.iris:output {TargetType: "BLOCK"} align xyz run summon minecraft:marker ~0.5 ~0.5 ~0.5 {Tags: ["iris", "hsj.iris.targeted_block"]}

# Write targeted entity
execute if data storage hsj.iris:output {TargetType: "ENTITY"} run data modify storage hsj.iris:output TargetedEntity set from storage hsj.iris:data TargetedBox.entity_id
execute if data storage hsj.iris:output {TargetType: "ENTITY"} run data remove storage hsj.iris:data TargetedBox.entity_id
execute if data storage hsj.iris:output {TargetType: "ENTITY"} run data remove storage hsj.iris:data TargetedFace.entity_id
execute if data storage hsj.iris:output {TargetType: "ENTITY"} store result score $entity_id hsj.iris run data get storage hsj.iris:output TargetedEntity
execute if data storage hsj.iris:output {TargetType: "ENTITY"} as @e[tag=hsj.iris.possible_target] if score @s hsj.iris.id = $entity_id hsj.iris run tag @s add hsj.iris.targeted_entity
execute if data storage hsj.iris:output {TargetType: "ENTITY"} run tag @e remove hsj.iris.possible_target

# Write target position
data modify storage hsj.iris:output TargetPosition.tile set value [0, 0, 0]
execute store result storage hsj.iris:output TargetPosition.tile[0] int 1 run scoreboard players get $[x] hsj.iris
execute store result storage hsj.iris:output TargetPosition.tile[1] int 1 run scoreboard players get $[y] hsj.iris
execute store result storage hsj.iris:output TargetPosition.tile[2] int 1 run scoreboard players get $[z] hsj.iris
data modify storage hsj.iris:output TargetPosition.point set from storage hsj.iris:data TargetPoint
execute store result score ${x} hsj.iris run data get storage hsj.iris:output TargetPosition.point[0] 1000000
execute store result score ${y} hsj.iris run data get storage hsj.iris:output TargetPosition.point[1] 1000000
execute store result score ${z} hsj.iris run data get storage hsj.iris:output TargetPosition.point[2] 1000000

# Write targeted box
data modify storage hsj.iris:output TargetedBox set from storage hsj.iris:data TargetedBox

# Write targeted face
data modify storage hsj.iris:output TargetedFace set from storage hsj.iris:data TargetedFace
execute if data storage hsj.iris:output TargetedFace{Direction: "WEST_EAST"} if score $dx hsj.iris matches 0.. run data modify storage hsj.iris:output TargetedFace.Direction set value "WEST"
execute if data storage hsj.iris:output TargetedFace{Direction: "WEST_EAST"} if score $dx hsj.iris matches ..-1 run data modify storage hsj.iris:output TargetedFace.Direction set value "EAST"
execute if data storage hsj.iris:output TargetedFace{Direction: "UP_DOWN"} if score $dy hsj.iris matches 0.. run data modify storage hsj.iris:output TargetedFace.Direction set value "DOWN"
execute if data storage hsj.iris:output TargetedFace{Direction: "UP_DOWN"} if score $dy hsj.iris matches ..-1 run data modify storage hsj.iris:output TargetedFace.Direction set value "UP"
execute if data storage hsj.iris:output TargetedFace{Direction: "NORTH_SOUTH"} if score $dz hsj.iris matches 0.. run data modify storage hsj.iris:output TargetedFace.Direction set value "NORTH"
execute if data storage hsj.iris:output TargetedFace{Direction: "NORTH_SOUTH"} if score $dz hsj.iris matches ..-1 run data modify storage hsj.iris:output TargetedFace.Direction set value "SOUTH"

# Write total distance
execute if data storage hsj.iris:output {TargetType: "BLOCK"} run scoreboard players operation $total_distance hsj.iris += $block_distance hsj.iris
execute if data storage hsj.iris:output {TargetType: "ENTITY"} run scoreboard players operation $total_distance hsj.iris += $entity_distance hsj.iris
execute store result storage hsj.iris:output Distance double 0.000001 run scoreboard players get $total_distance hsj.iris

# Run callback
execute if data storage hsj.iris:settings Callback run data modify storage hsj.iris:args function set from storage hsj.iris:settings Callback
execute if data storage hsj.iris:settings Callback run function hsj.iris:raycast/macro_functions/callback with storage hsj.iris:args

return run scoreboard players get $total_distance hsj.iris
