extends AudioStreamPlayer3D

func _physics_process(_delta):
	if Input.is_action_just_pressed("switch_microphone"):
		self.playing = not self.playing
		self.stream_paused = not self.stream_paused
