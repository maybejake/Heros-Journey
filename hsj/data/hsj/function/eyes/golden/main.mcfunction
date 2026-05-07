advancement revoke @s only hsj:golden_eye_loot

execute store result score $chance hsj.dummy run random value 1..10
execute if score $chance hsj.dummy matches 3.. run return fail

tag @s add hsj.golden_eye_loot
schedule function hsj:eyes/golden/loot 1t