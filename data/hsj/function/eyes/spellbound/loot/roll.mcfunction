advancement revoke @s only hsj:spellbound_eye_loot
execute store result score @s hsj_eye_chance run random value 1..100
execute if score @s hsj_eye_chance matches ..3 run function hsj:eyes/spellbound/give
execute at @s if score @s hsj_eye_chance matches ..3 run playsound minecraft:entity.illusioner.mirror_move master @a ~ ~ ~ 1 1
execute at @s if score @s hsj_eye_chance matches ..3 run playsound minecraft:entity.illusioner.cast_spell master @a ~ ~ ~ 1 2