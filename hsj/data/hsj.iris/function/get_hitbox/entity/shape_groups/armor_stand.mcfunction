data modify storage hsj.iris:data EntityTag set from entity @s
execute if data storage hsj.iris:data EntityTag{Small: 1b} run scoreboard players set $entity_width hsj.iris 250000
execute if data storage hsj.iris:data EntityTag{Small: 1b} run scoreboard players set $entity_height hsj.iris 987500
execute unless data storage hsj.iris:data EntityTag{Small: 1b} run scoreboard players set $entity_width hsj.iris 500000
execute unless data storage hsj.iris:data EntityTag{Small: 1b} run scoreboard players set $entity_height hsj.iris 1975000
execute if data storage hsj.iris:data EntityTag{Marker: 1b} store result score $entity_width hsj.iris run scoreboard players set $entity_height hsj.iris 0