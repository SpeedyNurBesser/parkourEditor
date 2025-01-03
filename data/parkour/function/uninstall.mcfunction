
scoreboard objectives remove parkour.reset
scoreboard objectives remove parkour.checkpoint
scoreboard objectives remove parkour.cancel

scoreboard objectives remove parkour.lastMarker
scoreboard objectives remove parkour.markerID
scoreboard objectives remove parkour.parkour
scoreboard objectives remove parkour.currentParkour

scoreboard objectives remove parkour.timer
scoreboard objectives remove parkour.timerSec
scoreboard objectives remove parkour.timerMin

tag @a remove parkour.timed

execute as @e[tag=parkour.marker] at @s run function parkour:place/remove