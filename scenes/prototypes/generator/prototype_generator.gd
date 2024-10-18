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
	update_label_text()

func update_label_text() -> void:
	label.text = "Stardust : %s" %stardust


func begin_generating_stardust() -> void:
	timer.start()
	
func _on_button_pressed() -> void:
	begin_generating_stardust()
