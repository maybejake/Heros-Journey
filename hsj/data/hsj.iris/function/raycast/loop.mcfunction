#> hsj.iris:raycast/loop
#
# Loops forward until an obstacle is hit or until the maximum recursion depth has been reached
#
# @context a marker and the current ray position
# @within hsj.iris:get_target
# @within hsj.iris:raycast/loop

# Test for collisions
execute store success score $block_hit hsj.iris store result score $block_distance hsj.iris run function hsj.iris:raycast/test_for_block
execute store success score $entity_hit hsj.iris store result score $entity_distance hsj.iris run function hsj.iris:raycast/test_for_entity
execute if score $block_hit hsj.iris matches 1 run return run function hsj.iris:raycast/on_hit
execute if score $entity_hit hsj.iris matches 1 run return run function hsj.iris:raycast/on_hit

# Proceed to the next block
execute store result score $to_next_block hsj.iris run function hsj.iris:raycast/find_next_block
scoreboard players operation $total_distance hsj.iris += $to_next_block hsj.iris

# Fail if the maximum recursion depth is reached and nothing was found
scoreboard players add $depth hsj.iris 1
execute if score $depth hsj.iris = $max_depth hsj.iris run tag @s remove hsj.iris.executing
execute if score $depth hsj.iris = $max_depth hsj.iris run return fail

# Otherwise, loop this function at the next block
execute if data storage hsj.iris:data {NextCoordinateChange: "x"} if score $dx hsj.iris matches 0.. positioned ~1 ~ ~ run return run function hsj.iris:raycast/loop
execute if data storage hsj.iris:data {NextCoordinateChange: "x"} if score $dx hsj.iris matches ..-1 positioned ~-1 ~ ~ run return run function hsj.iris:raycast/loop
execute if data storage hsj.iris:data {NextCoordinateChange: "y"} if score $dy hsj.iris matches 0.. positioned ~ ~1 ~ run return run function hsj.iris:raycast/loop
execute if data storage hsj.iris:data {NextCoordinateChange: "y"} if score $dy hsj.iris matches ..-1 positioned ~ ~-1 ~ run return run function hsj.iris:raycast/loop
execute if data storage hsj.iris:data {NextCoordinateChange: "z"} if score $dz hsj.iris matches 0.. positioned ~ ~ ~1 run return run function hsj.iris:raycast/loop
execute if data storage hsj.iris:data {NextCoordinateChange: "z"} if score $dz hsj.iris matches ..-1 positioned ~ ~ ~-1 run return run function hsj.iris:raycast/loop
execute if score $depth hsj.iris < $max_depth hsj.iris at @s run return run function hsj.iris:raycast/loop
