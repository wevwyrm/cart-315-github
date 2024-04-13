#physics body intro: 
#https://docs.godotengine.org/en/stable/tutorials/physics/physics_introduction.html
extends PathFollow2D

#ENEMY STATS
#speed + path follow
var runSpeed = 64 #64 to match tile size
var newProgress

var count_move = 2
var temp_move = 0

#health 
var count_health = 3

#signal connecting from player tower + global
@onready var tower = preload("res://tower/tower.tscn")
func _ready():
	# Signal Logic? 
	# connects a counter check signal from Global 
	# docs = https://docs.godotengine.org/en/stable/classes/class_signal.html
	#.connect ("name of signal in global", name of function in this script.bind())
	# bind() = makes sure it specifically connects the function in HERE with it
	Global.connect("counterChange", _on_Global_counterChange.bind())
	tower.connect("towerTouched", _on_tower_touched.bind())

func _on_tower_touched():
	print("teehee")

#catches counterUp signal
func _on_Global_counterChange():
	#MOVES ENEMY FORWARD per times moved
	temp_move += 1
	if (temp_move == count_move):
		temp_move = 0
		newProgress = get_progress() + runSpeed # * delta (for timebased movement)
		set_progress(newProgress) #progress is used in godot4.2 instead of offset
	
	#DELETES ENEMY ONCE IT GETS TO THE END
	if (loop == false && get_progress_ratio() == 1):
		Global.counter -= count_health
		queue_free()
	
	#DELETE ENEMY IF PLAYER KILLS IT
	if (count_health == 0):
		queue_free()
