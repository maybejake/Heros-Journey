#> hsj.iris:raycast/check_intersection/ray_plane
#
# Tests for ray-plane intersections with a face
#
# @within hsj.iris:raycast/check_intersection/ray_box
# @reads
#   storage hsj.iris:data Face: compound
#       Direction: string
#           The axis that is perpendicular to this face
#           One of WEST_EAST, UP_DOWN, NORTH_SOUTH
#       min: float[]
#       max: float[]
# @output
#   Success: 1 if the face is hit, 0 otherwise
#   Result: the distance, in mm, before the face is hit

# Save face coordinates
execute store result score $x0 hsj.iris run data get storage hsj.iris:data Face.min[0] 1000000
execute store result score $y0 hsj.iris run data get storage hsj.iris:data Face.min[1] 1000000
execute store result score $z0 hsj.iris run data get storage hsj.iris:data Face.min[2] 1000000
execute store result score $x1 hsj.iris run data get storage hsj.iris:data Face.max[0] 1000000
execute store result score $y1 hsj.iris run data get storage hsj.iris:data Face.max[1] 1000000
execute store result score $z1 hsj.iris run data get storage hsj.iris:data Face.max[2] 1000000

# Get distance (in mm) to the plane, i.e. how long the ray should extend before it hits the plane
# This value should be at most sqrt(3)*1000; if it's more than 2000, we fail (otherwise we risk overflow errors)
execute if data storage hsj.iris:data {Face: {Direction: "WEST_EAST"}} run scoreboard players operation $distance hsj.iris = $x0 hsj.iris
execute if data storage hsj.iris:data {Face: {Direction: "WEST_EAST"}} run scoreboard players operation $distance hsj.iris -= ${x} hsj.iris
execute if data storage hsj.iris:data {Face: {Direction: "UP_DOWN"}} run scoreboard players operation $distance hsj.iris = $y0 hsj.iris
execute if data storage hsj.iris:data {Face: {Direction: "UP_DOWN"}} run scoreboard players operation $distance hsj.iris -= ${y} hsj.iris
execute if data storage hsj.iris:data {Face: {Direction: "NORTH_SOUTH"}} run scoreboard players operation $distance hsj.iris = $z0 hsj.iris
execute if data storage hsj.iris:data {Face: {Direction: "NORTH_SOUTH"}} run scoreboard players operation $distance hsj.iris -= ${z} hsj.iris
scoreboard players operation $distance hsj.iris *= $1000 hsj.iris
execute if data storage hsj.iris:data {Face: {Direction: "WEST_EAST"}} run scoreboard players operation $distance hsj.iris /= $dx hsj.iris
execute if data storage hsj.iris:data {Face: {Direction: "UP_DOWN"}} run scoreboard players operation $distance hsj.iris /= $dy hsj.iris
execute if data storage hsj.iris:data {Face: {Direction: "NORTH_SOUTH"}} run scoreboard players operation $distance hsj.iris /= $dz hsj.iris
execute if score $distance hsj.iris matches ..-1 run return fail
execute if score $distance hsj.iris matches 2000.. run return fail

# Get x position of the ray/plane intersection
scoreboard players operation $x_intersection hsj.iris = $distance hsj.iris
scoreboard players operation $x_intersection hsj.iris *= $dx hsj.iris
scoreboard players operation $x_intersection hsj.iris /= $1000 hsj.iris
scoreboard players operation $x_intersection hsj.iris += ${x} hsj.iris
execute if data storage hsj.iris:data {Face: {Direction: "WEST_EAST"}} run scoreboard players operation $x_intersection hsj.iris = $x0 hsj.iris

# Get y position of the ray/plane intersection
scoreboard players operation $y_intersection hsj.iris = $distance hsj.iris
scoreboard players operation $y_intersection hsj.iris *= $dy hsj.iris
scoreboard players operation $y_intersection hsj.iris /= $1000 hsj.iris
scoreboard players operation $y_intersection hsj.iris += ${y} hsj.iris
execute if data storage hsj.iris:data {Face: {Direction: "UP_DOWN"}} run scoreboard players operation $y_intersection hsj.iris = $y0 hsj.iris

# Get z position of the ray/plane intersection
scoreboard players operation $z_intersection hsj.iris = $distance hsj.iris
scoreboard players operation $z_intersection hsj.iris *= $dz hsj.iris
scoreboard players operation $z_intersection hsj.iris /= $1000 hsj.iris
scoreboard players operation $z_intersection hsj.iris += ${z} hsj.iris
execute if data storage hsj.iris:data {Face: {Direction: "NORTH_SOUTH"}} run scoreboard players operation $z_intersection hsj.iris = $z0 hsj.iris

# Save the position of the intersection
data modify storage hsj.iris:data Face.Collision set value [0.0d, 0.0d, 0.0d]
execute store result storage hsj.iris:data Face.Collision[0] double 0.000001 run scoreboard players get $x_intersection hsj.iris
execute store result storage hsj.iris:data Face.Collision[1] double 0.000001 run scoreboard players get $y_intersection hsj.iris
execute store result storage hsj.iris:data Face.Collision[2] double 0.000001 run scoreboard players get $z_intersection hsj.iris

# See if that intersection falls within the face
execute if score $x_intersection hsj.iris >= $x0 hsj.iris if score $x_intersection hsj.iris <= $x1 hsj.iris \
        if score $y_intersection hsj.iris >= $y0 hsj.iris if score $y_intersection hsj.iris <= $y1 hsj.iris \
        if score $z_intersection hsj.iris >= $z0 hsj.iris if score $z_intersection hsj.iris <= $z1 hsj.iris \
        run return run scoreboard players get $distance hsj.iris

return fail
