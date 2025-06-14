extends Node


var hh_input : float
var mm_input : float
var ss_input : float
var input_duration_array : Array

signal new_user_duration(input_duration_array)


# Button functionality:

func _save_input_to_array():
	input_duration_array = [int(hh_input),int(mm_input),int(ss_input)]
	new_user_duration.emit(input_duration_array)
	queue_free()
	print("edit_duration.gd ----- _save_input_to_array() -> ",input_duration_array)
	
func _discard_changes():
	queue_free()
	print("edit_duration.gd ----- _discard_changes() -> queue_free()")


# Signals from Confirm and Cancel buttons pressed:

func _on_confirmbutton_pressed() -> void:
	_save_input_to_array()

func _on_cancelbutton_pressed() -> void:
	_discard_changes()


# Signals from SpinBox values changing:

func _on_hh_inputted(value: float) -> void:
	hh_input = value
	print("hh_input ",hh_input)

func _on_mm_inputted(value: float) -> void:
	mm_input = value
	print("mm_input ",mm_input)

func _on_ss_inputted(value: float) -> void:
	ss_input = value
	print("ss_input ",ss_input)
