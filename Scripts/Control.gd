extends Control

onready var globe = get_node("/root/Load_Script")
var starter_scene = load("res://Start_Scene/Star_scene.tscn") 

func _process(delta):
	if globe.pause_state == true:
		get_tree().paused = true
		visible = true
	if globe.pause_state == false:
		get_tree().paused = false
		visible = false

func _on_Button_pressed():
	globe.pause_state = false
	globe.Score = 0
	get_tree().reload_current_scene()




func _on_Button3_pressed():
	pass



func _on_Button2_pressed():
	get_tree().quit()
