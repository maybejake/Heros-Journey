#> hsj.iris:raycast/test_for_entity
#
# @within hsj.iris:raycast/loop
# @output
#   Result: 0
#   Success: 1 if an entity was hit, 0 otherwise

execute unless data storage hsj.iris:settings {TargetEntities: true} run return fail
execute align xyz unless entity @e[type=!#hsj.iris:ignore, tag=!hsj.iris.ignore, dx=0, dy=0, dz=0, tag=!hsj.iris.executing] run return fail
execute align xyz as @e[type=!#hsj.iris:ignore, tag=!hsj.iris.ignore, dx=0, dy=0, dz=0, tag=!hsj.iris.executing] run function hsj.iris:get_hitbox/entity
return run function hsj.iris:raycast/check_intersection/loop
