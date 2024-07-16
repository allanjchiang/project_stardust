class_name PrototypeClicker
extends Control


@export var label : Label

var stardust : int = 0


func _on_button_pressed() -> void:
	create_stardust()


func create_stardust() -> void:
	stardust += 1


func update_label_text() -> void:
	label.text = "Stardust : %s"
