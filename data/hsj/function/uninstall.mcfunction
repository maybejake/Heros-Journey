tellraw @a ["",{"text":"Hero's Journey ","color":"dark_purple","bold":true}," uninstalled!"]

#raycast
scoreboard objectives remove hsj_raycast_hit
scoreboard objectives remove hsj_raycast_distance

#eye motion
scoreboard objectives remove hsj_eye_x
scoreboard objectives remove hsj_eye_y
scoreboard objectives remove hsj_eye_z

#eye removal checks
scoreboard objectives remove hsj_frame_count
scoreboard objectives remove hsj_remove_chance

# loot
scoreboard objectives remove hsj_eye_chance

#reach
scoreboard objectives remove hsj_reach

#aquatic eye source
scoreboard objectives remove hsj_fish_caught

#amber eye source
scoreboard objectives remove hsj_creaking_killed

#bound eye source
scoreboard objectives remove hsj_evoker_killed

#withered eye source
scoreboard objectives remove hsj_wither_killed

#elder eye source
scoreboard objectives remove hsj_elder_killed

#tick 20
schedule clear hsj:tick_20