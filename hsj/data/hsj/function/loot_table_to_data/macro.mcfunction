summon minecraft:item_display ~ ~1000 ~ {UUID:[I;-17649684,-582399633,-1598948333,-2098499806]}
$loot replace entity fef2afec-dd49-496f-a0b1-fc1382eb6f22 contents loot $(loot_table)
data modify storage hsj:temp loot_table.data set from entity fef2afec-dd49-496f-a0b1-fc1382eb6f22 item
kill fef2afec-dd49-496f-a0b1-fc1382eb6f22