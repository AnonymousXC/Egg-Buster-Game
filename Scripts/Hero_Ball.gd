extends KinematicBody2D

export var gravity = 600
var velocity_dir = Vector2.ZERO
var acceralation = 20000
onready var global = get_node("/root/Load_Script")

func _process(delta): 
	velocity_dir.y += gravity * delta
	move_and_slide(velocity_dir)
	if Input.is_action_just_released("ui_up"):
		velocity_dir.y = 0
	if Input.is_action_pressed("ui_up"):
		velocity_dir.y = 5
		velocity_dir.y -= 20000 * delta
	move_and_slide(velocity_dir)
	if Input.is_action_pressed("ui_left"):
		$Sprite.flip_h = true
		velocity_dir.x = 0
		velocity_dir.x -= acceralation * delta
	if Input.is_action_pressed("ui_right"):
		$Sprite.flip_h = false
		velocity_dir.x = 0
		velocity_dir.x += acceralation * delta
	if Input.is_action_pressed("Space"):
		velocity_dir.x = 0
	$Gun.rotation= get_global_mouse_position().angle_to_point(position)
	lerp(velocity_dir.x,0,.2)
	if Input.is_action_pressed("mouse_button"):
		$AudioStreamPlayer2D.playing = true
	else:
		$AudioStreamPlayer2D.playing = false


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()

func _on_Area2D_body_exited(body):
	global.Health = global.Health - global.Damage
	if global.Health < 0:
		global.Health = 100
		$Sprite.visible = false
		$Gun.visible = false
		global.pause_state = true
