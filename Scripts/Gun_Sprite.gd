extends Sprite

var bullet = preload("res://Scenes/EnemyBullet.tscn")
var bullet_speed = 5000
var fire_rate = 0.1
var can_fire = true

func _physics_process(delta):
	if can_fire == true:
		var bullet_instance = bullet.instance()
		bullet_instance.position = $BulletPosition.get_global_position()
		bullet_instance.rotation_degrees = rotation_degrees
		bullet_instance.apply_impulse(Vector2(), Vector2(bullet_speed,0).rotated(rotation))
		get_tree().get_root().add_child(bullet_instance)
		can_fire = false
		yield(get_tree().create_timer(fire_rate),"timeout")
		can_fire = true


