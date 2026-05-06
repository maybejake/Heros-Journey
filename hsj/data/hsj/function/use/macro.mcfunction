$swing @s $(hand)
$item modify entity @s[gamemode=!creative] weapon.$(hand) {"function":"minecraft:set_count","count":-1,"add":true}

$execute align xyz run summon minecraft:item_display ~0.5 ~0.5 ~0.5 {item_display:"head",item:{id:"minecraft:poisonous_potato",components:{"minecraft:item_model":"$(model)"}},Tags:["$(type)","hsj.eye_display","smithed.entity","smithed.strict"],Rotation:[$(rotation),0]}