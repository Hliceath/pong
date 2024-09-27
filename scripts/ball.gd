extends CharacterBody2D

var speed: float = 20.0

func _physics_process(delta: float) -> void:
	var collision: KinematicCollision2D = move_and_collide(velocity * speed * delta)

	if collision:
		# Collision makes the ball bounce a little faster
		velocity = velocity.bounce(collision.get_normal()) * 1.05

func reset_ball_position() -> void:
	position = Vector2(429, 263)
	velocity.y = 0 * speed
	velocity.x = 1.0 * speed
