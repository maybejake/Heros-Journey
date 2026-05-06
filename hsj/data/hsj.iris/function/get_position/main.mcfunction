#> hsj.iris:get_position/main
#
# Gets the current coordinates and rotation.
# Coordinates are returned as a triplet of integer coordinates and a triplet of fractional coordinates.
# Rotation is returned as a steering vector of magnitude 1000000.
#
# @context a marker
# @within hsj.iris:get_target
# @within hsj.iris:get_hitbox/entity
# @writes
#    score $[x] hsj.iris
#        The integer x coordinate of the current position
#    score $[y] hsj.iris
#        The integer y coordinate of the current position
#    score $[z] hsj.iris
#        The integer z coordinate of the current position
#    score ${x} hsj.iris
#        The fractional x coordinate of the current position, represented by an integer between 0 and 1000000
#    score ${y} hsj.iris
#        The fractional y coordinate of the current position, represented by an integer between 0 and 1000000
#    score ${z} hsj.iris
#        The fractional z coordinate of the current position, represented by an integer between 0 and 1000000
#    score $dx hsj.iris
#        The x coordinate of the steering vector of the ray, represented by an integer between -1000000 and 1000000
#    score $dy hsj.iris
#        The y coordinate of the steering vector of the ray, represented by an integer between -1000000 and 1000000
#    score #dz hsj.iris
#        The z coordinate of the steering vector of the ray, represented by an integer between -1000000 and 1000000

function hsj.iris:get_position/get_coordinates
function hsj.iris:get_position/get_rotation
kill @s
