#> hsj.iris:get_hitbox/entity
#
# Returns the shape of the executing entity
#
# @within hsj.iris:raycast/test_for_entity
# @writes
#	storage hsj.iris:data Shape: compound[]
#       A list of cuboids given by two corners in the format {min: [x, y, z], max: [x, y z]}

# Get entity dimensions
scoreboard players set $entity_found hsj.iris 0
execute if score $entity_found hsj.iris matches 0 if entity @s[type=#hsj.iris:tree/0] run function hsj.iris:get_hitbox/entity/tree/0
execute if score $entity_found hsj.iris matches 0 if entity @s[type=#hsj.iris:tree/1] run function hsj.iris:get_hitbox/entity/tree/1
execute if score $entity_found hsj.iris matches 0 if entity @s[type=#hsj.iris:tree/2] run function hsj.iris:get_hitbox/entity/tree/2
execute if score $entity_found hsj.iris matches 0 if entity @s[type=#hsj.iris:tree/3] run function hsj.iris:get_hitbox/entity/tree/3
execute if score $entity_found hsj.iris matches 0 if entity @s[type=#hsj.iris:tree/4] run function hsj.iris:get_hitbox/entity/tree/4

# Scale
function hsj.iris:get_hitbox/entity/scale
execute if predicate hsj.iris:baby run scoreboard players operation $entity_width hsj.iris /= $2 hsj.iris
execute if predicate hsj.iris:baby run scoreboard players operation $entity_height hsj.iris /= $2 hsj.iris

# Get the entity's coordinates
scoreboard players operation $entity_[x] hsj.iris = $[x] hsj.iris
scoreboard players operation $entity_[y] hsj.iris = $[y] hsj.iris
scoreboard players operation $entity_[z] hsj.iris = $[z] hsj.iris
scoreboard players operation $entity_{x} hsj.iris = ${x} hsj.iris
scoreboard players operation $entity_{y} hsj.iris = ${y} hsj.iris
scoreboard players operation $entity_{z} hsj.iris = ${z} hsj.iris
execute at @s summon minecraft:marker run function hsj.iris:get_position/get_coordinates
kill @e[type=minecraft:marker, tag=hsj.iris.coordinate_getter]
scoreboard players operation $entity_[x] hsj.iris >< $[x] hsj.iris
scoreboard players operation $entity_[y] hsj.iris >< $[y] hsj.iris
scoreboard players operation $entity_[z] hsj.iris >< $[z] hsj.iris
scoreboard players operation $entity_{x} hsj.iris >< ${x} hsj.iris
scoreboard players operation $entity_{y} hsj.iris >< ${y} hsj.iris
scoreboard players operation $entity_{z} hsj.iris >< ${z} hsj.iris

# Save how many blocks away the entity is from the block origin
scoreboard players operation $entity_dx hsj.iris = $entity_[x] hsj.iris
scoreboard players operation $entity_dx hsj.iris -= $[x] hsj.iris
scoreboard players operation $entity_dx hsj.iris *= $1000000 hsj.iris
scoreboard players operation $entity_dx hsj.iris += $entity_{x} hsj.iris
scoreboard players operation $entity_dy hsj.iris = $entity_[y] hsj.iris
scoreboard players operation $entity_dy hsj.iris -= $[y] hsj.iris
scoreboard players operation $entity_dy hsj.iris *= $1000000 hsj.iris
scoreboard players operation $entity_dy hsj.iris += $entity_{y} hsj.iris
scoreboard players operation $entity_dz hsj.iris = $entity_[z] hsj.iris
scoreboard players operation $entity_dz hsj.iris -= $[z] hsj.iris
scoreboard players operation $entity_dz hsj.iris *= $1000000 hsj.iris
scoreboard players operation $entity_dz hsj.iris += $entity_{z} hsj.iris

# Get the coordinates of the bounding box
scoreboard players operation $entity_half_width hsj.iris = $entity_width hsj.iris
scoreboard players operation $entity_half_width hsj.iris /= $2 hsj.iris
scoreboard players operation $entity_x0 hsj.iris = $entity_dx hsj.iris
scoreboard players operation $entity_x0 hsj.iris -= $entity_half_width hsj.iris
execute if score $entity_x0 hsj.iris matches ..0 run scoreboard players set $entity_x0 hsj.iris 0
scoreboard players operation $entity_y0 hsj.iris = $entity_dy hsj.iris
execute if score $entity_y0 hsj.iris matches ..0 run scoreboard players set $entity_y0 hsj.iris 0
scoreboard players operation $entity_z0 hsj.iris = $entity_dz hsj.iris
scoreboard players operation $entity_z0 hsj.iris -= $entity_half_width hsj.iris
execute if score $entity_z0 hsj.iris matches ..0 run scoreboard players set $entity_z0 hsj.iris 0
scoreboard players operation $entity_x1 hsj.iris = $entity_dx hsj.iris
scoreboard players operation $entity_x1 hsj.iris += $entity_half_width hsj.iris
execute if score $entity_x1 hsj.iris matches 1000000.. run scoreboard players set $entity_x1 hsj.iris 1000000
scoreboard players operation $entity_y1 hsj.iris = $entity_dy hsj.iris
scoreboard players operation $entity_y1 hsj.iris += $entity_height hsj.iris
execute if score $entity_y1 hsj.iris matches 1000000.. run scoreboard players set $entity_y1 hsj.iris 1000000
scoreboard players operation $entity_z1 hsj.iris = $entity_dz hsj.iris
scoreboard players operation $entity_z1 hsj.iris += $entity_half_width hsj.iris
execute if score $entity_z1 hsj.iris matches 1000000.. run scoreboard players set $entity_z1 hsj.iris 1000000

# Store these coordinates to storage
data modify storage hsj.iris:data Shape append value {type: "ENTITY", min: [0.0, 0.0, 0.0], max: [0.0, 0.0, 0.0]}
execute store result storage hsj.iris:data Shape[-1].min[0] double 0.000001 run scoreboard players get $entity_x0 hsj.iris
execute store result storage hsj.iris:data Shape[-1].min[1] double 0.000001 run scoreboard players get $entity_y0 hsj.iris
execute store result storage hsj.iris:data Shape[-1].min[2] double 0.000001 run scoreboard players get $entity_z0 hsj.iris
execute store result storage hsj.iris:data Shape[-1].max[0] double 0.000001 run scoreboard players get $entity_x1 hsj.iris
execute store result storage hsj.iris:data Shape[-1].max[1] double 0.000001 run scoreboard players get $entity_y1 hsj.iris
execute store result storage hsj.iris:data Shape[-1].max[2] double 0.000001 run scoreboard players get $entity_z1 hsj.iris

# Special case for item frames and paintings which are annoying
#execute if score $entity_found hsj.iris matches 0 store success score $entity_found hsj.iris store success score $entity.is_item_frame hsj.iris if entity @s[type=#hsj.iris:item_frames]
#execute if score $entity.is_item_frame hsj.iris matches 1 run function hsj.iris:get_hitbox/entity/item_frame

# Give this entity a tag and an ID, and store the ID in the hitbox
tag @s add hsj.iris.possible_target
scoreboard players operation @s hsj.iris.id = $max_entity_id hsj.iris.id
execute store result storage hsj.iris:data Shape[-1].entity_id int 1 run scoreboard players get @s hsj.iris.id
scoreboard players add $max_entity_id hsj.iris.id 1
