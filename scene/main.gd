class_name Main
extends Node2D

@export var tower_packed_scene : PackedScene = null
@onready var tile_map_layer: TileMapLayer = $TileMapLayer
@onready var highlight_tile: HighlightTile = $HighlightTile

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("left_mouse"):
		print_debug("click")
