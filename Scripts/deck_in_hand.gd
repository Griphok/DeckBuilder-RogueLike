extends Node2D


@onready var attack_card = preload("res://Scenes/attack_card.tscn")
@onready var defend_card = preload("res://Scenes/defend_card.tscn")
@onready var spawnpoint = $spawnpoint

func _on_add_attack_card_pressed():
	var new_card = attack_card.instantiate()
	spawnpoint.add_child(new_card)
	


func _on_add_defend_card_pressed():
	var new_card = defend_card.instantiate()
	spawnpoint.add_child(new_card)
