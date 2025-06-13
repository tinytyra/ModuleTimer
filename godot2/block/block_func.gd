extends Node

@export var blockdata : Resource

func _ready() -> void:
	pass

func _on_edit_button_pressed() -> void:
	var edit_duration_popup = preload("res://block/edit_duration.tscn").instantiate()
	add_child(edit_duration_popup)
	get_node("EditDuration")
	edit_duration_popup.saved_new_duration.connect(_on_saved_new_duration)
	print("block_func ran _on_edit_button_pressed()")

func _on_saved_new_duration(durationarray):
	blockdata.set_hh(durationarray[0])
	blockdata.set_mm(durationarray[1])
	blockdata.set_ss(durationarray[2])
	update_label()
	print("block_func ran _on_saved_new_duration and has ",durationarray)
	
func update_label():
	get_node("Control/Label").set_text(blockdata.hhmmss)
	print("block_func ran update_label with ",blockdata.hhmmss)
