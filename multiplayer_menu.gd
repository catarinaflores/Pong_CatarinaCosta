extends Control

@onready var player_name_field: TextEdit = %PlayerNameField
@onready var player_2_name_field: TextEdit = %Player2NameField



func _on_multiplayer_button_pressed() -> void:
	GameManager.player1_name = player_name_field.text
	GameManager.player2_name = player_2_name_field.text
	get_tree().change_scene_to_file("res://multiplayer_level/multiplayer_level.tscn")


func _on_quit_button_pressed() -> void:
	get_tree().change_scene_to_file("res://main_menu/main_menu.tscn")
