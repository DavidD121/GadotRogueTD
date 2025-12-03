class_name Main
extends Node2D

@export var tower_packed_scene : PackedScene = preload("res://assets/tower/tower.tscn")
@onready var tile_map_layer: TileMapLayer = $TileMapLayer
@onready var highlight_tile: HighlightTile = $HighlightTile

const BUILDABLE: String = "buildable"

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("left_mouse"):
		var cell_position: Vector2i  = tile_map_layer.local_to_map(tile_map_layer.get_local_mouse_position())
		var is_buildable = tile_map_layer.get_cell_tile_data(cell_position).get_custom_data(BUILDABLE)
		if is_buildable:
			place_tower(cell_position)

func place_tower(cell_position: Vector2i):
	var new_tower : Node2D = tower_packed_scene.instantiate()
	add_child(new_tower)
	new_tower.position = cell_position * 64
