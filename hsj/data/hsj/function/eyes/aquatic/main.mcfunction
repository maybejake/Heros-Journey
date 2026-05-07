advancement revoke @s only hsj:action/hook_rod

execute store result score $chance hsj.dummy run random value 1..100
execute if score $chance hsj.dummy matches 100.. run return fail

tag @s add hsj.rod_hooked
schedule function hsj:eyes/aquatic/spawn 1t