extends RigidBody2D



func _on_Bullet_body_entered(body: Node) -> void:
	if !body.is_in_group("player"):
		queue_free()


func _on_VisibilityNotifier2D_screen_exited() -> void:
	queue_free()
