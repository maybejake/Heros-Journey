advancement revoke @s only hsj:loot/pillager_outpost

execute store result score $chance hsj.dummy run random value 1..10
execute if score $chance hsj.dummy matches 6.. run return fail

tag @s add hsj.curious_eye_loot
schedule function hsj:eyes/curious/loot 1t