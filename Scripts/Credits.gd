extends Node2D

var home_scene = load("res://Start_Scene/Star_scene.tscn")



func _on_Button_pressed() -> void:
	get_tree().change_scene_to(home_scene)
