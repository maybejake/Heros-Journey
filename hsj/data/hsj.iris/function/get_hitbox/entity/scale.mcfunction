#> hsj.iris:get_hitbox/entity/scale
#
# Scales a living entity according to its scale attribute
#
# @within hsj.iris:get_hitbox/entity

execute store result score $attribute_scale hsj.iris run attribute @s minecraft:scale get 1000
execute if score $attribute_scale hsj.iris matches 0 run return fail
execute if score $attribute_scale hsj.iris matches 1000 run return 0

scoreboard players operation $entity_width hsj.iris /= $10 hsj.iris
scoreboard players operation $entity_width hsj.iris *= $attribute_scale hsj.iris
scoreboard players operation $entity_width hsj.iris /= $100 hsj.iris

scoreboard players operation $entity_height hsj.iris /= $10 hsj.iris
scoreboard players operation $entity_height hsj.iris *= $attribute_scale hsj.iris
scoreboard players operation $entity_height hsj.iris /= $100 hsj.iris
