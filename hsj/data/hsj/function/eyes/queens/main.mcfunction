advancement revoke @s only hsj:action/shear_beehive

execute store result score $chance hsj.dummy run random value 1..100
execute if score $chance hsj.dummy matches 6.. run return fail

tag @s add hsj.beehive_shearer
schedule function hsj:eyes/queens/spawn 1t