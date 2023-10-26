extends Control


@onready var player_name_field: TextEdit = %PlayerNameField



func _on_start_game_button_pressed() -> void:
	GameManager.player1_name = player_name_field.text
	get_tree().change_scene_to_file("res://level/level.tscn")



func _on_quit_button_pressed() -> void:
	get_tree().change_scene_to_file("res://main_menu/main_menu.tscn")
