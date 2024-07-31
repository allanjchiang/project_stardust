class_name PrototypeClicker
extends Control
## A clicker prototype creating stardust.


@export var label : Label

var stardust : int = 0

func _ready() -> void:
	update_label_text()


func create_stardust() -> void:
	stardust += 1
	update_label_text()


func update_label_text() -> void:
	label.text = "Stardust : %s" %stardust


func _on_button_pressed() -> void:
	create_stardust()
