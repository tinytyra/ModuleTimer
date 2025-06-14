extends Node

@export var blockdata : BlockData
var readable_format = "%02d:%02d:%02d" # for converting [hh,mm,ss] to "hh:mm:ss"
var hhmmss : String


func _on_editbutton_pressed() -> void:
	# spawn EditDuration popup with input fields
	var popup = preload("res://block/edit_duration.tscn").instantiate()
	add_child(popup)
	
	# connect to signal new_user_duration(input_duration_array)
	get_node("EditDuration")
	popup.new_user_duration.connect(_on_new_user_duration)
	
	print("block_func.gd ----- _on_editbutton_pressed() ran")
	

func _on_new_user_duration(input_duration_array):
	blockdata.set_saved_duration(input_duration_array)
	update_label(input_duration_array)
	print("block_func.gd ----- _on_new_user_duration() -> ",input_duration_array)


func update_label(input_duration_array):
	hhmmss = readable_format % input_duration_array # create readable string from array
	get_node("Control/Label").set_text(hhmmss)
	print("block_func.gd ----- update_label() -> ",hhmmss)
