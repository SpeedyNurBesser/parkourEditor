
# Timer Logic

scoreboard players add @a[tag=parkour.timed] parkour.timer 1

scoreboard players add @a[tag=parkour.timed, scores={parkour.timer=20..}] parkour.timerSec 1
scoreboard players remove @a[tag=parkour.timed, scores={parkour.timer=20..}] parkour.timer 20

scoreboard players add @a[tag=parkour.timed, scores={parkour.timerSec=60..}] parkour.timerMin 1
scoreboard players remove @a[tag=parkour.timed, scores={parkour.timerSec=60..}] parkour.timerSec 60

# Trigger Logic

execute as @a[scores={parkour.checkpoint=1..}] run function parkour:checkpoint
execute as @a[scores={parkour.cancel=1..}] run function parkour:cancel
execute as @a[scores={parkour.reset=1..}] run function parkour:reset

# Flag Update Logic
# Start Flag
execute as @a[tag=!parkour.timed] at @s if entity @e[type=marker, tag=parkour.marker, tag=parkour.start, distance=..0.5] unless score @s parkour.lastMarker = @e[type=marker, tag=parkour.marker, tag=parkour.start, distance=..0.5, limit=1] parkour.markerID if score @s parkour.currentParkour matches 0 run function parkour:start_parkour

# Checkpoint Flag
execute as @a at @s if entity @e[type=marker, tag=parkour.marker, tag=parkour.checkpoint, distance=..0.5] unless score @s parkour.lastMarker = @e[type=marker, tag=parkour.marker, tag=parkour.checkpoint, distance=..0.5, limit=1] parkour.markerID if score @s parkour.currentParkour = @e[type=marker, tag=parkour.marker, tag=parkour.checkpoint, distance=..0.5, limit=1] parkour.parkour run function parkour:set_checkpoint

# Finish Line
execute as @a at @s if entity @e[type=marker, tag=parkour.marker, tag=parkour.finish, distance=..0.5] unless score @s parkour.lastMarker = @e[type=marker, tag=parkour.marker, tag=parkour.finish, distance=..0.5, limit=1] parkour.markerID if score @s parkour.currentParkour = @e[type=marker, tag=parkour.marker, tag=parkour.finish, distance=..0.5, limit=1] parkour.parkour run function parkour:finish_parkour