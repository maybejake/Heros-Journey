tellraw @a[gamemode=creative] [{"translate":"hsj.tooltip","font":"hsj:tooltip","color":"white","italic":false},{"translate":"hsj.loaded","font":"minecraft:default","fallback":" loaded!","color":"white","bold":false}]

scoreboard objectives add hsj.creaking_killed minecraft.killed:minecraft.creaking
scoreboard objectives add hsj.use_cooldown dummy
scoreboard objectives add hsj.dummy dummy