#> hsj.iris:set_coordinates
#
# Teleports the executing entity at a given position from six scores.
# Meant to be executed as the ray marker after raycasting, scores are then set to the player's targeted position:
#    execute as @p at @s anchored eyes positioned ^ ^ ^ run function hsj.iris:get_target
#    execute as @e[type=minecraft:marker, tag=hsj.iris.ray] run function hsj.iris:set_coordinates
#
# @public
# @context any entity
# @input
#   score $[x] hsj.iris
#       The integer value of the new X position
#   score ${x} hsj.iris
#       The fractional value of the new X position, as a number between 0 and 1000000

execute unless entity @s run return fail

# Clamp to 0..999999
execute if score ${x} hsj.iris matches ..0 run scoreboard players set ${x} hsj.iris 0
execute if score ${y} hsj.iris matches ..0 run scoreboard players set ${y} hsj.iris 0
execute if score ${z} hsj.iris matches ..0 run scoreboard players set ${z} hsj.iris 0
execute if score ${x} hsj.iris matches 1000000.. run scoreboard players set ${x} hsj.iris 999999
execute if score ${y} hsj.iris matches 1000000.. run scoreboard players set ${y} hsj.iris 999999
execute if score ${z} hsj.iris matches 1000000.. run scoreboard players set ${z} hsj.iris 999999

# Get integer coordinates for the first teleport command (absolute coordinates)
execute store result storage hsj.iris:args x int 1 run scoreboard players get $[x] hsj.iris
execute store result storage hsj.iris:args y int 1 run scoreboard players get $[y] hsj.iris
execute store result storage hsj.iris:args z int 1 run scoreboard players get $[z] hsj.iris

# Get fractional coordinates for the second teleport command (relative coordinates)
execute store result storage hsj.iris:args value int 1 run scoreboard players get ${x} hsj.iris
function hsj.iris:set_coordinates/pad_with_zeros with storage hsj.iris:args
data modify storage hsj.iris:args dx set string storage hsj.iris:data String -6

execute store result storage hsj.iris:args value int 1 run scoreboard players get ${y} hsj.iris
function hsj.iris:set_coordinates/pad_with_zeros with storage hsj.iris:args
data modify storage hsj.iris:args dy set string storage hsj.iris:data String -6

execute store result storage hsj.iris:args value int 1 run scoreboard players get ${z} hsj.iris
function hsj.iris:set_coordinates/pad_with_zeros with storage hsj.iris:args
data modify storage hsj.iris:args dz set string storage hsj.iris:data String -6

# Generate the two teleport commands
function hsj.iris:set_coordinates/teleport with storage hsj.iris:args
