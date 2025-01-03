
tag @s add parkour.temp

execute as @e[type=marker, tag=parkour.marker, tag=parkour.checkpoint] if score @s parkour.markerID = @a[tag=parkour.temp,limit=1] parkour.lastMarker run tp @a[tag=parkour.temp] @s

scoreboard players set $temp parkour.lastMarker 0
execute as @e[type=marker, tag=parkour.marker, tag=parkour.checkpoint] if score @s parkour.markerID = @a[tag=parkour.temp,limit=1] parkour.lastMarker run scoreboard players add $temp parkour.lastMarker 1
execute if score $temp parkour.lastMarker matches 1.. run tellraw @s ["",{"text":"You were teleported to your last ","color":"gray"},{"text":"checkpoint.","color":"green"}]
execute at @s if score $temp parkour.lastMarker matches 0 run function parkour:error/no_checkpoint

tag @s remove parkour.temp

scoreboard players set @s parkour.checkpoint 0
scoreboard players enable @s parkour.checkpoint