extends Node

var score = 0

@onready var score_label = $ScoreLabel

func add_point(s: int = 1):
	score += s
	score_label.text = str(score) + " coins"
