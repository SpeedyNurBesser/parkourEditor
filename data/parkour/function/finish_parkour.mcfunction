
tellraw @s ["",{"text":"Parkour run ","color":"gray"},{"text":"finished ","color":"gold"},{"text":"in ","color":"gray"},{"score":{"name":"@s","objective":"parkour.timerMin"},"color":"gold"},{"text":" minutes ","color":"gold"},{"text":"and ","color":"gray"},{"score":{"name":"@s","objective":"parkour.timerSec"},"color":"gold"},{"text":" seconds.","color":"gold"}]

scoreboard players set @s parkour.timer 0
scoreboard players set @s parkour.timerSec 0
scoreboard players set @s parkour.timerMin 0

tag @s remove parkour.timed

scoreboard players set @s parkour.currentParkour 0
scoreboard players set @s parkour.lastMarker 0

playsound minecraft:block.amethyst_block.step master @s ~ ~ ~

particle minecraft:totem_of_undying ~ ~1 ~ 0.5 0.5 0.5 0 10 force @s