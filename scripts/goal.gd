extends Area2D


func _on_body_entered(_body: PhysicsBody2D) -> void:
	get_parent().increment_score(self.name)
