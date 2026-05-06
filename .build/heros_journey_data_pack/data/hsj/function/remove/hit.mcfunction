summon minecraft:marker ~ ~ ~ {Tags: ["hsj.remove_eye"]}
scoreboard players add $frame_count hsj.dummy 1
execute if score $frame_count hsj.dummy matches ..11 run function hsj:remove/walk
