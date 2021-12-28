extends Control

var x = load("res://Scenes/Base.tscn")
var credit = load("res://Scenes/Credits.tscn")

func _process(delta):
	pass

func _on_Button_pressed():
	get_tree().change_scene_to(x)



func _on_Button3_pressed():
	get_tree().quit()


func _on_Button4_pressed() -> void:
	get_tree().change_scene_to(credit)
