#> hsj.iris:raycast/check_intersection/loop
#
# Tests for ray-box intersections with all axis-aligned bounding boxes of a hitbox
#
# @within hsj.iris:raycast/test_for_block
# @within hsj.iris:raycast/test_for_entity
# @within hsj.iris:raycast/check_intersection/loop
# @reads
#   storage hsj.iris:data Shape
#       A list of axis-aligned bounding boxes of the form {min: [x, y, z], max: [x, y, z]}
# @output
#   Success: 1 if a box is hit, 0 otherwise
#   Result: the distance to the first box that is hit

# Test for intersection with a single bounding box
data modify storage hsj.iris:data Box set from storage hsj.iris:data Shape[-1]
data remove storage hsj.iris:data Shape[-1]
execute store success score $is_hit hsj.iris store result score $distance hsj.iris run function hsj.iris:raycast/check_intersection/ray_box

# If this box is indeed hit before any other this far, remember the targeted box and the targeted face
execute if score $is_hit hsj.iris matches 1 if score $distance hsj.iris >= $min_distance hsj.iris run scoreboard players set $is_hit hsj.iris 0
execute if score $is_hit hsj.iris matches 1 run data modify storage hsj.iris:data TargetedBox set from storage hsj.iris:data Box
execute if score $is_hit hsj.iris matches 1 if score $hits_x_face hsj.iris matches 1 if score $to_aabb hsj.iris = $to_x_face hsj.iris run data modify storage hsj.iris:data TargetedFace set from storage hsj.iris:data Faces[0]
execute if score $is_hit hsj.iris matches 1 if score $hits_y_face hsj.iris matches 1 if score $to_aabb hsj.iris = $to_y_face hsj.iris run data modify storage hsj.iris:data TargetedFace set from storage hsj.iris:data Faces[1]
execute if score $is_hit hsj.iris matches 1 if score $hits_z_face hsj.iris matches 1 if score $to_aabb hsj.iris = $to_z_face hsj.iris run data modify storage hsj.iris:data TargetedFace set from storage hsj.iris:data Faces[2]
execute if score $is_hit hsj.iris matches 1 run scoreboard players operation $min_distance hsj.iris = $distance hsj.iris

# Loop this function until all boxes have been analyzed
execute if data storage hsj.iris:data Shape[-1] run return run function hsj.iris:raycast/check_intersection/loop
execute if score $min_distance hsj.iris matches 2147483647 run return fail
scoreboard players operation $min_distance hsj.iris *= $1000 hsj.iris
return run scoreboard players get $min_distance hsj.iris
