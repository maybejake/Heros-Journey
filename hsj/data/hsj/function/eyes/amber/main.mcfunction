scoreboard players reset @s hsj.creaking_killed

execute store result score $chance hsj.dummy run random value 1..10
execute if score $chance hsj.dummy matches 3.. run return fail

tag @s add hsj.creaking_killer
schedule function hsj:eyes/amber/spawn 1t