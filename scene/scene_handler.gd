extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	get_node("MainMenu/M/VBoxContainer/NewGame").connect("pressed", on_new_game_pressed)
	

func on_new_game_pressed() -> void:
	get_tree().change_scene_to_file("res://scene/main.tscn")
