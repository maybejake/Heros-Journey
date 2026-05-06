#> hsj.iris:get_hitbox/block
#
# Returns the shape of the current block
#
# @within hsj.iris:raycast/test_for_block
# @output
#	storage hsj.iris:data Shape: compound[]
#       A list of cuboids given by two corners in the format {min: [x, y, z], max: [x, y z]}

execute if block ~ ~ ~ #hsj.iris:tree/0 run return run function hsj.iris:get_hitbox/block/tree/0
execute if block ~ ~ ~ #hsj.iris:tree/1 run return run function hsj.iris:get_hitbox/block/tree/1
execute if block ~ ~ ~ #hsj.iris:tree/2 run return run function hsj.iris:get_hitbox/block/tree/2
execute if block ~ ~ ~ #hsj.iris:tree/3 run return run function hsj.iris:get_hitbox/block/tree/3
execute if block ~ ~ ~ #hsj.iris:tree/4 run return run function hsj.iris:get_hitbox/block/tree/4
execute if block ~ ~ ~ #hsj.iris:has_block_offset run return run function hsj.iris:get_hitbox/block/offset

#block not found, assume solid
function hsj.iris:get_hitbox/block/shape_groups/acacia_leaves