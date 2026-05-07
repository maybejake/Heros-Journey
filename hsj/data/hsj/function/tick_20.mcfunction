schedule function hsj:tick_20 20t replace 

execute as @e[tag=!hsj.checked_villager,tag=!smithed.entity,type=minecraft:villager] run function hsj:villager/check

advancement revoke @a from hsj:cooldown