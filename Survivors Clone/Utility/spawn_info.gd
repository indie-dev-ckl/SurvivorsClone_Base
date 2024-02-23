extends Resource
class_name Spawn_info
#when to spawn
@export var time_start:int
@export var time_end:int

#type of enemy to spawn
@export var enemy:Resource

#number of enemy to spawn
@export var enemy_num :int

#seconds of delay between spawns
@export var enemy_spawn_delay: int

#track the delayed seconds
var spawn_delay_counter = 0
