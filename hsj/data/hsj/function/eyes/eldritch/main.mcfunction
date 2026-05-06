advancement revoke @s only hsj:eldritch_eye_loot

execute store result score $chance hsj.dummy run random value 1..10
execute if score $chance hsj.dummy matches 2.. run return fail

tag @s add hsj.eldritch_eye_loot
schedule function hsj:eyes/eldritch/loot 1t