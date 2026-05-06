advancement revoke @s only hsj:kill_elder_guardian

execute store result score $chance hsj.dummy run random value 1..10
execute if score $chance hsj.dummy matches 5.. run return fail

tag @s add hsj.elder_guardian_killer
schedule function hsj:eyes/elder/spawn 1t