extends Control

@onready var player_name_field: TextEdit = %PlayerNameField
@onready var player_2_name_field: TextEdit = %Player2NameField


func _on_start_game_button_pressed() -> void:
	GameManager.player1_name = player_name_field.text
	get_tree().change_scene_to_file("res://level/level.tscn")
	

func _on_quit_game_button_pressed() -> void:
	get_tree().quit()


func _on_multiplayer_button_pressed() -> void:
	GameManager.player1_name = player_name_field.text
	GameManager.player2_name = player_2_name_field.text
	get_tree().change_scene_to_file("res://multiplayer_menu.tscn")
