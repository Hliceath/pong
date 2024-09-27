extends Node

var enemy_score: int
var player_score: int

func _ready() -> void:
	new_game()
	pass

func is_game_over() -> bool:
	return true if enemy_score == 3 or player_score == 3 else false

func new_game() -> void:
	enemy_score = 0
	player_score = 0
	$UI.update_score(enemy_score, player_score)
	$Ball.reset_ball_position()

func increment_score(goal_name: String) -> void:
	if "Enemy" in goal_name:
		player_score += 1
	if "Player" in goal_name:
		enemy_score += 1

	$UI.update_score(enemy_score, player_score)
	$Ball.reset_ball_position()

	if is_game_over():
		new_game()

func hide_elements() -> void:
	$Ball.hide()
	$Enemy.hide()
	$Player.hide()
