
extends Node2D

@export var radius: int = 600

@onready var handsize = $DebugShape
@onready var card = $DebugShape/Attack_Card
var starting_position

func calculate_starting_position():
	handsize.shape.radius = radius
	starting_position = handsize.global_position + radius
func _process(delta):
	calculate_starting_position()
	card.global_positionq = starting_position
