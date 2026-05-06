execute as @e[type=minecraft:villager, tag=!hsj_villager_done] if predicate hsj:master_armorer run function hsj:eyes/forged/loot/modify
schedule function hsj:tick_20 20 replace
