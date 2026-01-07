extends Node2D

@export var gun_sprite: Sprite2D = null

var tower: Tower = null
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	tower = get_parent()

func _physics_process(_delta: float) -> void:
	if tower.state == tower.States.ACTIVE:
		turn()
	
func turn():
	var enemy_position = get_global_mouse_position()
	gun_sprite.look_at(enemy_position)
