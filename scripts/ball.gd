extends CharacterBody2D

var speed: float = 300.0
var screen_size: Vector2

func _ready() -> void:
	screen_size = get_viewport_rect().size
	velocity.x = 1.0 * speed

func _physics_process(delta: float) -> void:
	var collision: KinematicCollision2D = move_and_collide(velocity * delta)

	if collision:
		if collision.get_collider().name == "Player" or collision.get_collider().name == "Enemy":
			velocity.x = -velocity.x * speed
		velocity.y = 1.0 * speed

	position = position.clamp(Vector2.ZERO, screen_size)
