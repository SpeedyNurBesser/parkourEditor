
tellraw @s ["",{"text":"Checkpoint ","color":"green"},{"text":"reached. Use ","color":"gray"}, {"text":"/trigger parkour.checkpoint ","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger parkour.checkpoint"}},{"text":"to teleport back.","color":"gray"}]

scoreboard players operation @s parkour.lastMarker = @e[type=marker, tag=parkour.marker, tag=parkour.checkpoint, distance=..0.5, limit=1] parkour.markerID

playsound minecraft:block.amethyst_block.step master @s ~ ~ ~

particle minecraft:end_rod ~ ~1 ~ 0.5 0.5 0.5 0.1 5 force @s