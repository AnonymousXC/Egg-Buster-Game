extends Label

onready var label = $Score
onready var global = get_node("/root/Load_Script")

func _process(delta):
	global.Score = str(global.Enemy_Died)
	label.text = global.Score
