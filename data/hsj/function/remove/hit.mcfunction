summon minecraft:marker ~ ~ ~ {Tags:["hsj_remove_eye"]}
scoreboard players add @s hsj_frame_count 1
execute if score @s hsj_frame_count matches ..11 run function hsj:remove/walk