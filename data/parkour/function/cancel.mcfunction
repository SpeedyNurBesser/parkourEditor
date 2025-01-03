
execute if entity @s[tag=parkour.timed] run tellraw @s ["",{"text":"Parkour run ","color":"gray"},{"text":"canceled.","color":"red"}]
execute at @s if entity @s[tag=!parkour.timed] run function parkour:error/no_run

scoreboard players set @s parkour.timer 0
scoreboard players set @s parkour.timerSec 0
scoreboard players set @s parkour.timerMin 0

tag @s remove parkour.timed

scoreboard players set @s parkour.currentParkour 0
scoreboard players set @s parkour.lastMarker 0

scoreboard players enable @s parkour.reset

scoreboard players set @s parkour.cancel 0
scoreboard players enable @s parkour.cancel