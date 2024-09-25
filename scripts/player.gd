extends CharacterBody2D

var speed: float = 300.0
var screen_size: Vector2

func _ready() -> void:
	screen_size = get_viewport_rect().size

func _physics_process(_delta: float) -> void:

	var direction: float = Input.get_axis("move_up", "move_down")

	velocity.y = direction * speed
	position = position.clamp(Vector2.ZERO, screen_size)

	move_and_slide()
