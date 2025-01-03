
tag @s add parkour.temp
execute as @e[type=marker, tag=parkour.marker, tag=parkour.start] if score @s parkour.parkour = @a[tag=parkour.temp,limit=1] parkour.currentParkour run tp @a[tag=parkour.temp] @s
tag @s remove parkour.temp

execute if entity @s[tag=parkour.timed] run tellraw @s ["",{"text":"Parkour run ","color":"gray"},{"text":"reseted.","color":"red"}]
execute at @s if entity @s[tag=!parkour.timed] run function parkour:error/no_run

scoreboard players set @s parkour.timer 0
scoreboard players set @s parkour.timerSec 0
scoreboard players set @s parkour.timerMin 0

tag @s remove parkour.timed

scoreboard players set @s parkour.currentParkour 0
scoreboard players set @s parkour.lastMarker 0

scoreboard players set @s parkour.reset 0
scoreboard players enable @s parkour.reset