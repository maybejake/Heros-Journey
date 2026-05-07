advancement revoke @s only hsj:action/kill_wither

execute store result score $chance hsj.dummy run random value 1..10
execute if score $chance hsj.dummy matches 9.. run return fail

tag @s add hsj.wither_killer
schedule function hsj:eyes/withered/spawn 1t