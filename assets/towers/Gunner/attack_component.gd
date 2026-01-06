extends Node2D

@export var gun_sprite: Sprite2D = null

var tower = null
var tower_states = null
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	tower = get_parent()
	tower_states = tower.States

func _physics_process(delta: float) -> void:
	var state = tower.state
	if state == tower_states.ACTIVE:
		turn()
	
func turn():
	var enemy_position = get_global_mouse_position()
	gun_sprite.look_at(enemy_position)
