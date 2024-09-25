extends CharacterBody2D

var speed: float = 300.0
var screen_size: Vector2

func _ready() -> void:
	screen_size = get_viewport_rect().size

func _physics_process(delta: float) -> void:
	var collision: KinematicCollision2D = move_and_collide(velocity * delta)

	if collision:
		var normal: Vector2 = collision.get_normal()
		velocity = velocity.bounce(normal)

	position = position.clamp(Vector2.ZERO, screen_size)

func reset_ball_position() -> void:
	velocity.y = 0
	position.x = 429
	position.y = 263
