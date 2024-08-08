@tool
extends Node2D

@export var radius: int = 600
@export var min_max_angle: int = 18

@onready var handsize = $DebugShape
@onready var card = $DebugShape/Attack_Card
var starting_position

func calculate_starting_position():
	handsize.shape.radius = radius
	starting_position = handsize.global_position + Vector2(0, -radius)
	card.global_position = starting_position
	
func _process(delta):
	calculate_starting_position()
	
