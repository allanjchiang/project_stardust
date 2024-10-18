class_name PrototypeGenerator
extends Control

## Generator prototype creating stardust

## Reference to the label displaying the current amount of stardust in storage.
@export var label : Label
## Reference to the button starting the generation
@export var button : Button
## Reference to the timer.
@export var timer : Timer
## Current amount of stardust in storage.
var stardust : int = 0

## Initialize the label
func _ready() -> void:
	update_label_text()

## Add 1 to stardust in storage and update label text.
func create_stardust() -> void:
	stardust += 1
	update_label_text()

## Update label text to reflect current amount of stardust.
func update_label_text() -> void:
	label.text = "Stardust : %s" %stardust

## Button that starts the timer and starts creating stardust disables button.
func begin_generating_stardust() -> void:
	timer.start()
	button.disabled = true
	
## Start creating stardust when button is pressed.
func _on_button_pressed() -> void:
	begin_generating_stardust()

## After timer times out, create stardust.
func _on_timer_timeout() -> void:
	create_stardust()
