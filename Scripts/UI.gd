extends Node2D



func _on_Up_touch_pressed() -> void:
	Input.action_press("ui_up")

func _on_Up_touch_released() -> void:
	Input.action_release("ui_up")


func _on_Left_touch_pressed() -> void:
	Input.action_press("ui_left")


func _on_Left_touch_released() -> void:
	Input.action_release("ui_left")


func _on_Right_touch_pressed() -> void:
	Input.action_press("ui_right")


func _on_Right_touch_released() -> void:
	Input.action_release("ui_right")


func _on_Space_touch_pressed() -> void:
	Input.action_press("Space")

func _on_Space_touch_released() -> void:
	Input.action_release("Space")


func _on_Fire_touch_pressed() -> void:
	Input.action_press("mouse_button")


func _on_Fire_touch_released() -> void:
	Input.action_release("mouse_button")
