#> hsj.iris:get_hitbox/block/xor
#
# Compute bitwise XOR (^) on two scores
#
# @within hsj.iris:get_hitbox/block/offset
# @reads
#   score $a hsj.iris
#       The first operand
#   score $b hsj.iris
#       The second operand
# @output
#   Return: The result of the XOR operation on both operands
#   Success: 1

scoreboard players operation $a^b hsj.iris = $a hsj.iris
scoreboard players operation $a^b hsj.iris += $b hsj.iris

# Compute a&b
scoreboard players set $a&b hsj.iris 0
execute if score $a hsj.iris matches ..-1 if score $b hsj.iris matches ..-1 run scoreboard players set $a&b hsj.iris -2147483648
scoreboard players operation $a hsj.iris += $a hsj.iris
scoreboard players operation $b hsj.iris += $b hsj.iris
execute if score $a hsj.iris matches ..-1 if score $b hsj.iris matches ..-1 run scoreboard players add $a&b hsj.iris 1073741824
scoreboard players operation $a hsj.iris += $a hsj.iris
scoreboard players operation $b hsj.iris += $b hsj.iris
execute if score $a hsj.iris matches ..-1 if score $b hsj.iris matches ..-1 run scoreboard players add $a&b hsj.iris 536870912
scoreboard players operation $a hsj.iris += $a hsj.iris
scoreboard players operation $b hsj.iris += $b hsj.iris
execute if score $a hsj.iris matches ..-1 if score $b hsj.iris matches ..-1 run scoreboard players add $a&b hsj.iris 268435456
scoreboard players operation $a hsj.iris += $a hsj.iris
scoreboard players operation $b hsj.iris += $b hsj.iris
execute if score $a hsj.iris matches ..-1 if score $b hsj.iris matches ..-1 run scoreboard players add $a&b hsj.iris 134217728
scoreboard players operation $a hsj.iris += $a hsj.iris
scoreboard players operation $b hsj.iris += $b hsj.iris
execute if score $a hsj.iris matches ..-1 if score $b hsj.iris matches ..-1 run scoreboard players add $a&b hsj.iris 67108864
scoreboard players operation $a hsj.iris += $a hsj.iris
scoreboard players operation $b hsj.iris += $b hsj.iris
execute if score $a hsj.iris matches ..-1 if score $b hsj.iris matches ..-1 run scoreboard players add $a&b hsj.iris 33554432
scoreboard players operation $a hsj.iris += $a hsj.iris
scoreboard players operation $b hsj.iris += $b hsj.iris
execute if score $a hsj.iris matches ..-1 if score $b hsj.iris matches ..-1 run scoreboard players add $a&b hsj.iris 16777216
scoreboard players operation $a hsj.iris += $a hsj.iris
scoreboard players operation $b hsj.iris += $b hsj.iris
execute if score $a hsj.iris matches ..-1 if score $b hsj.iris matches ..-1 run scoreboard players add $a&b hsj.iris 8388608
scoreboard players operation $a hsj.iris += $a hsj.iris
scoreboard players operation $b hsj.iris += $b hsj.iris
execute if score $a hsj.iris matches ..-1 if score $b hsj.iris matches ..-1 run scoreboard players add $a&b hsj.iris 4194304
scoreboard players operation $a hsj.iris += $a hsj.iris
scoreboard players operation $b hsj.iris += $b hsj.iris
execute if score $a hsj.iris matches ..-1 if score $b hsj.iris matches ..-1 run scoreboard players add $a&b hsj.iris 2097152
scoreboard players operation $a hsj.iris += $a hsj.iris
scoreboard players operation $b hsj.iris += $b hsj.iris
execute if score $a hsj.iris matches ..-1 if score $b hsj.iris matches ..-1 run scoreboard players add $a&b hsj.iris 1048576
scoreboard players operation $a hsj.iris += $a hsj.iris
scoreboard players operation $b hsj.iris += $b hsj.iris
execute if score $a hsj.iris matches ..-1 if score $b hsj.iris matches ..-1 run scoreboard players add $a&b hsj.iris 524288
scoreboard players operation $a hsj.iris += $a hsj.iris
scoreboard players operation $b hsj.iris += $b hsj.iris
execute if score $a hsj.iris matches ..-1 if score $b hsj.iris matches ..-1 run scoreboard players add $a&b hsj.iris 262144
scoreboard players operation $a hsj.iris += $a hsj.iris
scoreboard players operation $b hsj.iris += $b hsj.iris
execute if score $a hsj.iris matches ..-1 if score $b hsj.iris matches ..-1 run scoreboard players add $a&b hsj.iris 131072
scoreboard players operation $a hsj.iris += $a hsj.iris
scoreboard players operation $b hsj.iris += $b hsj.iris
execute if score $a hsj.iris matches ..-1 if score $b hsj.iris matches ..-1 run scoreboard players add $a&b hsj.iris 65536
scoreboard players operation $a hsj.iris += $a hsj.iris
scoreboard players operation $b hsj.iris += $b hsj.iris
execute if score $a hsj.iris matches ..-1 if score $b hsj.iris matches ..-1 run scoreboard players add $a&b hsj.iris 32768
scoreboard players operation $a hsj.iris += $a hsj.iris
scoreboard players operation $b hsj.iris += $b hsj.iris
execute if score $a hsj.iris matches ..-1 if score $b hsj.iris matches ..-1 run scoreboard players add $a&b hsj.iris 16384
scoreboard players operation $a hsj.iris += $a hsj.iris
scoreboard players operation $b hsj.iris += $b hsj.iris
execute if score $a hsj.iris matches ..-1 if score $b hsj.iris matches ..-1 run scoreboard players add $a&b hsj.iris 8192
scoreboard players operation $a hsj.iris += $a hsj.iris
scoreboard players operation $b hsj.iris += $b hsj.iris
execute if score $a hsj.iris matches ..-1 if score $b hsj.iris matches ..-1 run scoreboard players add $a&b hsj.iris 4096
scoreboard players operation $a hsj.iris += $a hsj.iris
scoreboard players operation $b hsj.iris += $b hsj.iris
execute if score $a hsj.iris matches ..-1 if score $b hsj.iris matches ..-1 run scoreboard players add $a&b hsj.iris 2048
scoreboard players operation $a hsj.iris += $a hsj.iris
scoreboard players operation $b hsj.iris += $b hsj.iris
execute if score $a hsj.iris matches ..-1 if score $b hsj.iris matches ..-1 run scoreboard players add $a&b hsj.iris 1024
scoreboard players operation $a hsj.iris += $a hsj.iris
scoreboard players operation $b hsj.iris += $b hsj.iris
execute if score $a hsj.iris matches ..-1 if score $b hsj.iris matches ..-1 run scoreboard players add $a&b hsj.iris 512
scoreboard players operation $a hsj.iris += $a hsj.iris
scoreboard players operation $b hsj.iris += $b hsj.iris
execute if score $a hsj.iris matches ..-1 if score $b hsj.iris matches ..-1 run scoreboard players add $a&b hsj.iris 256
scoreboard players operation $a hsj.iris += $a hsj.iris
scoreboard players operation $b hsj.iris += $b hsj.iris
execute if score $a hsj.iris matches ..-1 if score $b hsj.iris matches ..-1 run scoreboard players add $a&b hsj.iris 128
scoreboard players operation $a hsj.iris += $a hsj.iris
scoreboard players operation $b hsj.iris += $b hsj.iris
execute if score $a hsj.iris matches ..-1 if score $b hsj.iris matches ..-1 run scoreboard players add $a&b hsj.iris 64
scoreboard players operation $a hsj.iris += $a hsj.iris
scoreboard players operation $b hsj.iris += $b hsj.iris
execute if score $a hsj.iris matches ..-1 if score $b hsj.iris matches ..-1 run scoreboard players add $a&b hsj.iris 32
scoreboard players operation $a hsj.iris += $a hsj.iris
scoreboard players operation $b hsj.iris += $b hsj.iris
execute if score $a hsj.iris matches ..-1 if score $b hsj.iris matches ..-1 run scoreboard players add $a&b hsj.iris 16
scoreboard players operation $a hsj.iris += $a hsj.iris
scoreboard players operation $b hsj.iris += $b hsj.iris
execute if score $a hsj.iris matches ..-1 if score $b hsj.iris matches ..-1 run scoreboard players add $a&b hsj.iris 8
scoreboard players operation $a hsj.iris += $a hsj.iris
scoreboard players operation $b hsj.iris += $b hsj.iris
execute if score $a hsj.iris matches ..-1 if score $b hsj.iris matches ..-1 run scoreboard players add $a&b hsj.iris 4
scoreboard players operation $a hsj.iris += $a hsj.iris
scoreboard players operation $b hsj.iris += $b hsj.iris
execute if score $a hsj.iris matches ..-1 if score $b hsj.iris matches ..-1 run scoreboard players add $a&b hsj.iris 2
scoreboard players operation $a hsj.iris += $a hsj.iris
scoreboard players operation $b hsj.iris += $b hsj.iris
execute if score $a hsj.iris matches ..-1 if score $b hsj.iris matches ..-1 run scoreboard players add $a&b hsj.iris 1

# Compute a^b = a+b-2(a&b)
scoreboard players operation $a^b hsj.iris -= $a&b hsj.iris
scoreboard players operation $a^b hsj.iris -= $a&b hsj.iris

# Return the result
return run scoreboard players get $a^b hsj.iris
