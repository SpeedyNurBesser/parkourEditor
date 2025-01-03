
tellraw @s [{"text":"Parkour run ","color":"gray"},{"text":"started. ","color":"green"},{"text":"Use ","color":"gray"},{"text":"/trigger parkour.cancel ","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger parkour.cancel"}},{"text":"to ","color":"gray"},{"text":"cancel ","color":"red"},{"text":"run. ","color":"gray"},{"text":"Use ","color":"gray"},{"text":"/trigger parkour.reset ","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger parkour.reset"}},{"text":"to ","color":"gray"},{"text":"reset ","color":"red"},{"text":"run.","color":"gray"}]

tag @s add parkour.timed

scoreboard players operation @s parkour.lastMarker = @e[type=marker, tag=parkour.marker, tag=parkour.start, distance=..0.5, limit=1] parkour.markerID

scoreboard players operation @s parkour.currentParkour = @e[type=marker, tag=parkour.marker, tag=parkour.start, distance=..0.5, limit=1] parkour.parkour

playsound minecraft:block.amethyst_block.step master @s ~ ~ ~

particle minecraft:cherry_leaves ~ ~1 ~ 1 1 1 0 50 force @s