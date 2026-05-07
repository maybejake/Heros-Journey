data remove storage hsj:temp loot_table.data

$data modify storage hsj:temp loot_table_to_data.loot_table set value "$(loot_table)"
function hsj:loot_table_to_data/macro with storage hsj:temp loot_table_to_data