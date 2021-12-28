extends KinematicBody2D


var speed = 4000
onready var timer = $Timer
var delay = 5

func _process(delta):
	position += transform.x * speed * delta


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()

func _on_Area2D_area_exited(area):
	pass

func _on_Area2D_body_exited(body):
	pass

func _on_Area2D_area_entered(area):
	var coll_name = area.get_name()
	if coll_name == "1":
		queue_free()


func _on_Area2D_body_entered(body):
	var coll_name2 = body.get_name()
	if coll_name2 == "1":
		queue_free()

