advancement revoke @s only hsj:action/kill_evoker

execute store result score $chance hsj.dummy run random value 1..10
execute if score $chance hsj.dummy matches 2.. run return fail

tag @s add hsj.evoker_killer
schedule function hsj:eyes/bound/spawn 1t