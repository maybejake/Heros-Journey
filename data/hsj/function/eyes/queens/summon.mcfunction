execute if entity @n[type=minecraft:item_display,tag=hsj_queens,distance=..10] run return run function hsj:eyes/remove
execute align xyz run summon minecraft:item_display ~0.5 ~0.75 ~0.5 {Tags:["hsj_display","hsj_queens"],item:{id:"minecraft:barrier",Count:1,components:{"custom_model_data":{"strings":["hsj:queens_eye"]}}},item_display:"none",transformation:[0.5050f,0.0000f,0.0000f,0.0000f,0.0000f,0.5050f,0.0000f,0.0000f,0.0000f,0.0000f,0.5050f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f],brightness:{sky:15,block:15}}
execute as @n[type=minecraft:item_display,tag=hsj_queens] at @s rotated as @s run function hsj:eyes/rotate_display