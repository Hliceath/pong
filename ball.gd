extends RigidBody2D

@export var speed: int = 400
var screen_size: Vector2

func _ready() -> void:
	screen_size = get_viewport_rect().size


func _process(delta: float) -> void:
	var velocity: Vector2 = Vector2.ZERO

	velocity.x += 1

	if velocity.length() > 0:
		velocity = velocity.normalized() * speed

	position += velocity * delta
	position = position.clamp(Vector2.ZERO, screen_size)

func start(pos: Vector2) -> void:
	position = pos
	show()
	$CollisionShape2D.disabled = false
