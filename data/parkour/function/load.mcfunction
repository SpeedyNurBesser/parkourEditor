# Triggering parkour.start teleports you back to the start of your current parkour run and 
scoreboard objectives add parkour.reset trigger
scoreboard players enable @a parkour.reset

# Triggering parkour.checkpoint teleports you back towards your last checkpoint
scoreboard objectives add parkour.checkpoint trigger
scoreboard players enable @a parkour.checkpoint

# Triggering parkour.cancel ends your run of the current parkour
scoreboard objectives add parkour.cancel trigger
scoreboard players enable @a parkour.cancel


# Identifier for every marker
scoreboard objectives add parkour.markerID dummy
execute unless score $id parkour.markerID matches 1.. run scoreboard players set $id parkour.markerID 1

# Score asigning every marker a specific parkour
scoreboard objectives add parkour.parkour dummy

# Storing the ID of the last visited marker for each player (for teleportation purposes)
# 0 if parkour was canceled / finished
scoreboard objectives add parkour.lastMarker dummy
execute as @a unless score @s parkour.lastMarker matches 1.. run scoreboard players set @s parkour.lastMarker 0

# Storing the ID of the parkour currently
# 0 if not currently partaking in any parkour run
scoreboard objectives add parkour.currentParkour dummy
execute as @a unless score @s parkour.currentParkour matches 1.. run scoreboard players set @s parkour.currentParkour 0


# Timer for storing the time needed to finish the current parkour
# Updated every tick
scoreboard objectives add parkour.timer dummy
# Updated when needed
scoreboard objectives add parkour.timerSec dummy
scoreboard objectives add parkour.timerMin dummy
execute as @a unless score @s parkour.timerSec matches 1.. run scoreboard players set @s parkour.timerSec 0
execute as @a unless score @s parkour.timerMin matches 1.. run scoreboard players set @s parkour.timerMin 0

playsound block.amethyst_block.break