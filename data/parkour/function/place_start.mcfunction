execute at @s if entity @e[type=marker, tag=parkour.marker, distance=..3] run function parkour:error/too_close

$execute at @s unless entity @e[type=marker, tag=parkour.marker, distance=..3] run function parkour:place/start {parkour: $(parkour)}