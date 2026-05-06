scoreboard players set $entity_width hsj.iris 900000
scoreboard players set $entity_height hsj.iris 500000

execute store result score $phantom_size hsj.iris run data get entity @s Size
execute if score $phantom_size hsj.iris matches 0 run return 0
scoreboard players set $phantom_extra_width hsj.iris 135000
scoreboard players operation $phantom_extra_width hsj.iris *= $phantom_size hsj.iris
scoreboard players operation $entity_width hsj.iris += $phantom_extra_width hsj.iris
scoreboard players set $phantom_extra_height hsj.iris 75000
scoreboard players operation $phantom_extra_height hsj.iris *= $phantom_size hsj.iris
scoreboard players operation $entity_height hsj.iris += $phantom_extra_height hsj.iris
