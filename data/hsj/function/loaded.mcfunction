tellraw @a ["",{"text":"Hero's Journey ","color":"dark_purple","bold":true},{"translate":"hsj:loaded","fallback":"loaded!","color":"white","bold":false}]

#raycast
scoreboard objectives add hsj_raycast_hit dummy
scoreboard objectives add hsj_raycast_distance dummy

#eye motion
scoreboard objectives add hsj_eye_x dummy
scoreboard objectives add hsj_eye_y dummy
scoreboard objectives add hsj_eye_z dummy

#eye removal checks
scoreboard objectives add hsj_frame_count dummy
scoreboard objectives add hsj_remove_chance dummy

# loot
scoreboard objectives add hsj_eye_chance dummy

#reach
scoreboard objectives add hsj_reach dummy

#aquatic eye source
scoreboard objectives add hsj_fish_caught minecraft.custom:minecraft.fish_caught

#amber eye source
scoreboard objectives add hsj_creaking_killed minecraft.killed:minecraft.creaking

#bound eye source
scoreboard objectives add hsj_evoker_killed minecraft.killed:minecraft.evoker

#withered eye source
scoreboard objectives add hsj_wither_killed minecraft.killed:minecraft.wither

#elder eye source
scoreboard objectives add hsj_elder_killed minecraft.killed:minecraft.elder_guardian

#tick 20
schedule function hsj:tick_20 20t replace 