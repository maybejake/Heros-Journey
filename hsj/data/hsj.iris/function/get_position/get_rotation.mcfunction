#> hsj.iris:get_position/get_rotation
#
# Returns the context rotation as a vector
#
# @context A marker and a rotation
# @within hsj.iris:get_position/main

execute positioned 0.0 0.0 0.0 run teleport @s ^ ^ ^1000000
data modify storage hsj.iris:data Pos set from entity @s Pos
execute store result score $dx hsj.iris run data get storage hsj.iris:data Pos[0]
execute store result score $dy hsj.iris run data get storage hsj.iris:data Pos[1]
execute store result score $dz hsj.iris run data get storage hsj.iris:data Pos[2]
