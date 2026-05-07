advancement revoke @s only hsj:loot/buried_treasure

execute store result score $chance hsj.dummy run random value 1..10
execute if score $chance hsj.dummy matches 4.. run return fail

tag @s add hsj.opulent_eye_loot
schedule function hsj:eyes/opulent/loot 1t