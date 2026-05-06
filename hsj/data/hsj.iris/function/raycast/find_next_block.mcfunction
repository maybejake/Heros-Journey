#> hsj.iris:raycast/find_next_block
#
# Find the coordinates of the next tile that should be traversed by the ray
#
# @within hsj.iris:raycast/loop
# @writes
#   scores $[x] $[y] $[z] hsj.iris
#       The new position
#   scores $last_[x] $last_[y] $last_[z] hsj.iris
#       The previous position
# @output
#   Result: The distance to the next block
#   Success: 1

# Save previous coordinates
scoreboard players operation $last_[x] hsj.iris = $[x] hsj.iris
scoreboard players operation $last_[y] hsj.iris = $[y] hsj.iris
scoreboard players operation $last_[z] hsj.iris = $[z] hsj.iris

# See what distance the ray needs to travel to hit another tile with a different x coordinate
execute if score $dx hsj.iris matches 0.. run scoreboard players set $to_next_x hsj.iris 1000000000
execute if score $dx hsj.iris matches ..-1 run scoreboard players set $to_next_x hsj.iris 0
scoreboard players operation ${x}*1000 hsj.iris = ${x} hsj.iris
scoreboard players operation ${x}*1000 hsj.iris *= $1000 hsj.iris
scoreboard players operation $to_next_x hsj.iris -= ${x}*1000 hsj.iris
scoreboard players operation $to_next_x hsj.iris /= $dx hsj.iris

# See what distance the ray needs to travel to hit another tile with a different y coordinate
execute if score $dy hsj.iris matches 0.. run scoreboard players set $to_next_y hsj.iris 1000000000
execute if score $dy hsj.iris matches ..-1 run scoreboard players set $to_next_y hsj.iris 0
scoreboard players operation ${y}*1000 hsj.iris = ${y} hsj.iris
scoreboard players operation ${y}*1000 hsj.iris *= $1000 hsj.iris
scoreboard players operation $to_next_y hsj.iris -= ${y}*1000 hsj.iris
scoreboard players operation $to_next_y hsj.iris /= $dy hsj.iris

# See what distance the ray needs to travel to hit another tile with a different z coordinate
execute if score $dz hsj.iris matches 0.. run scoreboard players set $to_next_z hsj.iris 1000000000
execute if score $dz hsj.iris matches ..-1 run scoreboard players set $to_next_z hsj.iris 0
scoreboard players operation ${z}*1000 hsj.iris = ${z} hsj.iris
scoreboard players operation ${z}*1000 hsj.iris *= $1000 hsj.iris
scoreboard players operation $to_next_z hsj.iris -= ${z}*1000 hsj.iris
scoreboard players operation $to_next_z hsj.iris /= $dz hsj.iris

# Determine which distance is the shortest
execute if score $to_next_x hsj.iris <= $to_next_y hsj.iris if score $to_next_x hsj.iris <= $to_next_z hsj.iris run data merge storage hsj.iris:data {NextCoordinateChange: "x"}
execute if score $to_next_y hsj.iris <= $to_next_x hsj.iris if score $to_next_y hsj.iris <= $to_next_z hsj.iris run data merge storage hsj.iris:data {NextCoordinateChange: "y"}
execute if score $to_next_z hsj.iris <= $to_next_x hsj.iris if score $to_next_z hsj.iris <= $to_next_y hsj.iris run data merge storage hsj.iris:data {NextCoordinateChange: "z"}

# Calculate the new coordinates when the ray reaches the next tile
execute if data storage hsj.iris:data {NextCoordinateChange: "x"} run data modify storage hsj.iris:args {} merge value {a: "x", b: "y", c: "z"}
execute if data storage hsj.iris:data {NextCoordinateChange: "y"} run data modify storage hsj.iris:args {} merge value {a: "y", b: "z", c: "x"}
execute if data storage hsj.iris:data {NextCoordinateChange: "z"} run data modify storage hsj.iris:args {} merge value {a: "z", b: "x", c: "y"}
function hsj.iris:raycast/macro_functions/find_next_block_aux with storage hsj.iris:args

# Return the added distance
return run scoreboard players operation $to_next_block hsj.iris *= $1000 hsj.iris
