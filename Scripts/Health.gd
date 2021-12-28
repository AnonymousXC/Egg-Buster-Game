extends ProgressBar

onready var global = get_node("/root/Load_Script")

func _process(delta):
	value = global.Health
