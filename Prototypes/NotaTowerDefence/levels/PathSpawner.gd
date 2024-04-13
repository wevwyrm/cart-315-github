extends Path2D
# https://www.youtube.com/watch?v=9ZWM1CDNPm8&t

# spawns baseEnemy by preloading it
# base enemy is a PathFollow2D
@onready var enemy = preload("res://levels/baseEnemy.tscn")

#array of all enemies to spawn in a level
var level_P_Wave = [1,5,9,14,20,23]


func summonEnemy():
	var newEnemy = enemy.instantiate()
	add_child(newEnemy)

#catches the towerMove() signal
func _on_tower_move():
	if (level_P_Wave.has(Global.counter)): #global variable mentioned
		summonEnemy()
