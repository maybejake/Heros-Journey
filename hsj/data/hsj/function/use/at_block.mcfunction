execute if block ~ ~ ~ minecraft:end_portal_frame[eye=true] run return fail

function hsj:use/get_data with storage hsj:temp eye

function hsj:use/check_duplicate with storage hsj:temp eye
execute if score $found_duplicate hsj.dummy matches 1 run return fail

execute unless entity @n[tag=hsj.display,distance=..10] run function hsj:remove/start

execute if block ~ ~ ~ minecraft:end_portal_frame[facing=north] run function hsj:use/direction/north
execute if block ~ ~ ~ minecraft:end_portal_frame[facing=east] run function hsj:use/direction/east
execute if block ~ ~ ~ minecraft:end_portal_frame[facing=south] run function hsj:use/direction/south
execute if block ~ ~ ~ minecraft:end_portal_frame[facing=west] run function hsj:use/direction/west

playsound minecraft:block.end_portal_frame.fill block @a ~ ~ ~ 1 1
particle minecraft:smoke ~ ~0.3 ~ 0.1 0.1 0.1 0.01 10

function hsj:use/macro with storage hsj:temp eye