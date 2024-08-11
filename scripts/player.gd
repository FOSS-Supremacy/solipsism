extends VehicleBody3D

const MAX_STEER = 0.8
const ENGINE_POWER = 300

func _process(delta):
	steering = move_toward(steering, Input.get_axis("right", "left") * MAX_STEER, delta * 2.5)
	engine_force = Input.get_axis("break", "run") * ENGINE_POWER
