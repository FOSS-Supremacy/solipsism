extends CharacterBody3D

@onready var head = $head

const MOUSE_SENS = 0.4

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

func _input(event):
	if event is InputEventMouseMotion:
		rotate_y(deg_to_rad(-event.relative.x * MOUSE_SENS))
		head.rotate_x(deg_to_rad(event.relative.y * MOUSE_SENS))
