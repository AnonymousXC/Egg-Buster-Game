extends RigidBody2D




func _on_EnemyBullet_body_entered(body: Node) -> void:
	if !body.is_in_group("enemy"):
		queue_free()
