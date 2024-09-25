extends CharacterBody2D

var speed: float = 300.0
var screen_size: Vector2
var ball: CharacterBody2D

func _ready() -> void:
	screen_size = get_viewport_rect().size
	ball = get_parent().get_node("Ball")

func _physics_process(_delta: float) -> void:
	global_position.y = ball.global_position.y
