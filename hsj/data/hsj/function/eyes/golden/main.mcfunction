advancement revoke @s only hsj:loot/golden_eye

execute store result score $chance hsj.dummy run random value 1..10
execute if score $chance hsj.dummy matches 6.. run return fail

tag @s add hsj.golden_eye_loot
schedule function hsj:eyes/golden/loot 1t