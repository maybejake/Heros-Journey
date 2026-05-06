scoreboard players set $entity_width hsj.iris 510000
scoreboard players set $entity_height hsj.iris 510000
execute store result score $slime_size hsj.iris run data get entity @s Size
scoreboard players add $slime_size hsj.iris 1
scoreboard players operation $entity_width hsj.iris *= $slime_size hsj.iris
scoreboard players operation $entity_height hsj.iris *= $slime_size hsj.iris
