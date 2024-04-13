extends Label

var count = Global.counter

func _ready():
	Global.connect("counterChange", _on_Global_counterChange.bind())
	text = "Counter: " + str(count)

#text = "Counter: %s" % score #teehee %s means string, this aint like C :p


func _on_Global_counterChange():
	count = Global.counter
	text = "Counter: " + str(count)
