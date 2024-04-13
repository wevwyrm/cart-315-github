extends Path2D

#@onready var basic_enemy = get_node("BaseEnemy")
var basic_enemy = preload("res://enemies/BaseEnemy.tscn")

var teehee = false

func _onready():
	pass
	#basic_ennemy = get_node("res://enemies/baseEnemy.tscn")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	if teehee == false:
		teehee = true		
		var tempEnemy = basic_enemy.instantiate()
		add_child(tempEnemy)
