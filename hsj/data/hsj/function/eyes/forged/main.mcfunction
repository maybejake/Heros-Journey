tag @s add hsj.checked_villager

data remove storage hsj:temp trade

function hsj:loot_table_to_data/main {loot_table:"hsj:archaic_eye"}
data modify storage hsj:temp trade.sell set from storage hsj:temp loot_table.data

data modify storage hsj:temp trade.buy set value {"id":"minecraft:emerald", count:40}
data modify storage hsj:temp trade.buyB set value {"id":"minecraft:amethyst_shard", count:3}
data modify storage hsj:temp trade.priceMultiplier set value 0.05f
data modify storage hsj:temp trade.rewardExp set value true
data modify storage hsj:temp trade.xp set value 30
data modify storage hsj:temp trade.maxUses set value 1

data modify entity @s Offers.Recipes append from storage hsj:temp trade