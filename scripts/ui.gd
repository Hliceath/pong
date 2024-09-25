extends Control

func update_score(enemy_score: int, player_score: int) -> void:
	$CanvasLayer/ScoreLabel.text = "Enemy: " + str(enemy_score) + " - Player: " + str(player_score)
