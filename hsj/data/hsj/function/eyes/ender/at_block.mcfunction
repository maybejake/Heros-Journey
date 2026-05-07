execute if block ~ ~ ~ minecraft:end_portal_frame[eye=false] run return fail

function hsj:remove/frame

function hsj:remove/start

loot spawn ~ ~0.1 ~ loot {pools:[{rolls:1,entries:[{type:"minecraft:item",name:"minecraft:ender_eye"}]}]}
tellraw @s ["",{"translate":"hsj.eye_rejected","fallback":"The portal rejects the eye... More powerful eyes are needed...","color":"dark_purple","bold":false}]