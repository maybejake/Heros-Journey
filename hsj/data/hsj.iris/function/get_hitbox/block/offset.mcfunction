#> hsj.iris:get_hitbox/block/offset
#
# Computes seeded block offset for e.g. flowers, assuming the shape comprises a single box
#
# @within hsj.iris:get_hitbox/block
# @writes
#	storage hsj.iris:data Shape: compound[]
#       A list of cuboids given by two corners in the format {min: [x, y, z], max: [x, y z]}

# Compute seed(x, y, z)
scoreboard players operation $a hsj.iris = $[x] hsj.iris
scoreboard players operation $a hsj.iris *= $3129871 hsj.iris
scoreboard players operation $b hsj.iris = $[z] hsj.iris
scoreboard players operation $b hsj.iris *= $116129781 hsj.iris
execute store result score $a^b hsj.iris run function hsj.iris:get_hitbox/block/xor

scoreboard players operation $(a^b)² hsj.iris = $a^b hsj.iris
scoreboard players operation $(a^b)² hsj.iris *= $a^b hsj.iris
scoreboard players operation $11*(a^b) hsj.iris = $a^b hsj.iris
scoreboard players operation $11*(a^b) hsj.iris *= $11 hsj.iris

scoreboard players operation $seed hsj.iris = $(a^b)² hsj.iris
scoreboard players operation $seed hsj.iris *= $42317861 hsj.iris
scoreboard players operation $seed hsj.iris += $11*(a^b) hsj.iris
scoreboard players operation $seed hsj.iris /= $65536 hsj.iris

# Compute offsets
scoreboard players operation $x_offset hsj.iris = $seed hsj.iris
scoreboard players operation $x_offset hsj.iris %= $16 hsj.iris
scoreboard players operation $x_offset hsj.iris *= $33333 hsj.iris

scoreboard players operation $z_offset hsj.iris = $seed hsj.iris
scoreboard players operation $z_offset hsj.iris /= $256 hsj.iris
scoreboard players operation $z_offset hsj.iris %= $16 hsj.iris
scoreboard players operation $z_offset hsj.iris *= $33333 hsj.iris

# Adjust/clamp for pointed dripstone blocks
execute if block ~ ~ ~ minecraft:pointed_dripstone run scoreboard players remove $x_offset hsj.iris 125000
execute if block ~ ~ ~ minecraft:pointed_dripstone run scoreboard players remove $z_offset hsj.iris 125000
execute if block ~ ~ ~ minecraft:pointed_dripstone if score $x_offset hsj.iris matches ..0 run scoreboard players set $x_offset hsj.iris 0
execute if block ~ ~ ~ minecraft:pointed_dripstone if score $x_offset hsj.iris matches 250000.. run scoreboard players set $x_offset hsj.iris 250000
execute if block ~ ~ ~ minecraft:pointed_dripstone if score $z_offset hsj.iris matches ..0 run scoreboard players set $z_offset hsj.iris 0
execute if block ~ ~ ~ minecraft:pointed_dripstone if score $z_offset hsj.iris matches 250000.. run scoreboard players set $z_offset hsj.iris 250000

# Apply offsets to the generated shape
execute store result score $min_x hsj.iris run data get storage hsj.iris:data Shape[0].min[0] 1000000
execute store result storage hsj.iris:data Shape[0].min[0] double 0.000001 run scoreboard players operation $min_x hsj.iris += $x_offset hsj.iris
execute store result score $min_z hsj.iris run data get storage hsj.iris:data Shape[0].min[2] 1000000
execute store result storage hsj.iris:data Shape[0].min[2] double 0.000001 run scoreboard players operation $min_z hsj.iris += $z_offset hsj.iris
execute store result score $max_x hsj.iris run data get storage hsj.iris:data Shape[0].max[0] 1000000
execute store result storage hsj.iris:data Shape[0].max[0] double 0.000001 run scoreboard players operation $max_x hsj.iris += $x_offset hsj.iris
execute store result score $max_z hsj.iris run data get storage hsj.iris:data Shape[0].max[2] 1000000
execute store result storage hsj.iris:data Shape[0].max[2] double 0.000001 run scoreboard players operation $max_z hsj.iris += $z_offset hsj.iris
