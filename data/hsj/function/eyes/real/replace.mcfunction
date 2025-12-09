function hsj:remove/frame

execute align xyz positioned ~0.5 ~0.5 ~0.5 run function hsj:remove/start

execute align xyz run summon minecraft:item ~0.5 ~0.6 ~0.5 {Item:{count:1,id:"minecraft:ender_eye"}}
tellraw @p[tag=hsj_real_eye_ray] ["",{"translate":"hsj:eye_rejected","fallback":"The portal rejects the eye... More powerful eyes are needed...","color":"dark_purple","bold":false}]