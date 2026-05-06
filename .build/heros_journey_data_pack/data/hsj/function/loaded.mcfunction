tellraw @a[gamemode=creative] [{translate: "hsj.tooltip", font: "hsj:tooltip", color: "white", italic: false}, {translate: "hsj.loaded", font: "minecraft:default", fallback: " loaded!", color: "white", bold: false}]
scoreboard objectives add hsj_raycast_hit dummy
scoreboard objectives add hsj_raycast_distance dummy
scoreboard objectives add hsj_eye_x dummy
scoreboard objectives add hsj_eye_y dummy
scoreboard objectives add hsj_eye_z dummy
scoreboard objectives add hsj_frame_count dummy
scoreboard objectives add hsj_remove_chance dummy
scoreboard objectives add hsj_eye_chance dummy
scoreboard objectives add hsj_reach dummy
scoreboard objectives add hsj_fish_caught minecraft.custom:minecraft.fish_caught
scoreboard objectives add hsj.creaking_killed minecraft.killed:minecraft.creaking
scoreboard objectives add hsj_evoker_killed minecraft.killed:minecraft.evoker
scoreboard objectives add hsj_wither_killed minecraft.killed:minecraft.wither
scoreboard objectives add hsj_elder_killed minecraft.killed:minecraft.elder_guardian
schedule function hsj:tick_20 20 replace
scoreboard objectives add hsj.use_cooldown dummy
scoreboard objectives add hsj.dummy dummy
