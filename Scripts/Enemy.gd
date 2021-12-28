extends KinematicBody2D

var speed = 1200
export var gravity = 600
var velocity_dir = Vector2.ZERO
onready var  player = get_node("/root/Base/Load_Script/Hero_Ball")
onready var global = get_node("/root/Load_Script")

func _ready() -> void:
	set_physics_process(true)


func _process(delta): 
	velocity_dir.y += gravity * delta
	move_and_slide(velocity_dir)

func _physics_process(delta):
		if player:
			var direction = (player.position - position).normalized()
			move_and_slide(direction * speed)
		if global.pause_state == true:
			$Gun2.rotation = 90
		else:
			var x = get_angle_to(player.position)
			$Gun2.rotation = x

func _on_Area2D_body_entered(body):
	if body.is_in_group("Body_Killer"):
		global.Enemy_Died += 1
	set_physics_process(false)
	$Particles2D.emitting = true
	$sprite.visible = false
	yield(get_tree().create_timer(.7),"timeout")
	queue_free()



func _on_VisibilityNotifier2D_screen_exited():
	queue_free()


func _on_VisibilityNotifier2D_screen_entered():
	pass
