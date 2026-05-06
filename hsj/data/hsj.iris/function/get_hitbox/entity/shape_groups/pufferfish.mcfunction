execute store result score $pufferfish_puffstate hsj.iris run data get entity @s PuffState
execute if score $pufferfish_puffstate hsj.iris matches 0 run scoreboard players set $entity_width hsj.iris 350000
execute if score $pufferfish_puffstate hsj.iris matches 1 run scoreboard players set $entity_width hsj.iris 490000
execute if score $pufferfish_puffstate hsj.iris matches 2 run scoreboard players set $entity_width hsj.iris 700000
scoreboard players operation $entity_height hsj.iris = $entity_width hsj.iris

