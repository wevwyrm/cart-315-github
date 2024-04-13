extends Node

#var enemy = preload("res://enemies/evil.tscn")
#var enemy = preload("res://levels/evil.tscn")
##var gay = false

#func spawn_enemies():
	#var new_enemy = enemy.instantiate()
	#get_node("level_prototype/Path").add_child(new_enemy)


#func _process(delta):
	#if gay == false:
		#gay = true
		#spawn_enemies()
