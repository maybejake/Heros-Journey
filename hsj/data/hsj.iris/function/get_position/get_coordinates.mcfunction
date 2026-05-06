#> hsj.iris:get_position/get_coordinates
#
# Gets the coordinates of the executing entity
#
# @context A marker
# @within hsj.iris:get_position/main
# @within hsj.iris:get_hitbox/entity

tag @s add hsj.iris.coordinate_getter

# Get integer coordinates
data modify storage hsj.iris:data Pos set from entity @s Pos
execute store result score $[x] hsj.iris store result storage hsj.iris:args x int -1 run data get storage hsj.iris:data Pos[0]
execute store result score $[y] hsj.iris store result storage hsj.iris:args y int -1 run data get storage hsj.iris:data Pos[1]
execute store result score $[z] hsj.iris store result storage hsj.iris:args z int -1 run data get storage hsj.iris:data Pos[2]

# Get fractional coordinates
function hsj.iris:get_position/teleport with storage hsj.iris:args
data modify storage hsj.iris:data Pos set from entity @s Pos
execute store result score ${x} hsj.iris run data get storage hsj.iris:data Pos[0] 1000000
execute store result score ${y} hsj.iris run data get storage hsj.iris:data Pos[1] 1000000
execute store result score ${z} hsj.iris run data get storage hsj.iris:data Pos[2] 1000000

# Clean up
data remove storage hsj.iris:data Pos
