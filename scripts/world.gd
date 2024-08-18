extends Node3D

@onready var sky = $WorldEnvironment
@onready var sun = $sun
@onready var moon = $moon

func _ready():
	sky.environment = load("res://scenes/world/day.tres")
	sun.visible = true
	moon.visible = false

func _input(event):
	if Input.is_action_just_pressed("night_toggle"):
		sky.environment = load("res://scenes/world/night.tres")
		sun.visible = false
		moon.visible = true
