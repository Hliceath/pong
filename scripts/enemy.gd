extends CharacterBody2D

var speed: float = 290.0
var screen_size: Vector2
var ball: CharacterBody2D

func _ready() -> void:
	screen_size = get_viewport_rect().size
	ball = get_parent().get_node("Ball")

func _physics_process(_delta: float) -> void:
	# if ball.global_position.y > position.y:
	# 	velocity.y += speed
	# elif ball.global_position.y < position.y:
	# 	velocity.y -= speed
	# else:
	# 	velocity.y = 0

	# move_and_slide()
	pass
