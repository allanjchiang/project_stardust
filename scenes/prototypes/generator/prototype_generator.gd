class_name PrototypeGenerator
extends Control

## Generator prototype creating stardust

## Reference to the label displaying the current amount of stardust in storage.
@export var label : Label
## Reference to the button starting the generation
@export var button : Button
## Reference to the timer.
@export var timer : Timer
## Declare variable stardust and initialize it as 0.
var stardust : int = 0

func _ready() -> void:
	update_label_text()

func create_stardust() -> void:
	stardust += 1
	update_label_text()

func update_label_text() -> void:
	label.text = "Stardust : %s" %stardust


func begin_generating_stardust() -> void:
	timer.start()
	button.disabled = true
	
func _on_button_pressed() -> void:
	begin_generating_stardust()


func _on_timer_timeout() -> void:
	create_stardust()
