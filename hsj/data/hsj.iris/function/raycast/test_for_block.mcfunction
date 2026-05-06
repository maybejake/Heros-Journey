#> hsj.iris:raycast/test_for_block
#
# @within hsj.iris:raycast/loop
# @output
#   Result: 0
#   Success: 1 if a block was hit, 0 otherwise

# Check if the current block is loaded
execute store success score $loaded hsj.iris if blocks ~ ~ ~ ~ ~ ~ ~ ~ ~ masked
execute if score $loaded hsj.iris matches 0 run return fail

# Check if the current block is blacklisted, or explicitly not whitelisted
execute if data storage hsj.iris:settings Whitelist run data modify storage hsj.iris:args id set from storage hsj.iris:settings Whitelist
execute if data storage hsj.iris:settings Whitelist store success score $is_whitelisted hsj.iris run function hsj.iris:raycast/macro_functions/block_id_test with storage hsj.iris:args
execute if data storage hsj.iris:settings Whitelist unless score $is_whitelisted hsj.iris matches 1 run return fail
execute if data storage hsj.iris:settings Blacklist run data modify storage hsj.iris:args id set from storage hsj.iris:settings Blacklist
execute if data storage hsj.iris:settings Blacklist store success score $is_blacklisted hsj.iris run function hsj.iris:raycast/macro_functions/block_id_test with storage hsj.iris:args
execute if data storage hsj.iris:settings Blacklist if score $is_blacklisted hsj.iris matches 1 run return fail

# See if the block is hit
function hsj.iris:get_hitbox/block

execute unless data storage hsj.iris:data Shape[0] run return fail
return run function hsj.iris:raycast/check_intersection/loop
