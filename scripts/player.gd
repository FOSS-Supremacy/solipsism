extends VehicleBody3D

@onready var external_lights = [ $lights/left_light, $lights/right_light ]
@onready var internal_light = $lights/internal_light

const MAX_STEER = 0.8
const ENGINE_POWER = 300

func _process(delta):
	steering = move_toward(steering, Input.get_axis("right", "left") * MAX_STEER, delta * 2.5)
	engine_force = Input.get_axis("break", "run") * ENGINE_POWER

func _enter_tree():
	set_multiplayer_authority(name.to_int())
 
func _physics_process(delta):
	if is_multiplayer_authority():
		steering = move_toward(steering, Input.get_axis("right", "left") * MAX_STEER, delta * 2.5)
		engine_force = Input.get_axis("break", "run") * ENGINE_POWER

func _ready():
	internal_light.visible = not internal_light.visible
	for light in external_lights:
			light.visible = not light.visible

func _input(event):
	if Input.is_action_just_pressed("internal_light"):
		internal_light.visible = not internal_light.visible

	if Input.is_action_just_pressed("external_lights"):
		for light in external_lights:
			light.visible = not light.visible
