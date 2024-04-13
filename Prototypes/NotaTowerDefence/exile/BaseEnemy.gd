#Tutorials for this section :pray:
#how to use path2d: https://www.youtube.com/watch?v=tHrT4KoDZ_Y
#tower defence pathfinding => https://www.youtube.com/watch?v=O9l1FcXmxv0
#parent child relationship = https://kidscancode.org/godot_recipes/4.x/basics/node_communication/
# EVEN BETTER TUTORIAL  = https://www.youtube.com/watch?v=O9l1FcXmxv0

extends Node2D

# : meants its a typed variable!
# https://godottutorials.com/courses/introduction-to-gdscript/godot-tutorials-gdscript-1-1/
#@onready var path_follow : PathFollow2D = $Path2D/BaseEnemy 
@export var speed = 500


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#MOVES ENNEMY FORWARD
	#since its gonna be instanced elsewhere, this makes sure it calls the path
	set_progress(get_progress() + speed*delta) 
	
	#path_follow.progress += speed * delta
	
	#KILL UNIT IF IT GETS TO THE END
	if get_parent().get_progress_ratio() == 1:
		queue_free()
	
