tellraw @a[gamemode=creative] [{translate: "hsj.tooltip", font: "hsj:tooltip", color: "white", italic: false}, {translate: "hsj.uninstalled", font: "minecraft:default", fallback: " uninstalled!", color: "white", bold: false}]
scoreboard objectives remove hsj.creaking_killed
scoreboard objectives remove hsj.use_cooldown
scoreboard objectives remove hsj.dummy
schedule clear hsj:tick_20
