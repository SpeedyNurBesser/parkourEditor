execute at @s unless entity @e[type=marker, tag=parkour.marker, distance=..1] run function parkour:error/not_found

execute at @s if entity @e[type=marker, tag=parkour.marker, distance=..1] as @e[type=marker, tag=parkour.marker, distance=..1] at @s run function parkour:place/remove