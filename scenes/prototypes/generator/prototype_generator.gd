class_name PrototypeGenerator
extends Control


@export var label : Label

@export var button : Button

@export var timer : Timer

var stardust : int

func _ready() -> void:
	update_label_text()

func create_stardust() -> void:
	stardust += 1

func update_label_text() -> void:
	label.text = "Stardust : %s" %stardust
