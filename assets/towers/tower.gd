extends Node2D

@export var icon: Texture2D = null

enum States {IDLE, ACTIVE}

@export var state: States = States.IDLE

func set_state(new_state: States) -> void:
	var previous_state := state
	state = state

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
