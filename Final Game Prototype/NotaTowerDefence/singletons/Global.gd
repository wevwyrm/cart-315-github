extends Node
# global counter code goes here :)))
# Access example: via $/root/GlobalSettings

#GLOBAL VARIABLES 
var tile_size = 64

## Counter System
#the begining of a beauuuutiful counter system :)
var counter = 30
var prev_counter = counter
signal counterChange


func _process(_delta):
	#checks if counter was added to
	if (prev_counter != counter):
		counterChange.emit()
		prev_counter = counter

	#Game Over
	if (counter == -1):
		get_tree().change_scene_to_file("res://singleScreens/gameOver.tscn")
