function hsj:remove/frame
particle minecraft:item{item:"ender_eye"} ~ ~0.6 ~ 0 0 0 0.15 10 force
particle minecraft:smoke ~ ~0.6 ~ 0.1 0.1 0.1 0 10 force
playsound minecraft:entity.ender_eye.death master @a ~ ~ ~ 0.4 1
playsound minecraft:block.glass.break master @a ~ ~ ~ 0.1 1