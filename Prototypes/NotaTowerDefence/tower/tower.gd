extends Node2D
# tutorial?? https://kidscancode.org/godot_recipes/4.x/2d/grid_movement/index.html

#Gets tilesize in Global (a singleton)
@onready var tile_size = Global.tile_size
@onready var ray = $RayCast2D

#PLAYER INPUTS
#vector.direction is a preestablished vector pos! 
#thx godot docs https://docs.godotengine.org/en/stable/classes/class_vector2.html
var inputs = {"Right": Vector2.RIGHT,
			"Left": Vector2.LEFT,
			"Up": Vector2.UP,
			"Down": Vector2.DOWN} 
signal towerMove
signal towerTouched

#MOVE FUNCTIONS
#sets these things the every time "tower" is initialised/called on 
func _ready():
	#centers player sprite on tile
	position = position.snapped(Vector2.ONE * tile_size)
	position += Vector2.ONE * tile_size/2

func _unhandled_input(event):
	for direction in inputs.keys():
		if event.is_action_pressed(direction):
			movePlayer(direction)
			Global.counter -= 1
			print(Global.counter)
			#signals that we moved :)
			towerMove.emit()

func movePlayer(direction):
	#position += inputs[direction] * tile_size
	
	ray.target_position = inputs[direction] * tile_size
	ray.force_raycast_update() #forces to check this frame instead of waitin for the next
	
	if ray.is_colliding(): #if colliding with enemy
		towerTouched.emit()
	elif !ray.is_colliding(): #move if no enemy
		position += inputs[direction] * tile_size
