summon minecraft:item_display ~ ~1000 ~ {UUID:[I;17632099,-244955327,-1596267855,1565810895]}
$item replace entity 010d0b63-f166-4741-a0da-e2b15d5460cf contents from entity @s weapon.$(hand)
data modify storage hsj:temp eye.item set from entity 010d0b63-f166-4741-a0da-e2b15d5460cf
kill 010d0b63-f166-4741-a0da-e2b15d5460cf

data modify storage hsj:temp eye.model set from storage hsj:temp eye.item.item.components."minecraft:item_model"
data modify storage hsj:temp eye.type set from storage hsj:temp eye.item.item.components."minecraft:custom_data".hsj.eye.type