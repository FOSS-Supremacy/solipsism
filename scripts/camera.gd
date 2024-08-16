extends CharacterBody3D

#@onready var head = $head
@onready var pivot = $cam_origin
#@onready var cam1 = $head/camera1
#@onready var cam2 = $cam_origin/SpringArm3D/camera2

#const MOUSE_SENS = 0.4
var mouse_sens = 0.4

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

func _input(event):
	if event is InputEventMouseMotion:
		pivot.rotate_y(deg_to_rad(-event.relative.x * mouse_sens))
		pivot.rotate_x(deg_to_rad(-event.relative.y * mouse_sens))
		pivot.rotation.z = 0

# second camera
#func _input(event):
	#if event is InputEventMouseMotion:
		#rotate_y(deg_to_rad(-event.relative.x * MOUSE_SENS))
		#head.rotate_x(deg_to_rad(event.relative.y * MOUSE_SENS))

# attempt to offer two camera options
#func _process(delta):
	#if Input.is_action_just_pressed("switch_camera"):
		#cam2.current = not cam2.current
		#cam1.current = not cam1.current
