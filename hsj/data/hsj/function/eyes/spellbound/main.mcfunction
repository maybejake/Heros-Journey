advancement revoke @s only hsj:action/enchant_item

execute store result score $chance hsj.dummy run random value 1..100
execute if score $chance hsj.dummy matches 4.. run return fail

playsound minecraft:entity.illusioner.mirror_move player @a ~ ~ ~ 1 1
playsound minecraft:entity.illusioner.cast_spell player @a ~ ~ ~ 1 2

loot give @s loot hsj:spellbound_eye