extends Node2D

onready var timer = $Load_Script/Enemy_Timer
export var enemy_spawn_time = 1.5
var scene = [
	preload("res://Scenes/Enemy.tscn")
	]

var location = Vector2()
onready var hero = $Load_Script/Hero_Ball
onready var Enemy_Gun = $Load_Script/Enemy/Gun

func _process(_delta):
	$Load_Script/Cross_Hair.position = get_local_mouse_position()
	if timer.is_stopped():
		timer.start(enemy_spawn_time) 
		randomize()
		var x = randi() % scene.size()
		location.x = rand_range(-1330,2688)
		location.y = rand_range(1470,-800)
		var Enemy = scene[x].instance()
		Enemy.position = location
		add_child(Enemy)
	$AudioStreamPlayer2D.play(true)
