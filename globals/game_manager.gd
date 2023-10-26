extends Node

var player1_name: String = "Player 1"
var player2_name: String = "Player 2"

var speed := 200

func EasyMode() -> void:
	speed = 200

func MediumMode() -> void:
	speed = 300

func HardMode() -> void:
	speed = 400
