execute store result score @s hsj_eye_chance run random value 1..100
execute if score @s hsj_eye_chance matches ..5 run data modify block ~ ~ ~ LootTable set value "hsj:archaic_eye"