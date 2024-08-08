@tool
extends Node2D


@export_category("Card Infos")
@export var card_back_art: Texture2D
@export var card_boarder_art: Texture2D
@export var card_titel_background: Texture2D
@export var card_desc_background: Texture2D
@export var card_art: Texture2D
@export var card_titel: String = "Titel"
@export var card_description: String = "Description"

@onready var card_back = $card_back
@onready var card_boarder = $card_boarder
@onready var card_titel_bg = $card_titel_background
@onready var card_titel_lbl = $card_titel_background/card_titel_lbl
@onready var card_description_bg = $card_desc_background
@onready var card_desc_lbl = $card_desc_background/card_desc_lbl
@onready var card_art_node = $card_art

func _process(delta):
	handle_card_graphics()



func handle_card_graphics():
	card_back.set_texture(card_back_art)
	card_boarder.set_texture(card_boarder_art)
	card_titel_bg.set_texture(card_titel_background)
	card_description_bg.set_texture(card_desc_background)
	card_titel_lbl.text = card_titel
	card_desc_lbl.text = card_description
	card_art_node.set_texture(card_art)
